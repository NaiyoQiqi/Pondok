-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 01, 2023 at 01:57 PM
-- Server version: 10.6.15-MariaDB
-- PHP Version: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smmpanel_bagus`
--

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id` int(10) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `tipe` enum('INFORMASI','PERINGATAN','PENTING','UPDATE','DEPOSIT') NOT NULL,
  `subjek` text NOT NULL,
  `konten` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deposit`
--

CREATE TABLE `deposit` (
  `id` int(10) NOT NULL,
  `kode_deposit` varchar(250) NOT NULL,
  `username` varchar(250) NOT NULL,
  `tipe` varchar(255) NOT NULL,
  `provider` varchar(255) NOT NULL,
  `payment` varchar(250) NOT NULL,
  `nomor_pengirim` varchar(250) NOT NULL,
  `tujuan` varchar(50) NOT NULL,
  `jumlah_transfer` int(255) NOT NULL,
  `get_saldo` varchar(250) NOT NULL,
  `status` enum('Success','Pending','Error') NOT NULL,
  `place_from` varchar(50) NOT NULL DEFAULT 'WEB',
  `date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `halaman`
--

CREATE TABLE `halaman` (
  `id` int(2) NOT NULL,
  `konten` text NOT NULL,
  `update_terakhir` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `halaman`
--

INSERT INTO `halaman` (`id`, `konten`, `update_terakhir`) VALUES
(1, '                                <table class=\"table table-bordered dt-responsive nowrap\" style=\"border-collapse: collapse; border-spacing: 0; width: 100%;\">\r\n                                    <tbody>\r\n\r\n                                    <tr>\r\n                                        <td align=\"center\">\r\n                                            <a href=\"https://www.facebook.com/\" class=\"btn btn-primary btn-bordred btn-rounded waves-effect waves-light\" target=\"BLANK\"><i class=\"mdi mdi-facebook\"></i> Facebook</a>\r\n                                        </td>\r\n                                        <td align=\"center\">\r\n                                            <a href=\"https://api.whatsapp.com/send?phone=628&text=Hallo%20Admin\" class=\"btn btn-primary btn-bordred btn-rounded waves-effect waves-light\" target=\"BLANK\"><i class=\"mdi mdi-whatsapp\"></i> Whatsapp</a>\r\n                                        </td>\r\n<table class=\"table table-bordered dt-responsive nowrap\" style=\"border-collapse: collapse; border-spacing: 0; width: 100%;\">\r\n                                    <tbody>\r\n<td align=\"center\">\r\n                                            <a href=\"https://Instagram.com/\" class=\"btn btn-primary btn-bordred btn-rounded waves-effect waves-light\" target=\"BLANK\"><i class=\"mdi mdi-instagram\"></i> Instagram</a>\r\n</td>\r\n                                    </tr>   \r\n                                    </tbody>\r\n                                </table>\r\n                                \r\n', '2019-01-21 00:00:00'),
(2, '<p>Layanan yang disediakan oleh Kincai Seluler telah ditetapkan kesepakatan-kesepakatan berikut.</p><br />\r\n										<p><b>1. Umum</b><br />\r\n										<br />Dengan mendaftar dan menggunakan layanan DEMO AGMEDIA, Anda secara otomatis menyetujui semua ketentuan layanan kami. Kami berhak mengubah ketentuan layanan ini tanpa pemberitahuan terlebih dahulu. Anda diharapkan membaca semua ketentuan layanan kami sebelum membuat pesanan.<br />\r\n										<br />Penolakan: DEMO AGMEDIA tidak akan bertanggung jawab jika Anda mengalami kerugian dalam bisnis Anda.<br />\r\n										<br />Kewajiban: DEMO AGMEDIA tidak bertanggung jawab jika Anda mengalami suspensi akun atau penghapusan kiriman yang dilakukan oleh Instagram, Twitter, Facebook, Youtube, dan lain-lain.<br />\r\n										<br /><b>2. Layanan</b><br />\r\n										<br />Kewajiban: DEMO AGMEDIA hanya digunakan untuk media promosi sosial media dan membantu meningkatkan penampilan akun Anda saja.<br />\r\n										<br />Kewajiban: DEMO AGMEDIA tidak menjamin pengikut baru Anda berinteraksi dengan Anda, kami hanya menjamin bahwa Anda mendapat pengikut yang Anda beli.<br />\r\n										<br />Kewajiban: DEMO AGMEDIA tidak menerima permintaan pembatalan/pengembalian dana setelah pesanan masuk ke sistem kami. Kami memberikan pengembalian dana yang sesuai jika pesanan tida dapat diselesaikan.</p>', '2019-01-21 00:00:00'),
(3, '<h4>Apa Itu DEMO AGMEDIA ?</h4>DEMO AGMEDIA adalah sebuah platform bisnis yang menyediakan berbagai layanan social media marketing yang bergerak terutama di Indonesia.<br />\r\nDengan bergabung bersama kami, Anda dapat menjadi penyedia jasa social media atau reseller social media seperti jasa penambah Followers, Likes, dll.<br />\r\nSaat ini tersedia berbagai layanan untuk social media terpopuler seperti Instagram, Facebook, Twitter, Youtube, dll.<br />\r\n<br />\r\n<h4>Bagaimana cara mendaftar di DEMO AGMEDIA?</h4> Anda dapat menghubungi Admin <a href=\"/halaman/kontak-kami\">Kontak</a><br />\r\n<br />\r\n<h4>Bagaimana cara membuat Pesanan ?</h4>Untuk membuat pesanan sangatlah mudah, Anda hanya perlu masuk terlebih dahulu ke akun Anda dan menuju halaman <b>Pemesanan</b> dengan mengklik menu yang sudah tersedia. Selain itu Anda juga dapat melakukan pemesanan melalui request API.<br />\r\n<br />\r\n<h4>Bagaimana cara melakukan Pengisian Saldo ?</h4>Untuk melakukan pengisian saldo, Anda hanya perlu masuk terlebih dahulu ke akun Anda dan menuju halaman deposit dengan mengklik menu yang sudah tersedia. Kami menyediakan deposit melalui bank dan pulsa.									', '2019-01-21 00:00:00'),
(4, '<center><h4><b> PENJELASAN STATUS DI<br>DEMO AGMEDIA </b></h4>\r\n										<p>\r\n<br>										<br>\r\n<span class=\"badge badge-warning\">PENDING</span> :<br> Pesanan/deposit sedang dalam antian di server										\r\n<br>\r\n</br>\r\n<span class=\"badge badge-info\">PROCESSING</span> :<br> Pesanan sedang dalam proses										\r\n<br>\r\n</br>\r\n<span class=\"badge badge-success\">SUCCESS</span> :<br> Pesanan telah berhasil										\r\n<br>\r\n</br>\r\n<span class=\"badge badge-danger\">PARTIAL</span> :<br> Pesanan hanya masuk sebagian. Dan anda hanya akan membayar layanan yang masuk saja										\r\n<br>\r\n</br>\r\n<span class=\"badge badge-danger\">ERROR</span> :<br> Pesanan di batalkan/Terjadi Kesalahan Sistem, dan saldo akan otomatis kembali ke akun.										<br>										<br>\r\n</br>\r\n</center>\r\n<span class=\"badge badge-kece\">Refill/Guaranteed</span> : Refill adalah isi ulang. Jika anda membeli layanan refill dan ternyata dalam beberapa hari followers berkurang, maka akan otomatis di refill/di isi ulang. <b>Tapi harap di ketahui, Server hanya akan mengisi ulang jika followers yang berkurang adalah followers yang di beli dengan layanan refill.</b></p>                                ', '2019-01-21 00:00:00'),
(5, '<b>Ingin memiliki website seperti DEMO AGMEDIA ?</b>\r\n<br><br>\r\n<b>Penjelasan</b><br>\r\nDEMO AGMEDIA adalah portal di mana member dapat melakukan pembelian layanan.\r\nDengan memiliki website seperti DEMO AGMEDIA, bukan berarti anda bisa melakukan pemesanan semau anda dan sepuasnya.<br>\r\nKarena setiap pemesanan yang di lakukan oleh anda atau member anda, akan memotong saldo pusat di DEMO AGMEDIA\r\n<br><br>\r\n<b>Pertanyaan</b><br>\r\nA. Apakah saya bisa memiliki website smm? Sedangkan saya tidak bisa coding.<br>\r\nB. Sangat bisa, semua Urusan coding dan eror di website kami yang mengurus.\r\n<br><br>\r\nA. Berapa harga pembuatan website smm?<br>\r\nB. Harga akan kami cantumkan di bagian terahir halaman ini.\r\n<br><br>\r\nA. Apakah penghasilan akan langsung masuk ke rekening saya?<br>\r\nB. tentu saja, Semua deposit akan langsung masuk ke rekening anda.\r\n<br><br>\r\nA. Berapa lama proses pembuatan website yang saya pesan?<br>\r\nB. Untuk pemrosesan layanan web SMM kami membutuhkan waktu 1-4 Hari, setelah pembayaran terkonfirmasi.\r\n<br><br>\r\nA. Apa bisa nanti nama website dan domain saya yang menentukan?<br>\r\nB. Tentu saja, Nama website dan domain anda yang menentukan sendiri\r\n<br><br>\r\nA. Apakah saya bisa mengatur harga layanan sesuai keinginan saya?<br>\r\nB. Bisa, anda bisa mengatur semua harga layanan di website anda untuk menyesuaikan keuntungan\r\n<br><br>\r\nA. Apakah saya bisa mendapatkan akses cpanel?<br>\r\nB. Tentu Bisa, dan anda juga bisa akses penuh admin panel\r\n<br><br>\r\n<b>Harga</b>\r\n<br><br>\r\n<b>12 bulan</b>\r\n<br>\r\n<b>Rp.700.000</b>\r\n<br><br>\r\n<b>6 bulan</b>\r\n<br>\r\n<b>Rp.300.000</b>\r\n<br><br>\r\n\r\n<br><br><br>\r\nAda pertanyaan lain? Atau Anda Butuh Jasa Oper Panel / UP Fitur Silahkan hubungi admin di  <a href=\"https://api.whatsapp.com/send?phone=628\">WHATSAPP</a></p>\r\n		</div>\r\n	</div>\r\n</div>			</div>', '2019-01-21 00:45:00');

-- --------------------------------------------------------

--
-- Table structure for table `harga_pendaftaran`
--

CREATE TABLE `harga_pendaftaran` (
  `id` int(2) NOT NULL,
  `level` varchar(50) NOT NULL,
  `harga` double NOT NULL,
  `bonus` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `history_saldo`
--

CREATE TABLE `history_saldo` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `aksi` enum('Penambahan Saldo','Pengurangan Saldo') NOT NULL,
  `nominal` double NOT NULL,
  `pesan` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `history_saldo`
--

INSERT INTO `history_saldo` (`id`, `username`, `aksi`, `nominal`, `pesan`, `date`, `time`) VALUES
(1, 'admin', 'Pengurangan Saldo', 160.13636363636, 'Pemesanan Sosial Media Dengan Order ID 6078725', '2023-10-01', '13:06:22');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_layanan`
--

CREATE TABLE `kategori_layanan` (
  `id` int(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `kode` varchar(50) NOT NULL,
  `tipe` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_swedish_ci;

--
-- Dumping data for table `kategori_layanan`
--

INSERT INTO `kategori_layanan` (`id`, `nama`, `kode`, `tipe`) VALUES
(1, 'Instagram Likes', 'Instagram Likes', 'Sosial Media'),
(2, 'Canva Pro 1 Tahun ', 'Canva Pro 1 Tahun ', 'Sosial Media'),
(3, 'Clubhouse', 'Clubhouse', 'Sosial Media'),
(4, 'Facebook Post Like Emoticon', 'Facebook Post Like Emoticon', 'Sosial Media'),
(5, 'Facebook Page Likes & Page Followers', 'Facebook Page Likes & Page Followers', 'Sosial Media'),
(6, 'Facebook Followers / Friends', 'Facebook Followers / Friends', 'Sosial Media'),
(7, 'Facebook Group Member', 'Facebook Group Member', 'Sosial Media'),
(8, '- ? Promo 01 Oktober 2023 ?-', '- ? Promo 01 Oktober 2023 ?-', 'Sosial Media'),
(9, 'Facebook Live Stream - S1 ', 'Facebook Live Stream - S1 ', 'Sosial Media'),
(10, 'Facebook Live Stream', 'Facebook Live Stream', 'Sosial Media'),
(11, 'Facebook Live Stream - JS3', 'Facebook Live Stream - JS3', 'Sosial Media'),
(12, 'Facebook Post Likes / Comments / Shares', 'Facebook Post Likes / Comments / Shares', 'Sosial Media'),
(13, 'Facebook Reels Short Video', 'Facebook Reels Short Video', 'Sosial Media'),
(15, 'Facebook Video Views', 'Facebook Video Views', 'Sosial Media'),
(16, 'Facebook 60k - 600k Minute Watchtime', 'Facebook 60k - 600k Minute Watchtime', 'Sosial Media'),
(17, 'Instagram Comments/komentar', 'Instagram Comments/komentar', 'Sosial Media'),
(18, 'Instagram VERIFIED ', 'Instagram VERIFIED ', 'Sosial Media'),
(19, 'Instagram Live Video', 'Instagram Live Video', 'Sosial Media'),
(20, 'Instagram Story Views', 'Instagram Story Views', 'Sosial Media'),
(21, 'Instagram AUTO LIKE INDONESIA', 'Instagram AUTO LIKE INDONESIA', 'Sosial Media'),
(22, 'Instagram Comments/komentar Indonesia', 'Instagram Comments/komentar Indonesia', 'Sosial Media'),
(23, 'Instagram Followers Indonesia', 'Instagram Followers Indonesia', 'Sosial Media'),
(24, 'Instagram Followers  Bergaransi 180 Hari - Lifetime ', 'Instagram Followers  Bergaransi 180 Hari - Lifetim', 'Sosial Media'),
(25, 'Instagram Followers  No Refill ', 'Instagram Followers  No Refill ', 'Sosial Media'),
(27, 'Instagram Followers  Bergaransi 60 Hari - 99 Hari  ', 'Instagram Followers  Bergaransi 60 Hari - 99 Hari ', 'Sosial Media'),
(28, 'Instagram Followers Bergaransi', 'Instagram Followers Bergaransi', 'Sosial Media'),
(29, 'Instagram Followers  Updated  ', 'Instagram Followers  Updated  ', 'Sosial Media'),
(30, 'Instagram Story / Impressions / Saves / Profile Visit', 'Instagram Story / Impressions / Saves / Profile Vi', 'Sosial Media'),
(31, 'Instagram Like Indonesia', 'Instagram Like Indonesia', 'Sosial Media'),
(33, 'Instagram Reels', 'Instagram Reels', 'Sosial Media'),
(34, 'Instagram TV', 'Instagram TV', 'Sosial Media'),
(35, 'Instagram Views', 'Instagram Views', 'Sosial Media'),
(36, 'Facebook Live Stream - JS1', 'Facebook Live Stream - JS1', 'Sosial Media'),
(37, 'Facebook Live Stream - JS2', 'Facebook Live Stream - JS2', 'Sosial Media'),
(38, 'Shopee/Tokopedia/Bukalapak/Lazada', 'Shopee/Tokopedia/Bukalapak/Lazada', 'Sosial Media'),
(39, 'Instagram Like Komentar  top koment ', 'Instagram Like Komentar  top koment ', 'Sosial Media'),
(40, 'Likee app', 'Likee app', 'Sosial Media'),
(41, 'Khusus Member', 'Khusus Member', 'Sosial Media'),
(42, 'Linkedin', 'Linkedin', 'Sosial Media'),
(43, 'Pinterest', 'Pinterest', 'Sosial Media'),
(44, 'Shopee LiveStream', 'Shopee LiveStream', 'Sosial Media'),
(45, 'Snack Video Followers', 'Snack Video Followers', 'Sosial Media'),
(46, 'Snack Video Likes', 'Snack Video Likes', 'Sosial Media'),
(47, 'SoundCloud', 'SoundCloud', 'Sosial Media'),
(48, 'Spotify', 'Spotify', 'Sosial Media'),
(49, 'Spotify Plays  Track | Playlist ', 'Spotify Plays  Track | Playlist ', 'Sosial Media'),
(50, 'Telegram Channnel Members/Group', 'Telegram Channnel Members/Group', 'Sosial Media'),
(51, 'Telegram auto post view ( Future/masa depan )', 'Telegram auto post view ( Future/masa depan )', 'Sosial Media'),
(52, 'Telegram Reactions', 'Telegram Reactions', 'Sosial Media'),
(53, 'Telegram Post View', 'Telegram Post View', 'Sosial Media'),
(54, 'Telegram Story Views', 'Telegram Story Views', 'Sosial Media'),
(55, 'Threads Comments', 'Threads Comments', 'Sosial Media'),
(56, 'Threads Followers', 'Threads Followers', 'Sosial Media'),
(57, 'Threads Likes', 'Threads Likes', 'Sosial Media'),
(58, 'Threads Reshare', 'Threads Reshare', 'Sosial Media'),
(59, 'TikTok Followers', 'TikTok Followers', 'Sosial Media'),
(60, 'TikTok Likes', 'TikTok Likes', 'Sosial Media'),
(61, 'TikTok View', 'TikTok View', 'Sosial Media'),
(62, 'Tiktok Comments ', 'Tiktok Comments ', 'Sosial Media'),
(63, 'TikTok INDONESIA', 'TikTok INDONESIA', 'Sosial Media'),
(64, 'Tiktok Live Streams Like/Share/Comment', 'Tiktok Live Streams Like/Share/Comment', 'Sosial Media'),
(65, 'Tiktok Live Streams S1', 'Tiktok Live Streams S1', 'Sosial Media'),
(66, 'Tiktok Live Streams', 'Tiktok Live Streams', 'Sosial Media'),
(67, 'TikTok Save/Favorit', 'TikTok Save/Favorit', 'Sosial Media'),
(68, 'TikTok  share', 'TikTok  share', 'Sosial Media'),
(69, 'TikTok Story', 'TikTok Story', 'Sosial Media'),
(71, 'Twitch', 'Twitch', 'Sosial Media'),
(72, 'Twitch Live Stream ', 'Twitch Live Stream ', 'Sosial Media'),
(73, 'Twitter Followers  No Refill ', 'Twitter Followers  No Refill ', 'Sosial Media'),
(74, 'Twitter Followers  Bergaransi/garansi ', 'Twitter Followers  Bergaransi/garansi ', 'Sosial Media'),
(75, 'Twitter Indonesia', 'Twitter Indonesia', 'Sosial Media'),
(76, 'Twitter Favorites/Like', 'Twitter Favorites/Like', 'Sosial Media'),
(77, 'Twitter Retweets', 'Twitter Retweets', 'Sosial Media'),
(78, 'Twitter Tweet view', 'Twitter Tweet view', 'Sosial Media'),
(79, 'Twitter Views & Impressions', 'Twitter Views & Impressions', 'Sosial Media'),
(80, 'Website Traffic', 'Website Traffic', 'Sosial Media'),
(81, 'Youtube Views  BIG ORDER ', 'Youtube Views  BIG ORDER ', 'Sosial Media'),
(82, 'Youtube Likes / Dislikes / Shares / Comment', 'Youtube Likes / Dislikes / Shares / Comment', 'Sosial Media'),
(83, 'YouTube Live Stream  Harga Murah   30 Minutes to 24 Hours', 'YouTube Live Stream  Harga Murah   30 Minutes to 2', 'Sosial Media'),
(84, 'YouTube Live Stream  Harga Murah   30 Minutes to 24 Hours Server 2  work ', 'YouTube Live Stream  Harga Murah   30 Minutes to 2', 'Sosial Media'),
(85, 'Youtube Live Stream / Youtube Premiered Waiting', 'Youtube Live Stream / Youtube Premiered Waiting', 'Sosial Media'),
(86, 'YouTube Live Stream  Harga Murah   Premium Quality - 100% ConCurrent   Server 4  work ', 'YouTube Live Stream  Harga Murah   Premium Quality', 'Sosial Media'),
(87, 'YOUTUBE - Live Stream  Cheapest Price ', 'YOUTUBE - Live Stream  Cheapest Price ', 'Sosial Media'),
(88, 'Youtube Live Stream  Comments/Likes  ', 'Youtube Live Stream  Comments/Likes  ', 'Sosial Media'),
(89, 'YouTube Live Stream  Harga Murah   30 Minutes to 24 Hours Server 3  work  ', 'YouTube Live Stream  Harga Murah   30 Minutes to 2', 'Sosial Media'),
(90, 'Youtube Live Stream  BEST FOR RANKING LIVE ', 'Youtube Live Stream  BEST FOR RANKING LIVE ', 'Sosial Media'),
(91, 'Youtube Views', 'Youtube Views', 'Sosial Media'),
(92, 'YouTube Shorts', 'YouTube Shorts', 'Sosial Media'),
(93, 'Youtube Subscribers  No Refill ', 'Youtube Subscribers  No Refill ', 'Sosial Media'),
(94, 'Youtube Subscribers Negara', 'Youtube Subscribers Negara', 'Sosial Media'),
(95, 'Youtube Subscribers', 'Youtube Subscribers', 'Sosial Media'),
(97, 'Youtube View Target Negara', 'Youtube View Target Negara', 'Sosial Media'),
(98, 'Youtube View Jam Tayang', 'Youtube View Jam Tayang', 'Sosial Media'),
(99, 'Youtube View   untuk monetisasi - penghasil duit ', 'Youtube View   untuk monetisasi - penghasil duit ', 'Sosial Media');

-- --------------------------------------------------------

--
-- Table structure for table `kontak_kami`
--

CREATE TABLE `kontak_kami` (
  `id` int(1) NOT NULL,
  `nama` text NOT NULL,
  `alamat` text NOT NULL,
  `facebook` text NOT NULL,
  `instagram` text NOT NULL,
  `whatsapp` text NOT NULL,
  `telegram` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `kontak_kami`
--

INSERT INTO `kontak_kami` (`id`, `nama`, `alamat`, `facebook`, `instagram`, `whatsapp`, `telegram`) VALUES
(1, 'NAMA-KAMU', 'Indonesia', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `layanan_sosmed`
--

CREATE TABLE `layanan_sosmed` (
  `id` int(10) NOT NULL,
  `service_id` int(10) NOT NULL,
  `kategori` varchar(50) NOT NULL,
  `layanan` text NOT NULL,
  `catatan` text NOT NULL,
  `min` int(10) NOT NULL,
  `max` int(10) NOT NULL,
  `harga` double NOT NULL,
  `harga_api` double NOT NULL,
  `profit` double NOT NULL,
  `status` enum('Aktif','Tidak Aktif') NOT NULL,
  `provider_id` int(10) NOT NULL,
  `provider` varchar(50) NOT NULL,
  `tipe` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_swedish_ci;

--
-- Dumping data for table `layanan_sosmed`
--

INSERT INTO `layanan_sosmed` (`id`, `service_id`, `kategori`, `layanan`, `catatan`, `min`, `max`, `harga`, `harga_api`, `profit`, `status`, `provider_id`, `provider`, `tipe`) VALUES
(1, 1, 'Instagram Likes', ' Instagram Likes JS 2 [No Drop] Real [Max 5K]', 'Speed : 200 Likes / Hour\nNo Partial Issues\nNo Drop', 20, 5000, 7548.8636363636, 7381.1111111111, 738.11111111111, 'Aktif', 1421, 'JAGOSOSMED', 'Sosial Media'),
(2, 2, 'Canva Pro 1 Tahun ', 'Canva Pro 1 Tahun', 'Canva Pro 1 Tahun\r\nCara Order :\r\nIsi email aktif pada kolom target', 1000, 1000, 55681.818181818, 54444.444444444, 5444.4444444444, 'Aktif', 12412198, 'JAGOSOSMED', 'Sosial Media'),
(3, 3, 'Clubhouse', 'Clubhouse Followers 100 User', 'mulai : 0-6 jam\nKecepatan : 0-12 jam\norder 1000 mendapatkan 100 user', 1000, 1000, 33386.363636364, 32644.444444444, 3264.4444444444, 'Aktif', 1972, 'JAGOSOSMED', 'Sosial Media'),
(4, 4, 'Clubhouse', 'Clubhouse Followers 250 User', 'mulai : 0-6 jam\nKecepatan : 0-12 jam\norder 1000 mendapatkan 250 user', 1000, 1000, 86701.136363636, 84774.444444444, 8477.4444444444, 'Aktif', 1973, 'JAGOSOSMED', 'Sosial Media'),
(5, 5, 'Clubhouse', 'Clubhouse Followers 500 User ', 'mulai : 0-6 jam\nKecepatan : 0-12 jam\norder 1000 mendapatkan 500 user', 1000, 1000, 150475, 147131.11111111, 14713.111111111, 'Aktif', 1974, 'JAGOSOSMED', 'Sosial Media'),
(6, 6, 'Facebook Post Like Emoticon', 'Facebook Emoticons Post Likes  [ Love ] [ 20k ] Instant', '0-10 Minutes Start\nFull Post link\nWrong link No refund\nDrop - 0-10%\nNO Refill/ NO REfund', 100, 20000, 11995.454545455, 11728.888888889, 1172.8888888889, 'Aktif', 3168, 'JAGOSOSMED', 'Sosial Media'),
(7, 7, 'Facebook Post Like Emoticon', 'Facebook Emoticons Post Likes [ Angry ] [ 20k ] Instant', '0-10 Minutes Start\nFull Post link\nWrong link No refund\nDrop - 0-10%\nNO Refill/ NO REfund', 100, 20000, 12113.636363636, 11844.444444444, 1184.4444444444, 'Aktif', 3172, 'JAGOSOSMED', 'Sosial Media'),
(8, 8, 'Facebook Post Like Emoticon', 'Facebook Emoticons Post Likes [ Angry ] [Non Drop] [ max 50k ] fast ', 'instan\n5k/jam\nnondrop', 50, 50000, 18584.090909091, 18171.111111111, 1817.1111111111, 'Aktif', 2372, 'JAGOSOSMED', 'Sosial Media'),
(9, 9, 'Facebook Post Like Emoticon', 'Facebook Emoticons Post Likes [ Care ] [Non Drop] [ max 100k ] ', 'Start: Super Instant\nSpeed: 10000 per day\nMaximum: 20k\nMinimum: 100\nQuality - Mixed Vietnamese\nNon-Drop\nNo Refill', 100, 100000, 10710.227272727, 10472.222222222, 1047.2222222222, 'Aktif', 3173, 'JAGOSOSMED', 'Sosial Media'),
(10, 10, 'Facebook Post Like Emoticon', 'Facebook Emoticons Post Likes [ Care ] [Non Drop] [ max 50k ] fast ', 'instan\n5k/jam\nnondrop', 50, 50000, 19056.818181818, 18633.333333333, 1863.3333333333, 'Aktif', 2368, 'JAGOSOSMED', 'Sosial Media'),
(11, 11, 'Facebook Post Like Emoticon', 'Facebook Emoticons Post Likes [ ha-ha ] [ 20k ] Instant', '0-10 Minutes Start\nFull Post link\nWrong link No refund\nDrop - 0-10%\nNO Refill/ NO REfund', 100, 20000, 12113.636363636, 11844.444444444, 1184.4444444444, 'Aktif', 3170, 'JAGOSOSMED', 'Sosial Media'),
(12, 12, 'Facebook Post Like Emoticon', 'Facebook Emoticons Post Likes [ HaHa ] [Non Drop] [ max 50k ] fast', 'instan\n5k/jam\nnondrop', 50, 50000, 17638.636363636, 17246.666666667, 1724.6666666667, 'Aktif', 2369, 'JAGOSOSMED', 'Sosial Media'),
(13, 13, 'Facebook Post Like Emoticon', 'Facebook Emoticons Post Likes [ LIKE ] [ max 100k ] fast ', '1k/days', 10, 100000, 1167.0454545455, 1141.1111111111, 114.11111111111, 'Aktif', 3167, 'JAGOSOSMED', 'Sosial Media'),
(14, 14, 'Facebook Post Like Emoticon', 'Facebook Emoticons Post Likes [ Love ] [Non Drop] [ max 50k ] fast', 'instan \n5k/jam\nnondrop', 50, 50000, 18584.090909091, 18171.111111111, 1817.1111111111, 'Aktif', 2367, 'JAGOSOSMED', 'Sosial Media'),
(15, 15, 'Facebook Post Like Emoticon', 'Facebook Emoticons Post Likes [ Sad ] [ 20k ] Instant', '0-10 Minutes Start\nFull Post link\nWrong link No refund\nDrop - 0-10%\nNO Refill/ NO REfund', 100, 20000, 12113.636363636, 11844.444444444, 1184.4444444444, 'Aktif', 3171, 'JAGOSOSMED', 'Sosial Media'),
(16, 16, 'Facebook Post Like Emoticon', 'Facebook Emoticons Post Likes [ Sad ] [Non Drop] [ max 50k ] fast ', 'instan\n5k/jam\nnondrop', 50, 50000, 18347.727272727, 17940, 1794, 'Aktif', 2371, 'JAGOSOSMED', 'Sosial Media'),
(17, 17, 'Facebook Post Like Emoticon', 'Facebook Emoticons Post Likes [ wow ] [ 20k ] Instant', '0-10 Minutes Start\nFull Post link\nWrong link No refund\nDrop - 0-10%\nNO Refill/ NO REfund', 100, 20000, 12113.636363636, 11844.444444444, 1184.4444444444, 'Aktif', 3169, 'JAGOSOSMED', 'Sosial Media'),
(18, 18, 'Facebook Post Like Emoticon', 'Facebook Emoticons Post Likes [ WoW ] [Non Drop] [ max 50k ] fast ', 'instan\n5k/jam\nnondrop', 50, 50000, 18436.363636364, 18026.666666667, 1802.6666666667, 'Aktif', 2370, 'JAGOSOSMED', 'Sosial Media'),
(19, 19, 'Facebook Page Likes & Page Followers', 'Facebook Follower Page JS 25 [ refill 30 days ] [ 50k/day ]', '50k/day\nrefill 30 days', 200, 100000, 16397.727272727, 16033.333333333, 1603.3333333333, 'Aktif', 3384, 'JAGOSOSMED', 'Sosial Media'),
(20, 20, 'Facebook Followers / Friends', 'Facebook Follower Profile indonesia JS 8 [ max 50 ] ', 'waktu proses 0-7 jam', 50, 50, 79329.545454545, 77566.666666667, 7756.6666666667, 'Aktif', 2122, 'JAGOSOSMED', 'Sosial Media'),
(21, 21, 'Facebook Followers / Friends', 'Facebook Follower Profile JS 16 [ Refill 90days ] Less drop', '1k/d', 1000, 200000, 37286.363636364, 36457.777777778, 3645.7777777778, 'Aktif', 2774, 'JAGOSOSMED', 'Sosial Media'),
(22, 22, 'Facebook Followers / Friends', 'Facebook Follower Profile JS 18 [ Refill 30 Days ] ', 'Speed: 20K/Day\nStart Time: 0-2 Hours', 1000, 100000, 48011.363636364, 46944.444444444, 4694.4444444444, 'Aktif', 2786, 'JAGOSOSMED', 'Sosial Media'),
(23, 23, 'Facebook Followers / Friends', 'Facebook Follower Profile JS 19 [ Refill 30 Days ] [ start 0 - 6Hours ]', 'waktu mulai 0-6 jam', 1000, 100000, 33415.909090909, 32673.333333333, 3267.3333333333, 'Aktif', 2825, 'JAGOSOSMED', 'Sosial Media'),
(24, 24, 'Facebook Followers / Friends', 'Facebook Follower Profile JS 20 [ Refill 15 Days ] [ 1k-3k/day ] ', '1k-3k/day\nwaktu proses 0-4 hari', 500, 100000, 19825, 19384.444444444, 1938.4444444444, 'Aktif', 3057, 'JAGOSOSMED', 'Sosial Media'),
(25, 25, 'Facebook Followers / Friends', 'Facebook Follower Profile JS 21 [ NO Refill ] [ 5k/day ] [ best seller ]', 'waktu mulai 0-6 jam', 100, 50000, 21642.045454545, 21161.111111111, 2116.1111111111, 'Aktif', 3058, 'JAGOSOSMED', 'Sosial Media'),
(26, 26, 'Facebook Followers / Friends', 'Facebook Follower Profile JS 22 [ Refill 7days ] [ 100k/day ] ', 'fast biasanya\ntapi bisa overload', 1000, 100000000, 31465.909090909, 30766.666666667, 3076.6666666667, 'Aktif', 3059, 'JAGOSOSMED', 'Sosial Media'),
(27, 27, 'Facebook Followers / Friends', 'Facebook Follower Profile JS 23 [ NO refill ] [ Mix Quality ] ', 'Mix Quality', 1000, 500000, 26502.272727273, 25913.333333333, 2591.3333333333, 'Aktif', 3100, 'JAGOSOSMED', 'Sosial Media'),
(28, 28, 'Facebook Followers / Friends', 'Facebook Follower Profile JS 9 [ real ] [ Refill 30 Days ]', 'waktu mulai 0-12 jam', 1000, 100000, 47642.045454545, 46583.333333333, 4658.3333333333, 'Aktif', 2123, 'JAGOSOSMED', 'Sosial Media'),
(29, 29, 'Facebook Followers / Friends', 'Facebook Follower Profile/Page Profile Followers JS 24 [ refill 15days ]', '3k/day', 500, 100000, 21863.636363636, 21377.777777778, 2137.7777777778, 'Aktif', 3123, 'JAGOSOSMED', 'Sosial Media'),
(30, 30, 'Facebook Group Member', 'Facebook Group Member Server 2 [ No Refill  ] 1-15k/hari', '1-15k/hari\nlow drop bahkan tidak drop\ntapi tetap no refill jika drop', 1000, 150000, 45736.363636364, 44720, 4472, 'Aktif', 2648, 'JAGOSOSMED', 'Sosial Media'),
(31, 31, 'Facebook Group Member', 'Facebook Group Member Server 4 [ No  Refill ] 500-1K/hari', 'Waktu mulai : 0-6jam\nNo  Refill\n\nDetail:\nContoh link: https://www.facebook.com/groups/123\nLayanan ini hanya bekerja di grup publik\nJANGAN MELAKUKAN ORDER LEBIH 1 UNTUK LINK PADA WAKTU YANG SAMA.', 100, 25000, 73523.863636364, 71890, 7189, 'Aktif', 2650, 'JAGOSOSMED', 'Sosial Media'),
(32, 32, 'Facebook Group Member', 'Facebook Group Member Server 5 [ 7 Days Refill ] 500-1K/hari ', '0-1hr\n1k/day\n7 Days Refill', 1000, 500000, 16619.318181818, 16250, 1625, 'Aktif', 2784, 'JAGOSOSMED', 'Sosial Media'),
(33, 33, 'Facebook Group Member', 'Facebook Group Member Server 6 [ NO Refill ] 3K/hari', '3K/hari', 100, 5000000, 28688.636363636, 28051.111111111, 2805.1111111111, 'Aktif', 2871, 'JAGOSOSMED', 'Sosial Media'),
(34, 34, 'Facebook Group Member', 'Facebook Group Member Server 7 [ Refill 30 Days ] [Start Time: 0 - 12 Hours] ', 'Speed: 1K/Day', 100, 10000, 35232.954545455, 34450, 3445, 'Aktif', 2940, 'JAGOSOSMED', 'Sosial Media'),
(35, 35, 'Facebook Group Member', 'Facebook Group Member Server 8 [ Refill 30 Days ] [ 5k/days ] [ Start 0-1hrs ]', 'Link: Group URL\nStart: 0-11Hrs\nSpeed: 200-1k days\nRefill: 30 days', 100, 3000000, 31357.890909091, 30661.048888889, 3066.1048888889, 'Aktif', 3462, 'JAGOSOSMED', 'Sosial Media'),
(36, 36, '- ? Promo 01 Oktober 2023 ?-', 'Facebook Likes PROMO 1 [ Instant - 1 Hour ] Speed: 10k/day', 'NO REFUND\nstart count eror jadi 0\ntapi masuk like\nno kompline apapun !\nkadang masuk tidak sesuai yang dipesan ( no kompline )', 100, 1000000, 10961.363636364, 10717.777777778, 1071.7777777778, 'Aktif', 3428, 'JAGOSOSMED', 'Sosial Media'),
(37, 37, 'Facebook Live Stream - S1 ', 'Facebook Live Stream Viewers S1 ( 120 minutes )', 'Instant - 15 minutes\nNo refill\nNo refund\nExample Order Format: https://www.facebook.com/user/videos/ID', 20, 10000, 63596.590909091, 62183.333333333, 6218.3333333333, 'Aktif', 3472, 'JAGOSOSMED', 'Sosial Media'),
(38, 38, 'Facebook Live Stream - S1 ', 'Facebook Live Stream Viewers S1 ( 15 minutes )', 'Instant - 15 minutes\nNo refill\nNo refund\nExample Order Format: https://www.facebook.com/user/videos/ID', 20, 10000, 8421.9318181818, 8234.7777777778, 823.47777777778, 'Aktif', 3468, 'JAGOSOSMED', 'Sosial Media'),
(39, 39, 'Facebook Live Stream - S1 ', 'Facebook Live Stream Viewers S1 ( 180 minutes )', 'Instant - 15 minutes\nNo refill\nNo refund\nExample Order Format: https://www.facebook.com/user/videos/ID', 20, 10000, 111534.09090909, 109055.55555556, 10905.555555556, 'Aktif', 3473, 'JAGOSOSMED', 'Sosial Media'),
(40, 40, 'Facebook Live Stream - S1 ', 'Facebook Live Stream Viewers S1 ( 240 minutes )', 'Instant - 15 minutes\nNo refill\nNo refund\nExample Order Format: https://www.facebook.com/user/videos/ID', 20, 10000, 148465.90909091, 145166.66666667, 14516.666666667, 'Aktif', 3474, 'JAGOSOSMED', 'Sosial Media'),
(41, 41, 'Facebook Live Stream - S1 ', 'Facebook Live Stream Viewers S1 ( 30 minutes )', 'Instant - 15 minutes\nNo refill\nNo refund\nExample Order Format: https://www.facebook.com/user/videos/ID', 20, 10000, 16080.113636364, 15722.777777778, 1572.2777777778, 'Aktif', 3469, 'JAGOSOSMED', 'Sosial Media'),
(42, 42, 'Facebook Live Stream - S1 ', 'Facebook Live Stream Viewers S1 ( 360 minutes )', 'Instant - 15 minutes\nNo refill\nNo refund\nExample Order Format: https://www.facebook.com/user/videos/ID', 20, 10000, 221590.90909091, 216666.66666667, 21666.666666667, 'Aktif', 3475, 'JAGOSOSMED', 'Sosial Media'),
(43, 43, 'Facebook Live Stream - S1 ', 'Facebook Live Stream Viewers S1 ( 60 minutes )', 'Instant - 15 minutes\nNo refill\nNo refund\nExample Order Format: https://www.facebook.com/user/videos/ID', 20, 10000, 32160.227272727, 31445.555555556, 3144.5555555556, 'Aktif', 3470, 'JAGOSOSMED', 'Sosial Media'),
(44, 44, 'Facebook Live Stream - S1 ', 'Facebook Live Stream Viewers S1 ( 90 minutes )', 'Instant - 15 minutes\nNo refill\nNo refund\nExample Order Format: https://www.facebook.com/user/videos/ID', 20, 10000, 50264.204545455, 49147.222222222, 4914.7222222222, 'Aktif', 3471, 'JAGOSOSMED', 'Sosial Media'),
(45, 45, 'Facebook Live Stream', 'Facebook Live Stream Views ( 120 Minutes LIVE STABLE )', '120 Minutes LIVE STABLE', 100, 15000, 77497.727272727, 75775.555555556, 7577.5555555555, 'Aktif', 3106, 'JAGOSOSMED', 'Sosial Media'),
(46, 46, 'Facebook Live Stream', 'Facebook Live Stream Views ( 150 Minutes LIVE STABLE )', '150 Minutes LIVE STABLE', 100, 15000, 104768.18181818, 102440, 10244, 'Aktif', 3107, 'JAGOSOSMED', 'Sosial Media'),
(47, 47, 'Facebook Live Stream', 'Facebook Live Stream Views ( 180 Minutes LIVE STABLE )', '180 Minutes LIVE STABLE', 100, 15000, 112125, 109633.33333333, 10963.333333333, 'Aktif', 3108, 'JAGOSOSMED', 'Sosial Media'),
(48, 48, 'Facebook Live Stream', 'Facebook Live Stream Views ( 210 Minutes LIVE STABLE )', '210 Minutes LIVE STABLE', 100, 15000, 124829.54545455, 122055.55555556, 12205.555555556, 'Aktif', 3109, 'JAGOSOSMED', 'Sosial Media'),
(49, 49, 'Facebook Live Stream', 'Facebook Live Stream Views ( 60 Minutes LIVE STABLE )', '60 Minutes LIVE STABLE', 100, 15000, 37522.727272727, 36688.888888889, 3668.8888888889, 'Aktif', 3104, 'JAGOSOSMED', 'Sosial Media'),
(50, 50, 'Facebook Live Stream', 'Facebook Live Stream Views ( 90 Minutes LIVE STABLE )', '90 Minutes LIVE STABLE', 100, 15000, 64940.909090909, 63497.777777778, 6349.7777777778, 'Aktif', 3105, 'JAGOSOSMED', 'Sosial Media'),
(51, 51, 'Facebook Live Stream', 'Facebook Live Stream Views (30 Minutes LIVE STABLE )', '30 Minutes LIVE STABLE', 100, 15000, 18909.090909091, 18488.888888889, 1848.8888888889, 'Aktif', 3103, 'JAGOSOSMED', 'Sosial Media'),
(52, 52, 'Facebook Live Stream - JS3', 'Facebook Live Stream Views | Max: 50K | 120 minutes', '- Quality: High Quality\n- Drop: NON DROP\n\nBest Live Video URL is:\n-> https://www.facebook.com/user(userID)/videos/ID\n\nONLY This Link Type NOT supported: https://fb.watch/xxxxxx', 50, 50000, 213465.90909091, 208722.22222222, 20872.222222222, 'Aktif', 3398, 'JAGOSOSMED', 'Sosial Media'),
(53, 53, 'Facebook Live Stream - JS3', 'Facebook Live Stream Views | Max: 50K | 15 minutes', '- Quality: High Quality\n- Drop: NON DROP\n\nBest Live Video URL is:\n-> https://www.facebook.com/user(userID)/videos/ID\n\nONLY This Link Type NOT supported: https://fb.watch/xxxxxx', 50, 50000, 25985.227272727, 25407.777777778, 2540.7777777778, 'Aktif', 3394, 'JAGOSOSMED', 'Sosial Media'),
(54, 54, 'Facebook Live Stream - JS3', 'Facebook Live Stream Views | Max: 50K | 180 minutes', '- Quality: High Quality\n- Drop: NON DROP\n\nBest Live Video URL is:\n-> https://www.facebook.com/user(userID)/videos/ID\n\nONLY This Link Type NOT supported: https://fb.watch/xxxxxx', 50, 50000, 319932.95454545, 312823.33333333, 31282.333333333, 'Aktif', 3399, 'JAGOSOSMED', 'Sosial Media'),
(55, 55, 'Facebook Live Stream - JS3', 'Facebook Live Stream Views | Max: 50K | 240 minutes', '- Quality: High Quality\n- Drop: NON DROP\n\nBest Live Video URL is:\n-> https://www.facebook.com/user(userID)/videos/ID\n\nONLY This Link Type NOT supported: https://fb.watch/xxxxxx', 50, 50000, 420948.86363636, 411594.44444444, 41159.444444444, 'Aktif', 3400, 'JAGOSOSMED', 'Sosial Media'),
(56, 56, 'Facebook Live Stream - JS3', 'Facebook Live Stream Views | Max: 50K | 30 minutes', '- Quality: High Quality\n- Drop: NON DROP\n\nBest Live Video URL is:\n-> https://www.facebook.com/user(userID)/videos/ID\n\nONLY This Link Type NOT supported: https://fb.watch/xxxxxx', 50, 50000, 52457.954545455, 51292.222222222, 5129.2222222222, 'Aktif', 3395, 'JAGOSOSMED', 'Sosial Media'),
(57, 57, 'Facebook Live Stream - JS3', 'Facebook Live Stream Views | Max: 50K | 300 minutes', '- Quality: High Quality\n- Drop: NON DROP\n\nBest Live Video URL is:\n-> https://www.facebook.com/user(userID)/videos/ID\n\nONLY This Link Type NOT supported: https://fb.watch/xxxxxx', 50, 50000, 514415.90909091, 502984.44444444, 50298.444444444, 'Aktif', 3401, 'JAGOSOSMED', 'Sosial Media'),
(58, 58, 'Facebook Live Stream - JS3', 'Facebook Live Stream Views | Max: 50K | 360 minutes', '- Quality: High Quality\n- Drop: NON DROP\n\nBest Live Video URL is:\n-> https://www.facebook.com/user(userID)/videos/ID\n\nONLY This Link Type NOT supported: https://fb.watch/xxxxxx', 50, 50000, 633882.95454545, 619796.66666667, 61979.666666667, 'Aktif', 3402, 'JAGOSOSMED', 'Sosial Media'),
(59, 59, 'Facebook Live Stream - JS3', 'Facebook Live Stream Views | Max: 50K | 60 minutes', '- Quality: High Quality\n- Drop: NON DROP\n\nBest Live Video URL is:\n-> https://www.facebook.com/user(userID)/videos/ID\n\nONLY This Link Type NOT supported: https://fb.watch/xxxxxx', 50, 50000, 107781.81818182, 105386.66666667, 10538.666666667, 'Aktif', 3396, 'JAGOSOSMED', 'Sosial Media'),
(60, 60, 'Facebook Live Stream - JS3', 'Facebook Live Stream Views | Max: 50K | 90 minutes', '- Quality: High Quality\n- Drop: NON DROP\n\nBest Live Video URL is:\n-> https://www.facebook.com/user(userID)/videos/ID\n\nONLY This Link Type NOT supported: https://fb.watch/xxxxxx', 50, 50000, 160225, 156664.44444444, 15666.444444444, 'Aktif', 3397, 'JAGOSOSMED', 'Sosial Media'),
(61, 61, 'Facebook Page Likes & Page Followers', 'Facebook Page Followers JS 25 [ Non Drop ]  [ Speed 300k-500k/day ]', 'Start Time: 6-12hr\nSpeed: 300k-500k/day\nNon-Drop server [ No refill In Case any Update from Facebook causes Drop in followers ]', 100, 1000000, 14181.818181818, 13866.666666667, 1386.6666666667, 'Aktif', 3515, 'JAGOSOSMED', 'Sosial Media'),
(62, 62, 'Facebook Page Likes & Page Followers', 'Facebook Page Followers JS 29 [ Non Drop ] [ 20k-100k/Day | 30 Days Refill ]', 'pastikan tidak drop dari jumlah awal saat prooses\nStart: 0-15min\nSpeed: 20-100K/Day\nRefill: 30 Days Refill\n\nLink Format : https://www.facebook.com/profile.php?id=example\nLink Format : https://www.facebook.com/example\n\nNote:\n- Please send screenshot if you claim order was not delivered.', 100, 2147483647, 8317.0454545455, 8132.2222222222, 813.22222222222, 'Aktif', 3569, 'JAGOSOSMED', 'Sosial Media'),
(63, 63, 'Facebook Page Likes & Page Followers', 'Facebook Page Followers Server 2 [ No refill ] [ 500/Day ] ', '500/Day', 1000, 500000, 28984.090909091, 28340, 2834, 'Aktif', 2829, 'JAGOSOSMED', 'Sosial Media'),
(64, 64, 'Facebook Page Likes & Page Followers', 'Facebook Page Followers Server 3 [ Lifetime refill ] [ 10K/Day ] ', 'Lifetime\nStart Time: 0 - 1 Hours', 100, 100000, 47346.590909091, 46294.444444444, 4629.4444444444, 'Aktif', 2938, 'JAGOSOSMED', 'Sosial Media'),
(65, 65, 'Facebook Page Likes & Page Followers', 'Facebook Page Followers Server 4 [ Lifetime refill ] [ 10K/Day ] [Start Time: 8 Hours]', 'Real & Active Users', 100, 10000, 27181.818181818, 26577.777777778, 2657.7777777778, 'Aktif', 2939, 'JAGOSOSMED', 'Sosial Media'),
(66, 66, 'Facebook Page Likes & Page Followers', 'Facebook Page Followers Server 5 [ Classic ] [ Refill 30 Days ] [ 50K/Day ]', 'Start Time: 0-12 Hours', 500, 1000000, 25113.636363636, 24555.555555556, 2455.5555555556, 'Aktif', 3149, 'JAGOSOSMED', 'Sosial Media'),
(67, 67, 'Facebook Page Likes & Page Followers', 'Facebook Page Followers Server 6 [ 25k/day ] [ LifeTime Guaranteed ] [ Non Drop ] ', 'waktu mulai 0-72 hours\n25k/day\nLifeTime Guaranteed', 1000, 30000, 35454.545454545, 34666.666666667, 3466.6666666667, 'Aktif', 3150, 'JAGOSOSMED', 'Sosial Media'),
(68, 68, 'Facebook Page Likes & Page Followers', 'Facebook Page Followers Server 7 [ 5k/day ] [ R7days ] [ Facebook Likes + Followers ] ', '3k/d', 100, 500000, 32500, 31777.777777778, 3177.7777777778, 'Aktif', 3371, 'JAGOSOSMED', 'Sosial Media'),
(69, 69, 'Facebook Page Likes & Page Followers', 'Facebook Page Likes [ S13 ] [ Refill 30days ] [ Start 24 Hour ] HQ', 'contoh target https://mobile.facebook.com/blogtakin\njangan https://www.facebook.com/blogtakin\nsupport link lama hanya diubah aja', 500, 100000, 115478.40909091, 112912.22222222, 11291.222222222, 'Aktif', 2879, 'JAGOSOSMED', 'Sosial Media'),
(70, 70, 'Facebook Page Likes & Page Followers', 'Facebook Page Likes [ S14 ] [ Refill 7 days ] [ 3k/day ] ', 'waktu mulai 0-24 jam', 100, 100000, 57938.636363636, 56651.111111111, 5665.1111111111, 'Aktif', 2880, 'JAGOSOSMED', 'Sosial Media'),
(71, 71, 'Facebook Page Likes & Page Followers', 'Facebook Page Likes + Followers JS 26 [ Start Time: 0 - 3 Hrs ] [ Refill 7 days ] [ 10K/day ]', 'Start Time: 0 - 3 Hrs\nRefill 7 days\n10K/day', 100, 500000, 28806.818181818, 28166.666666667, 2816.6666666667, 'Aktif', 3556, 'JAGOSOSMED', 'Sosial Media'),
(72, 72, 'Facebook Page Likes & Page Followers', 'Facebook Page Likes + Followers JS 28 [ Start Time: 0 - 3 Hrs ] [ Refill 30 days ] [ 50K/day ]', 'Start Time: 0 - 3 Hrs\n50K/day\nRefill 30 days', 500, 500000, 30284.090909091, 29611.111111111, 2961.1111111111, 'Aktif', 3558, 'JAGOSOSMED', 'Sosial Media'),
(73, 73, 'Facebook Page Likes & Page Followers', 'Facebook Page Likes + Followers Server 3 [ refill 7 days ] [ 5k/Day ]  non drop', '5k/days\nwaktu mulai 0-6 jam\nnon drop', 100, 500000, 51704.545454545, 50555.555555556, 5055.5555555556, 'Aktif', 2881, 'JAGOSOSMED', 'Sosial Media'),
(74, 74, 'Facebook Page Likes & Page Followers', 'Facebook Page Likes JS 27 [ Refill 30Days ] [ Max: 2M ] [ Start Time: 0 - 6 Hrs ] [ Speed: 100K/Day ]', '100K/Day\nStart Time: 0 - 6 Hrs', 100, 1000000, 29545.454545455, 28888.888888889, 2888.8888888889, 'Aktif', 3557, 'JAGOSOSMED', 'Sosial Media'),
(75, 75, 'Facebook Post Likes / Comments / Shares', 'Facebook Photo / Post / Reels Likes Server 15 [ Cheapest ] [ Instant Complete ] ', 'No refill\nInstant Complete', 100, 10000, 9011.3636363636, 8811.1111111111, 881.11111111111, 'Aktif', 3603, 'JAGOSOSMED', 'Sosial Media'),
(76, 76, 'Facebook Post Likes / Comments / Shares', 'Facebook Photo / Post / Reels Likes Server 16 [ 3k/day ] ', '3k/day\nLess drop', 50, 3000, 11670.454545455, 11411.111111111, 1141.1111111111, 'Aktif', 3604, 'JAGOSOSMED', 'Sosial Media'),
(77, 77, 'Facebook Post Likes / Comments / Shares', 'Facebook Photo / Post / Video Likes Server 3 [ 30days Refill ] [ 3k/day ] ', 'Link: https://www.facebook.com/zuck/posts/10114380064791681\nStart: Within 0 to 1 Hrs, Pls allow 6-12 hours.\nSpeed: 1000 to 10000 per 24 hours\nRefill: 30days\n\nURL Format: Photo/Video/Status Link\nQuality: Real\nGuarantee: 30days Guarantee', 10, 5000, 29973.863636364, 29307.777777778, 2930.7777777778, 'Aktif', 2291, 'JAGOSOSMED', 'Sosial Media'),
(78, 78, 'Facebook Post Likes / Comments / Shares', 'Facebook Photo / Post Komentar Server 2 [ 24 - 48 jam delivery ] [ CUSTOM ]', '24 - 48 jam delivery', 10, 600, 674182.95454545, 659201.11111111, 65920.111111111, 'Aktif', 2417, 'JAGOSOSMED', 'Sosial Media'),
(79, 79, 'Facebook Post Likes / Comments / Shares', 'Facebook Photo / Post Komentar Server 3 [ max 1k ] [ CUSTOM ] ', 'Link: Follow the description\nStart: 0-6hrs\nSpeed: 100-500/days\nRefill: 30 days\n\nQuality: High Quality\nQuantity: Min 10, Max 600', 10, 1000, 603982.95454545, 590561.11111111, 59056.111111111, 'Aktif', 2418, 'JAGOSOSMED', 'Sosial Media'),
(80, 80, 'Facebook Post Likes / Comments / Shares', 'Facebook Photo / Post Komentar Server 4 [ max 10k ] [ CUSTOM ] ', '50-200/Days\ncontoh link yang benar \nhttps://www.facebook.com/100081853154058/posts/pfbid02e98qyaE1P9gtsnEvv4fWs3rQ3TyC7y4keUTDbjiVRnDRAJPToC76etYE5pGAncd1l/?app=fbl\nambil link/target dari browser jangan dari aplikasi', 10, 10000, 96879.545454545, 94726.666666667, 9472.6666666667, 'Aktif', 3114, 'JAGOSOSMED', 'Sosial Media'),
(81, 81, 'Facebook Post Likes / Comments / Shares', 'Facebook Photo / Post Komentar Server 5 [ max 250 ] [ CUSTOM ][ INDONESIA ]', 'Start: 0-6hrs', 10, 250, 1772727.2727273, 1733333.3333333, 173333.33333333, 'Aktif', 3388, 'JAGOSOSMED', 'Sosial Media'),
(82, 82, 'Facebook Post Likes / Comments / Shares', 'Facebook Photo / Post Likes JS1[ Start Instant ][Recommended]', 'Speed 5k per day\nNo refill\nbisa untuk video live', 25, 10000, 78280.681818182, 76541.111111111, 7654.1111111111, 'Aktif', 1445, 'JAGOSOSMED', 'Sosial Media'),
(83, 83, 'Facebook Post Likes / Comments / Shares', 'Facebook Photo / Post Likes JS5 [ 30 days Refill ] [max 500]', 'Murah\ngk support live', 50, 500, 18170.454545455, 17766.666666667, 1776.6666666667, 'Aktif', 1753, 'JAGOSOSMED', 'Sosial Media'),
(84, 84, 'Facebook Post Likes / Comments / Shares', 'Facebook Photo / Post Likes Server 1 [ No Refill ] [ 300/hour ]', 'Instant\nKecepatan: 200-1000/jam (Semakin besar pesanan, semakin cepat tingkat pertumbuhannya)\nKecepatan dapat bervariasi jika kelebihan beban mungkin sangat lambat. tetapi dapat didorong sesuai permintaan\nDrop: 10-20%\nNo refill/refund', 100, 100000, 10163.636363636, 9937.7777777778, 993.77777777778, 'Aktif', 2289, 'JAGOSOSMED', 'Sosial Media'),
(85, 85, 'Facebook Post Likes / Comments / Shares', 'Facebook Photo / Post Likes Server 10 [ Speed 20k+/D ]⚡️', '- Instant start\n- Speed 1k/D\n- Min 50 - max 1k\n- No Refill', 100, 5000, 12453.409090909, 12176.666666667, 1217.6666666667, 'Aktif', 3175, 'JAGOSOSMED', 'Sosial Media'),
(86, 86, 'Facebook Post Likes / Comments / Shares', 'Facebook Photo / Post Likes Server 11 [ 1k-3k/day ]', 'Instant Start\n1k-3k/day\nNo Refill', 100, 10000, 8405.6818181818, 8218.8888888889, 821.88888888889, 'Aktif', 3392, 'JAGOSOSMED', 'Sosial Media'),
(87, 87, 'Facebook Post Likes / Comments / Shares', 'Facebook Photo / Post Likes Server 12 [ 1k-3k/day ] [ 30 Days Refill ]', 'ada issue startcount gk jalan\njadi kalo ada lapor masalah wajib sebelum order\nss kan status dan ada bukti tanggalnya', 100, 100000, 11522.727272727, 11266.666666667, 1126.6666666667, 'Aktif', 3429, 'JAGOSOSMED', 'Sosial Media'),
(88, 88, 'Facebook Post Likes / Comments / Shares', 'Facebook Photo / Post Likes Server 12 [ waktu mulai 0-1 jam ] [ No refill ] ', 'Instan\nada issue startcount gk jalan dan jumlah like udah masuk tapi status delay untuk buat sukses\njadi kalo ada lapor masalah wajib sebelum order\nss kan status dan ada bukti tanggalnya', 50, 3000, 11818.181818182, 11555.555555556, 1155.5555555556, 'Aktif', 3430, 'JAGOSOSMED', 'Sosial Media'),
(89, 89, 'Facebook Post Likes / Comments / Shares', 'Facebook Photo / Post Likes Server 13 [ Cheapest ] [ No refill ] [ 10K/Days ]', 'Cheapest', 10, 10000, 3966.4772727273, 3878.3333333333, 387.83333333333, 'Aktif', 3595, 'JAGOSOSMED', 'Sosial Media'),
(90, 90, 'Facebook Post Likes / Comments / Shares', 'Facebook Photo / Post Likes Server 14 [ Cheapest ] [ 30 Days Refill ] [ 10K/Days ]', 'Start: 0-8H\nSpeed: 3K/Day\nNo Refill', 100, 50000, 7386.3636363636, 7222.2222222222, 722.22222222222, 'Aktif', 3596, 'JAGOSOSMED', 'Sosial Media'),
(91, 91, 'Facebook Post Likes / Comments / Shares', 'Facebook Photo / Post Likes Server 2 [ No Refill ] [ 5k/day ]', 'Instan\n1000 likes/1 kali order (bisa dipesan 20 kali).\nwaktu penyelesaian adalah 6-12 jam\nDrop: 5-15% [ jika drop diatas itu tetap tidak ada garansi ]\n[No Refill', 50, 1000, 11803.409090909, 11541.111111111, 1154.1111111111, 'Aktif', 2290, 'JAGOSOSMED', 'Sosial Media'),
(92, 92, 'Facebook Post Likes / Comments / Shares', 'Facebook Photo / Post Likes Server 4 [ 45days Refill ] [ REAL ] ', 'REAL negara luar\n0-3 jam mulai!\nTanpa Drop! Garansi Isi Ulang 45 Hari.\nKecepatan Harian 3K\nHalaman, Grup, Profil Semua Tautan Terima.\nCONTOH LINK: https://www.facebook.com/zuck/posts/10114380064791681', 100, 10000, 30535.227272727, 29856.666666667, 2985.6666666667, 'Aktif', 2292, 'JAGOSOSMED', 'Sosial Media'),
(93, 93, 'Facebook Post Likes / Comments / Shares', 'Facebook Photo / Post Likes Server 5 [ NO Refill ] [Max 50K]', 'Start Time: 0-24 Hours', 100, 50000, 19263.636363636, 18835.555555556, 1883.5555555556, 'Aktif', 3029, 'JAGOSOSMED', 'Sosial Media'),
(94, 94, 'Facebook Post Likes / Comments / Shares', 'Facebook Photo / Post Likes Server 6 [ NO Refill ] [Max 50K] ', 'Start Time: 0-6 Hours', 100, 10000, 15038.636363636, 14704.444444444, 1470.4444444444, 'Aktif', 3030, 'JAGOSOSMED', 'Sosial Media'),
(95, 95, 'Facebook Post Likes / Comments / Shares', 'Facebook Photo / Post Likes Server 7 [ 30 Days Refill ] [ Max 3k ] ', '30 Days Refill', 50, 3000, 18200, 17795.555555556, 1779.5555555556, 'Aktif', 3033, 'JAGOSOSMED', 'Sosial Media'),
(96, 96, 'Facebook Post Likes / Comments / Shares', 'Facebook Photo / Post Likes Server 8 [ NONDROP ] [ Max 10k ] ', 'instant\n5k/Hours\nNon Drop ( tetapi jika drop gk ada refund ataupun refill ! )', 20, 10000, 9750, 9533.3333333333, 953.33333333333, 'Aktif', 3034, 'JAGOSOSMED', 'Sosial Media'),
(97, 97, 'Facebook Post Likes / Comments / Shares', 'Facebook Photo / Post Likes Server 9 [ SLOW ] [ 1K/Day ] ', 'Speed: 1K/Day\nwaktu mulai 1-3 hari', 500, 20000, 10429.545454545, 10197.777777778, 1019.7777777778, 'Aktif', 3060, 'JAGOSOSMED', 'Sosial Media'),
(98, 98, 'Facebook Post Likes / Comments / Shares', 'Facebook Post Share JS 2 [No Refill] [ 1K-5K/Day ]', 'No Refill', 500, 5000000, 21863.636363636, 21377.777777778, 2137.7777777778, 'Aktif', 3391, 'JAGOSOSMED', 'Sosial Media'),
(99, 99, 'Facebook Followers / Friends', 'Facebook Profile Follower JS 1 [ No Refill ] beta test ', '- Speed 1k/D\n- Start : 0 - 24h\n- hanya untuk followers profil ya bukan fanspage/halaman !\n- No Refill .', 100, 10000, 107057.95454545, 104678.88888889, 10467.888888889, 'Aktif', 1443, 'JAGOSOSMED', 'Sosial Media'),
(100, 100, 'Facebook Followers / Friends', 'Facebook Profile Follower JS 4 [ R30Day ] [Non Drop]', 'Refill 30Day\nkami sudah uji selama 2 bulan dan tidak ada penurunan\njadi kami tidak bisa mastikan ini nondrop 100% jika ada update dll', 30, 100, 81353.409090909, 79545.555555556, 7954.5555555555, 'Aktif', 1672, 'JAGOSOSMED', 'Sosial Media'),
(101, 101, 'Facebook Reels Short Video', 'Facebook Reel Views S6 ( Instant, Natural 50k/Day, Non drop 30 days guaranteed )', '-', 500, 1000000, 6431.88, 6288.9493333333, 628.89493333333, 'Aktif', 3448, 'JAGOSOSMED', 'Sosial Media'),
(102, 102, 'Facebook Reels Short Video', 'Facebook Reel Views S6 ( Instant, Slow 5k/Day, Non drop 30 days guaranteed )', '-', 500, 1000000, 3860.22, 3774.4373333333, 377.44373333333, 'Aktif', 3447, 'JAGOSOSMED', 'Sosial Media'),
(103, 103, 'Facebook Reels Short Video', 'Facebook Reel Views S6 ( Instant, Ultrafast 500k/Day, Non drop 30 days guaranteed )', '-', 500, 1000000, 8361.99, 8176.168, 817.6168, 'Aktif', 3449, 'JAGOSOSMED', 'Sosial Media'),
(104, 104, 'Facebook Reels Short Video', 'Facebook Reels Views S5 ( Instant,  10k/Day )', '-', 100, 1000000, 2893.8, 2829.4933333333, 282.94933333333, 'Aktif', 3443, 'JAGOSOSMED', 'Sosial Media'),
(105, 105, 'Facebook Reels Short Video', 'Facebook Reels Views S5 ( Instant,  25k/Day )', '-', 100, 1000000, 3538.08, 3459.456, 345.9456, 'Aktif', 3444, 'JAGOSOSMED', 'Sosial Media'),
(106, 106, 'Facebook Reels Short Video', 'Facebook Reels Views S5 ( Instant,  2k/Day )', '-', 100, 1000000, 2571.66, 2514.512, 251.4512, 'Aktif', 3442, 'JAGOSOSMED', 'Sosial Media'),
(107, 107, 'Facebook Reels Short Video', 'Facebook Reels Views S5 ( Instant, 100k/Day )', '-', 100, 1000000, 5307.12, 5189.184, 518.9184, 'Aktif', 3446, 'JAGOSOSMED', 'Sosial Media'),
(108, 108, 'Facebook Reels Short Video', 'Facebook Reels Views S5 ( Instant, 50k/Day )', '-', 100, 1000000, 4501.77, 4401.7306666667, 440.17306666667, 'Aktif', 3445, 'JAGOSOSMED', 'Sosial Media'),
(109, 109, 'Facebook Reels Short Video', 'Facebook Reels Views S7 ( Instant, Cheapest, 100k/Day, No drop )', '-', 500, 10000000, 4084.08, 3993.3226666667, 399.33226666667, 'Aktif', 3450, 'JAGOSOSMED', 'Sosial Media'),
(110, 110, '- ? Promo 01 Oktober 2023 ?-', 'Facebook Video PROMO 1 [ PAKET 60k menit ] [ 1 Hours+ Video ] Instant -24 hours', 'Instant - 24 hours\nLink Format: https://www.facebook.com/user/videos/ID', 1000, 1000, 33977.272727273, 33222.222222222, 3322.2222222222, 'Aktif', 3433, 'JAGOSOSMED', 'Sosial Media'),
(111, 111, 'Facebook Video Views', 'Facebook Video Views JS 1 [ 3 Seconds ] [ Instant ] [ 100k/Day ] [ Lifetime guaranteed ] ', 'Lifetime guaranteed\n100k/Day', 10, 100000000, 490.45454545455, 479.55555555556, 47.955555555556, 'Aktif', 3609, 'JAGOSOSMED', 'Sosial Media'),
(112, 112, 'Facebook Video Views', 'Facebook Video Views JS 2 [ 10 Seconds ] [ Instant ] [ 100k/Day ] [ Lifetime guaranteed ]', 'Lifetime guaranteed\n100k/Day', 10, 100000000, 517.04545454545, 505.55555555556, 50.555555555556, 'Aktif', 3610, 'JAGOSOSMED', 'Sosial Media'),
(113, 113, 'Facebook Video Views', 'Facebook Video Views JS 3 [ 15 Seconds ] [ Instant ] [ 100k/Day ] [ Lifetime guaranteed ]', '500k - 1 million per day\nLifetime guaranteed\nInstant', 10, 100000000, 539.20454545455, 527.22222222222, 52.722222222222, 'Aktif', 3611, 'JAGOSOSMED', 'Sosial Media'),
(114, 114, 'Facebook Video Views', 'Facebook Video Views JS 4 [ 30 Seconds ] [ Instant ] [ 100k/Day ] [ Lifetime guaranteed ]', 'Lifetime Guaranteed\n500k - 1 million per day', 10, 100000000, 635.22727272727, 621.11111111111, 62.111111111111, 'Aktif', 3612, 'JAGOSOSMED', 'Sosial Media'),
(115, 115, 'Facebook Video Views', 'Facebook Video Views Reels Server 7 [ Refill 90days ] [Non Drop] [Monetization]', '10M/day\nuntuk Reels', 500, 100000000, 5170.4545454545, 5055.5555555556, 505.55555555556, 'Aktif', 3032, 'JAGOSOSMED', 'Sosial Media'),
(116, 116, 'Facebook Video Views', 'Facebook Video Views S1 [ 3 Seconds ] [ 5K/Day ] [ Start 0-5min ] [ Start Time: 0-1 Hours ]', 'Speed: 5K/Day', 500, 20000000, 691.36363636364, 676, 67.6, 'Aktif', 3597, 'JAGOSOSMED', 'Sosial Media'),
(117, 117, 'Facebook Video Views', 'Facebook Video Views S2 [ 3 Seconds ] [ 500K/Day ] [ Start 0-5min ] [ Start Time: 0-1 Hours ] [ Max: 10M ]', '500K/Day', 500, 100000000, 638.18181818182, 624, 62.4, 'Aktif', 3598, 'JAGOSOSMED', 'Sosial Media'),
(118, 118, 'Facebook Video Views', 'Facebook Video Views S3 [ 10 Seconds ] [ 50K/Day ] [ Start 0-5min ] [ Start Time: 0-1 Hours ]', 'Speed: 50K/Day', 500, 20000000, 723.86363636364, 707.77777777778, 70.777777777778, 'Aktif', 3599, 'JAGOSOSMED', 'Sosial Media'),
(119, 119, 'Facebook Video Views', 'Facebook Video Views S4 [ 15 Seconds ] [ 50K/Day ] [ Start 0-5min ] [ Start Time: 0-1 Hours ] ', 'Speed: 50K/Day', 500, 20000000, 759.31818181818, 742.44444444444, 74.244444444444, 'Aktif', 3600, 'JAGOSOSMED', 'Sosial Media'),
(120, 120, 'Facebook Video Views', 'Facebook Video Views S5 [ 30 Seconds ] [ 50K/Day ] [ Start 0-5min ] [ Start Time: 0-1 Hours ]', '50K/Day', 500, 20000000, 865.68181818182, 846.44444444444, 84.644444444444, 'Aktif', 3601, 'JAGOSOSMED', 'Sosial Media'),
(121, 121, 'Facebook Video Views', 'Facebook Video Views S6 [ Work On Reel/video ] [ 3 Seconds ] [ NON DROP ] [ Refill 30 days ] [ 50k/days ] ', '30 Days Refil\n50k/Day\nNon Drop', 500, 500000000, 679.54545454545, 664.44444444444, 66.444444444444, 'Aktif', 3606, 'JAGOSOSMED', 'Sosial Media'),
(122, 122, 'Facebook Video Views', 'Facebook Video Views Server 11 [1-10K/D] [0-96/H]', 'Drop = no\nGuarantee: no', 500, 10000000, 3988.6363636364, 3900, 390, 'Aktif', 3203, 'JAGOSOSMED', 'Sosial Media'),
(123, 123, 'Facebook Video Views', 'Facebook Video Views Server 12 [ 10k-100k/days ] INSTANT', 'Start: Instant (If overloaded 0-24 Hours)\nSpeed: 10K-100K/Day\nRefill: No Refill\n Monetizable\n Minimum: 500\n Maximum: 10M', 500, 100000000, 871.59090909091, 852.22222222222, 85.222222222222, 'Aktif', 3204, 'JAGOSOSMED', 'Sosial Media'),
(124, 124, 'Facebook Video Views', 'Facebook Video Views Server 13 [ 500k/day ] [ 1 minute ] INSTANT ', 'Instant\n500k/day', 500, 10000000, 26886.363636364, 26288.888888889, 2628.8888888889, 'Aktif', 3261, 'JAGOSOSMED', 'Sosial Media'),
(125, 125, 'Facebook Video Views', 'Facebook Video Views Server 14 [ Work On Reel/video ] [ 2k-5k/day ] [ Start 0-5min ]', 'Fast\nspeed 2k-5k/day\nNo refill [ Views are non Drop ]', 500, 100000000, 2659.0909090909, 2600, 260, 'Aktif', 3570, 'JAGOSOSMED', 'Sosial Media'),
(126, 126, 'Facebook 60k - 600k Minute Watchtime', 'Facebook Video Views Server 3 [ Monetization ] [  PAKET 600k menit ]', '- Start time: 0-24 H ( it Might need 0-72 Hours if there are Update or Overload )\n- Speed 50k-100k hours per day ( this speed is approximate and it may change depending on overload and updates )\n- Video must be at least +2Hours ( you can use an old live video posted on your timeline )\n- Monitizable Views\n- Example Order Format: https://www.facebook.com/user/videos/ID\n\nImportant Requirement: Go to the page: \" https://business.facebook.com/creatorstudio/?tab=monetization_home&collection_id=free_form_collection \", press Ctrl + U and search ( Ctrl + f ) for the keyword \"EAAciLZ\", copy the entire token here', 10000, 10000, 25113.636363636, 24555.555555556, 2455.5555555556, 'Aktif', 2245, 'JAGOSOSMED', 'Sosial Media'),
(127, 127, 'Facebook Video Views', 'Facebook Video Views Server 4 [ No Refill ]  [Speed: 100K/Day]', 'tidak ada garansi\nStart Time: Instant\nSpeed: Up to 100K/ day\nRefill: No refill / No refund\nSpecs: High Quality - 2 to 30 Minutes Video Watch Time !', 5000, 10000000, 94811.363636364, 92704.444444444, 9270.4444444444, 'Aktif', 2246, 'JAGOSOSMED', 'Sosial Media'),
(128, 128, 'Facebook Video Views', 'Facebook Video Views Server 5 [ Non Drop ] [Speed: 1M/Day]  [  Reels ]', 'Speed: 1M/Day\nno drop\ntapi jika terjadi drop, tidak ada garansi', 250, 10000000, 4771.5909090909, 4665.5555555556, 466.55555555556, 'Aktif', 2882, 'JAGOSOSMED', 'Sosial Media'),
(129, 129, 'Facebook Video Views', 'Facebook Video Views Server 6 [ Refill 30days ] [Speed: 5k-20k/days ]', 'Refill 30days', 500, 100000000, 19367.045454545, 18936.666666667, 1893.6666666667, 'Aktif', 2883, 'JAGOSOSMED', 'Sosial Media'),
(130, 130, 'Facebook Video Views', 'Facebook Video Views Server 8  [Non Drop] [10M/day] ', '10M/day\nNon Drop', 500, 10000000, 5613.6363636364, 5488.8888888889, 548.88888888889, 'Aktif', 3099, 'JAGOSOSMED', 'Sosial Media'),
(131, 131, 'Facebook 60k - 600k Minute Watchtime', 'Facebook Video Views V1 [ Monetization ] [ PAKET 600k menit ] [ 2 Hours+ Video ]', '- Waktu mulai: 0-1 jam (Mungkin perlu 0-72 Jam jika ada Update atau Overload)\n- Kecepatan 50k-100k jam per hari (kecepatan ini perkiraan dan dapat berubah tergantung kelebihan beban dan pembaruan)\n- Video harus setidaknya +2 Jam (Anda dapat menggunakan video langsung lama yang diposting di timeline Anda)\n- Tampilan yang Dapat Dimonetisasi\n- Contoh Format Pemesanan : https://www.facebook.com/user/videos/ID', 10000, 10000, 7534.0909090909, 7366.6666666667, 736.66666666667, 'Aktif', 3142, 'JAGOSOSMED', 'Sosial Media'),
(132, 132, 'Facebook 60k - 600k Minute Watchtime', 'Facebook Video Views V2 [ PAKET 60k menit ] [ 3 Hours+ Video ] [R365]', 'Start 0-24H\nComplete time 48H\nR365', 1000, 1000, 28954.545454545, 28311.111111111, 2831.1111111111, 'Aktif', 3344, 'JAGOSOSMED', 'Sosial Media'),
(133, 133, 'Facebook 60k - 600k Minute Watchtime', 'Facebook Video Views V3 [ PAKET 60k menit ] [ 2 Hours+ Video ] [R365]', 'Start 0-24H\nComplete 48H\nR365', 1000, 1000, 32500, 31777.777777778, 3177.7777777778, 'Aktif', 3345, 'JAGOSOSMED', 'Sosial Media'),
(134, 134, 'Facebook 60k - 600k Minute Watchtime', 'Facebook Video Views V4 [ PAKET 60k menit ] [ 1 Hours+ Video ] [R365]', 'Start 0-24H\nComplete 48H\nR365', 1000, 1000, 44318.181818182, 43333.333333333, 4333.3333333333, 'Aktif', 3346, 'JAGOSOSMED', 'Sosial Media'),
(135, 135, 'Facebook 60k - 600k Minute Watchtime', 'Facebook Video Views V5 [ VIP ][ PAKET 60k menit ] [ 3 Hours+ Video ] ', 'Start Time: Instant\n Complete Time: 48 Hours\n Stable\n Video Length Must 3 Hours 1 Minute +\n\n Link Format: https://www.facebook.com/user/videos/ID', 1000, 1000, 38409.090909091, 37555.555555556, 3755.5555555556, 'Aktif', 3351, 'JAGOSOSMED', 'Sosial Media'),
(136, 136, 'Facebook 60k - 600k Minute Watchtime', 'Facebook Video Views V6 [ VIP ][ PAKET 60k menit ] [ 2 Hours+ Video ]', 'Start Time: Instant\n Complete Time: 48 Hours\n Stable\n Video Length Must 2 Hours 1 Minute +\n\n Link Format: https://www.facebook.com/user/videos/ID', 1000, 1000, 42250, 41311.111111111, 4131.1111111111, 'Aktif', 3352, 'JAGOSOSMED', 'Sosial Media'),
(137, 137, 'Facebook 60k - 600k Minute Watchtime', 'Facebook Video Views V7 [ VIP ][ PAKET 60k menit ] [ 1 Hours+ Video ] ', 'Start Time: Instant\n Complete Time: 48 Hours\n Stable\n Video Length Must 1 Hours 1 Minute +\n\n Link Format: https://www.facebook.com/user/videos/ID', 1000, 1000, 56875, 55611.111111111, 5561.1111111111, 'Aktif', 3353, 'JAGOSOSMED', 'Sosial Media'),
(138, 138, 'Facebook Video Views', 'Facebook Video/Reels Views Server 9 [ 100-500K/Days ] [Instant]', 'Drop: no\nGuarantee: lifetime\nOur service\nAny kind of support available\nHowever please do not forget these are just estimations', 500, 10000000, 8006.8181818182, 7828.8888888889, 782.88888888889, 'Aktif', 3115, 'JAGOSOSMED', 'Sosial Media'),
(139, 139, 'Instagram Comments/komentar', 'Instagram  Comments Custom [Account Verif/centang biru] ', 'lambat\nnon drop', 1, 10, 36885490.909091, 36065813.333333, 3606581.3333333, 'Aktif', 1839, 'JAGOSOSMED', 'Sosial Media'),
(140, 140, 'Instagram Comments/komentar', 'Instagram  Comments Random [Account Verif/centang biru]', 'lambat\nnon drop', 1, 10, 28912206.818182, 28269713.333333, 2826971.3333333, 'Aktif', 1840, 'JAGOSOSMED', 'Sosial Media'),
(141, 141, 'Instagram VERIFIED ', 'Instagram  Followers [1 Follower] VERIFIED/CENTANG BIRU', 'mendapatkan 1 followers yang verified/centang biru\nproses bisa 3-7 hari\nbahkan mungkin bisa sebulan\ntolong bersabar', 1000, 1000, 21686.363636364, 21204.444444444, 2120.4444444444, 'Aktif', 2155, 'JAGOSOSMED', 'Sosial Media'),
(142, 142, 'Instagram Live Video', 'Instagram - Live Video Views', '[ Username Only ] INSTANT', 25, 100000, 106836.36363636, 104462.22222222, 10446.222222222, 'Aktif', 118, 'JAGOSOSMED', 'Sosial Media'),
(143, 143, 'Instagram Story Views', 'Instagram - Story Views S3 All Story Views Fast ', 'instan\njika ada masalah view tidak masuk\nkirimkan bukti ss nya yang ada tanggal dan waktu nya', 100, 40000, 3501.1363636364, 3423.3333333333, 342.33333333333, 'Aktif', 1271, 'JAGOSOSMED', 'Sosial Media'),
(144, 144, 'Instagram Story Views', 'Instagram - Story Views S4 All Story Views CHEAP', 'All Stories View\nkadang gk masuk full\ntidak ada kompline', 10, 1000000, 251.13636363636, 245.55555555556, 24.555555555556, 'Aktif', 2837, 'JAGOSOSMED', 'Sosial Media'),
(145, 145, 'Instagram Comments/komentar', 'Instagram 5 Comments random [ dari Akun dengan followers 10k + ]', 'instan\nmendapat 5 komentar', 1000, 1000, 44067.045454545, 43087.777777778, 4308.7777777778, 'Aktif', 1836, 'JAGOSOSMED', 'Sosial Media'),
(146, 146, 'Instagram Comments/komentar', 'Instagram 5 Comments random [ dari Akun dengan followers 1juta+ ] ', 'waktu mulai 0-24 jam\ndapat 5 komentar', 1000, 1000, 76700, 74995.555555556, 7499.5555555555, 'Aktif', 1841, 'JAGOSOSMED', 'Sosial Media'),
(147, 147, 'Instagram AUTO LIKE INDONESIA', 'Instagram Auto Likes Indonesia [MAX 1K] [DURASI 30 HARI] [MAX POST 150]  INSTANT', 'IJSRESSION + REACH + PROFILE VISIT\nTarget : Username akun Instagram\nPastikan Akun Instagram tidak private dan pembatasan usia\nCatatan : Setiap Anda upload postingan, maka Anda akan mendapatkan Likes Indonesia sesuai jumlah pesan selama 30 hari\nMaksimal 150 postingan per-bulan\nJika Auto Likes tidak bekerja dalam 24 jam maka bisa buat Tiket', 100, 1000, 1846590.9090909, 1805555.5555556, 180555.55555556, 'Aktif', 2815, 'JAGOSOSMED', 'Sosial Media'),
(148, 148, 'Instagram AUTO LIKE INDONESIA', 'Instagram Auto Likes Indonesia [MAX 1K] [DURASI 30 HARI] [MAX POST 30]  INSTANT', 'IJSRESSION + REACH + PROFILE VISIT\nTarget : Username akun Instagram\nPastikan Akun Instagram tidak private dan pembatasan usia\nCatatan : Setiap Anda upload postingan, maka Anda akan mendapatkan Likes Indonesia sesuai jumlah pesan selama 30 hari\nMaksimal 30 postingan per-bulan\nJika Auto Likes tidak bekerja dalam 24 jam maka bisa buat Tiket', 100, 1000, 295454.54545455, 288888.88888889, 28888.888888889, 'Aktif', 2814, 'JAGOSOSMED', 'Sosial Media'),
(149, 149, 'Instagram VERIFIED ', 'Instagram Comments [CUSTOM] VERIFIED/CENTANG BIRU DONE 24 JAM', 'jika dalam seminggu belum masuk\nsilahkan ke tiket', 1, 13, 31777613.636364, 31071444.444444, 3107144.4444444, 'Aktif', 2158, 'JAGOSOSMED', 'Sosial Media'),
(150, 150, 'Instagram Comments/komentar', 'Instagram Comments Costum [ dari Akun dengan followers 10k + ]', 'lebih fast dari id layanan 1837\n', 1, 10, 15922931.818182, 15569088.888889, 1556908.8888889, 'Aktif', 1838, 'JAGOSOSMED', 'Sosial Media'),
(151, 151, 'Instagram Comments/komentar', 'Instagram Comments Costum [ dari Akun dengan followers 15k + ] ', 'Proses slow\nwaktu mulai 0-48jam', 1, 30, 4050386.3636364, 3960377.7777778, 396037.77777778, 'Aktif', 1837, 'JAGOSOSMED', 'Sosial Media'),
(152, 152, 'Instagram Comments/komentar', 'Instagram Custom Comments  [ 20k/days ] [No Drop]', 'No Drop\n20k/days', 10, 50000, 20519.318181818, 20063.333333333, 2006.3333333333, 'Aktif', 2631, 'JAGOSOSMED', 'Sosial Media'),
(153, 153, 'Instagram Comments/komentar Indonesia', 'Instagram Custom Comments Indonesia Instan 2', 'fast', 2, 3000, 1329545.4545455, 1300000, 130000, 'Aktif', 1915, 'JAGOSOSMED', 'Sosial Media'),
(154, 154, 'Instagram Comments/komentar', 'Instagram Custom Comments S1 [Instant] ', 'Instan\nTidak Ada Penggantian jika pengguna menghapus komentar\nKecepatan Super Cepat', 10, 10000, 12409.090909091, 12133.333333333, 1213.3333333333, 'Aktif', 3432, 'JAGOSOSMED', 'Sosial Media'),
(155, 155, 'Instagram VERIFIED ', 'Instagram Followers [2 Follower] VERIFIED/CENTANG BIRU ', 'mendapatkan 2 followers yang verified/centang biru\nproses bisa 3-7 hari\nbahkan mungkin bisa sebulan\ntolong bersabar', 1000, 1000, 41186.363636364, 40271.111111111, 4027.1111111111, 'Aktif', 2156, 'JAGOSOSMED', 'Sosial Media'),
(156, 156, 'Instagram Followers Indonesia', 'Instagram Followers Indonesia JS2 [REFILL 10 HARI] ', 'bisa refill jika drop 40% lebih\nkalo hanya drop 20% tidak berlaku refill', 10, 2000, 56136.363636364, 54888.888888889, 5488.8888888889, 'Aktif', 3121, 'JAGOSOSMED', 'Sosial Media'),
(157, 157, 'Instagram Followers Indonesia', 'Instagram Followers Indonesia JS3 [REFILL 15 HARI] ', 'bisa refill jika drop 40% lebih\nkalo hanya drop 20% tidak berlaku refill', 100, 10000, 66477.272727273, 65000, 6500, 'Aktif', 3122, 'JAGOSOSMED', 'Sosial Media'),
(158, 158, 'Instagram Followers Indonesia', 'Instagram Followers Indonesia JS4 [REFILL 30 HARI] ', 'refill 30 days\nhanya bisa refill jika drop diatas 50%\nproses 1x24 jam\nmax proses 2x24 jam', 10, 250000, 54659.090909091, 53444.444444444, 5344.4444444444, 'Aktif', 3145, 'JAGOSOSMED', 'Sosial Media'),
(159, 159, 'Instagram Followers Indonesia', 'Instagram Followers Indonesia JS5 [ max 500 - REAL AKTIF ] [ REFILL 2 DAYS ]✨ ', 'REAL AKTIF\nDROP diatas 50?ru bisa refill', 100, 500, 44318.181818182, 43333.333333333, 4333.3333333333, 'Aktif', 3183, 'JAGOSOSMED', 'Sosial Media'),
(160, 160, 'Instagram Followers Indonesia', 'Instagram Followers Indonesia JS6 [ max 4K - REAL MIX ] [ REFILL 2 DAYS ]✨ ', 'REAL INDO 50%\nINDIA 50%', 100, 4000, 35454.545454545, 34666.666666667, 3466.6666666667, 'Aktif', 3184, 'JAGOSOSMED', 'Sosial Media'),
(161, 161, 'Instagram Followers Indonesia', 'Instagram Followers Indonesia S12 [ REAL AKTIF ][ 2K ] Refill 7 days ', 'proses 1x24 jam\nreal aktif\n\nRefill 7 days \nhanya bisa 2x refill tapi ada cooldown 2 hari\nsyaratnya\n- foll dibawah start order/jumlah awal gak bisa refill.\n- user private gak bisa refill\n- orderan belum ada 24 jam belum bisa refill', 100, 1000, 51704.545454545, 50555.555555556, 5055.5555555556, 'Aktif', 2135, 'JAGOSOSMED', 'Sosial Media'),
(162, 162, 'Instagram Followers Indonesia', 'Instagram Followers Indonesia S15 [ 5K ] BONUS++', 'jika dapat bonus alhamdulillah\njika tidak jangan kompline\nproses 3-7 hari\nBOT INDO', 200, 10000, 16250, 15888.888888889, 1588.8888888889, 'Aktif', 2226, 'JAGOSOSMED', 'Sosial Media'),
(163, 163, 'Instagram Followers Indonesia', 'Instagram Followers Indonesia S19 [ max 1K murah real ] Refill 3days', 'BONUS 15-20%\nREAL', 100, 1000, 41363.636363636, 40444.444444444, 4044.4444444444, 'Aktif', 2294, 'JAGOSOSMED', 'Sosial Media'),
(164, 164, 'Instagram Followers Indonesia', 'Instagram Followers Indonesia S22 [ REAL AKTIF ] [ 20K ] [ REFILL 7 DAYS ]', 'Real Indonesia\nNo refund\nProses max 1x24 jam\n\nSebelum anda membeli:\n- Pastikan username / link data yang di input benar dan valid,\n- Jangan input data yang sama dengan orderan sebelum nya apabila orderan sebelum nya belum Completed,\n- Apabila orderan tidak mengalami perubahan status, silahkan buat sebuah tiket bantuan baru untuk di tangani,\n- Tidak ada pengembalian dana untuk kesalahan pengguna.', 50, 2000, 26590.909090909, 26000, 2600, 'Aktif', 2474, 'JAGOSOSMED', 'Sosial Media'),
(165, 165, 'Instagram Followers Indonesia', 'Instagram Followers Indonesia S27 [ max 1k ] [ REFILL 3 DAYS ]✨ ', 'min 100\nmax 1.000\nrefill 3 days\nhanya bisa refill jika drop diatas 50%\nproses 1x24 jam\nmax proses 2x24 jam', 100, 1000, 48750, 47666.666666667, 4766.6666666667, 'Aktif', 2676, 'JAGOSOSMED', 'Sosial Media'),
(166, 166, 'Instagram Followers Indonesia', 'Instagram Followers Indonesia S28 [ NO Refill ] [ max db 1k ] Real ', 'Real \nJangan order lagi kalo udah pernah pesan 1k!\nno refund', 100, 1000, 28068.181818182, 27444.444444444, 2744.4444444444, 'Aktif', 2852, 'JAGOSOSMED', 'Sosial Media'),
(167, 167, 'Instagram Followers Indonesia', 'Instagram Followers Indonesia S29 [ NO DROP ]', 'perhari 300-500\nproses 3-10 hari\nlapor jika drop!', 500, 1000, 69431.818181818, 67888.888888889, 6788.8888888889, 'Aktif', 2936, 'JAGOSOSMED', 'Sosial Media'),
(168, 168, 'Instagram Followers Indonesia', 'Instagram Followers Indonesia Server 2 [REFILL 30 HARI]', 'MIX ada akun luar\njika dalam 30 hari drop rate lebih dari 40% itu Bisa refill\nRefill hanya bisa sekali\ndrop di bawah 40% gk bisa di refill', 100, 100000, 81250, 79444.444444444, 7944.4444444444, 'Aktif', 1208, 'JAGOSOSMED', 'Sosial Media'),
(169, 169, 'Instagram Followers  Bergaransi 180 Hari - Lifetim', 'Instagram Followers JS 10 [ Refill 365 Days ] [ Cheap ] [ 30k/day ]♻️', 'Start: 0-6 Hours\n\n- Periksa format tautan dengan cermat sebelum melakukan pemesanan.\n- Pastikan akun Anda bersifat publik, bukan pribadi.\n- Saat layanan sibuk/overload, kecepatan awal operasi berubah.\n- Jangan melakukan pemesanan kedua di tautan yang sama sebelum pesanan Anda sukses di sistem.', 10, 1000000, 7238.6363636364, 7077.7777777778, 707.77777777778, 'Aktif', 3436, 'JAGOSOSMED', 'Sosial Media');
INSERT INTO `layanan_sosmed` (`id`, `service_id`, `kategori`, `layanan`, `catatan`, `min`, `max`, `harga`, `harga_api`, `profit`, `status`, `provider_id`, `provider`, `tipe`) VALUES
(170, 170, 'Instagram Followers  Bergaransi 180 Hari - Lifetim', 'Instagram Followers JS 11 [ Refill 365 Days ] [ Cheapest ] [ 30k/day ]♻️', 'Delivery Time: 0-45 Minutes\n365 Days Refill\nReal - Bot', 100, 500000, 6130.6818181818, 5994.4444444444, 599.44444444444, 'Aktif', 3528, 'JAGOSOSMED', 'Sosial Media'),
(171, 171, 'Instagram Followers  Bergaransi 180 Hari - Lifetim', 'Instagram Followers JS 12 [ Refill 365 Days ] [ Premium Quality ] [ 100K/day ]♻️', 'Instagram Followers |\nPremium Quality |\nLifeTime Guarantee |\n100K/Day ( Refill Button ON Work Life Time)', 50, 10000000, 10488.636363636, 10255.555555556, 1025.5555555556, 'Aktif', 3566, 'JAGOSOSMED', 'Sosial Media'),
(172, 172, 'Instagram Followers  Bergaransi 180 Hari - Lifetim', 'Instagram Followers JS 13 [ Lifetime Refill | Speed: 30K/Day ] [ LESS DROP ]♻️ ', 'Start: 0-15min\nSpeed: 60K/Day\nLifetime Refill/Drop 15%', 10, 1000000, 5022.7272727273, 4911.1111111111, 491.11111111111, 'Aktif', 3623, 'JAGOSOSMED', 'Sosial Media'),
(173, 173, 'Instagram Followers  Bergaransi 180 Hari - Lifetim', 'Instagram Followers JS 2 [ Refill 365D ] [ Max 1M ] [ REAL ] Non Drop', '50k/days\nyg follow akun lama bukan akun baru\nSangat minim drop, jika drop kemungkinan update ig', 50, 1000000, 9750, 9533.3333333333, 953.33333333333, 'Aktif', 2760, 'JAGOSOSMED', 'Sosial Media'),
(174, 174, 'Instagram Followers  Bergaransi 180 Hari - Lifetim', 'Instagram Followers JS 3 [ Refill 365D ] [ Max 1M ] [ 10% interaction ] [ HQ ] ♻️', 'Days 50K\nbutton refill 30days di riwayat order\nkemungkinan besar ada 10% interaction diakunmu\nSangat minim drop, jika drop kemungkinan update ig\nHQ\n\nkemungkinan order 1000 mendapat hanya 900 followers\nanda bisa minta refill setelah 24 jam pesanan sukses', 50, 1000000, 11227.272727273, 10977.777777778, 1097.7777777778, 'Aktif', 2761, 'JAGOSOSMED', 'Sosial Media'),
(175, 175, 'Instagram Followers  No Refill ', 'Instagram Followers JS 31 [ LESS DROP | DROP 10-20% ] ', '1k in 1 minutes\n80% real\nKemungkinan drop 10-20% jika anda memesan 1000+\n', 100, 5000, 40772.727272727, 39866.666666667, 3986.6666666667, 'Aktif', 1500, 'JAGOSOSMED', 'Sosial Media'),
(176, 176, 'Instagram Followers  Bergaransi 180 Hari - Lifetim', 'Instagram Followers JS 4 [ Refill 365D ] [ Max 1M ] [ Speed: 20K/Day ]♻️', 'Refill Button\nMax 1M\nRefill 365D\nSpeed: 20K/Day', 20, 1000000, 9011.3636363636, 8811.1111111111, 881.11111111111, 'Aktif', 3373, 'JAGOSOSMED', 'Sosial Media'),
(177, 177, 'Instagram Followers  No Refill ', 'Instagram Followers JS 4 EKLUSIVE [ REAL HQ ] LESS DROP ', 'INSTANT\ndrop maksimal 5-15% saja\n1k-3k/day\nmax pesan saya buat 5.000 jika sudah sukses status, bisa order lagi\nmax per akun bisa isi sampai 20ribu followers\n\nBisa minta refill jika drop diatas 20%\ntetapi refill ini sifatnya random\nbisa refill bisa tidak\nlayanan tetap no refill!\njadi jika suatu saat drop gk bisa refill jangan banyak kompline', 100, 5000, 15319.318181818, 14978.888888889, 1497.8888888889, 'Aktif', 2415, 'JAGOSOSMED', 'Sosial Media'),
(178, 178, 'Instagram Followers  Bergaransi 180 Hari - Lifetim', 'Instagram Followers JS 5 [ Refill 180days ] [ 30k-40k/day ]', 'Non-Drop jika tidak ada update atau gangguan \n( jika drop no kompline, request refill aja jika masih ada masa garansi)\nRefill 180days\n30k-40k/day', 10, 1000000, 13000, 12711.111111111, 1271.1111111111, 'Aktif', 3383, 'JAGOSOSMED', 'Sosial Media'),
(179, 179, 'Instagram Followers  Bergaransi 180 Hari - Lifetim', 'Instagram Followers JS 6 [ Refill 365 days ] [ Old Accounts ] [ 30k-40k/day ]♻️', 'Old Accounts\nRefill: 365 Days/Drop 15%\nSpeed: 60K/Day', 20, 500000, 8863.6363636364, 8666.6666666667, 866.66666666667, 'Aktif', 3389, 'JAGOSOSMED', 'Sosial Media'),
(180, 180, 'Instagram Followers  Bergaransi 180 Hari - Lifetim', 'Instagram Followers JS 7 [ Refill 365 days ] [ Real - Bot ] [ 30k-50k/day ]♻️', 'Delivery Time: 0-30 Minutes\n Completion Time: 12-24 Hours', 20, 1000000, 8125, 7944.4444444444, 794.44444444444, 'Aktif', 3403, 'JAGOSOSMED', 'Sosial Media'),
(181, 181, 'Instagram Followers  Bergaransi 180 Hari - Lifetim', 'Instagram Followers JS 8 [ Lifetime Refill ] [ High quality ] [ 150k+/day ]♻️', 'Fast start\nKecepatan saat ini: ~854-2145/jam\nLayanan eksklusif\nKualitas tinggi\nLifetime refill 90 days button\n- Semua profil dengan avatar dan postingan\n- [ 10% Rusia 50% Asia 30% Eropa 10% [ USA UEA ]\n- Boleh pesan lagi', 10, 500000, 11079.545454545, 10833.333333333, 1083.3333333333, 'Aktif', 3417, 'JAGOSOSMED', 'Sosial Media'),
(182, 182, 'Instagram Followers  Bergaransi 180 Hari - Lifetim', 'Instagram Followers JS 9 [ Refill 365 Days Button ] [ High quality ] [ 150k+/day ]♻️', 'Fast start\nKecepatan saat ini: ~854-2145/jam\nLayanan eksklusif\nKualitas tinggi\nLifetime refill 90 days button\n- Semua profil dengan avatar dan postingan\n- [ 10% Rusia 50% Asia 30% Eropa 10% [ USA UEA ]\n- Boleh pesan lagi', 10, 500000, 11670.454545455, 11411.111111111, 1141.1111111111, 'Aktif', 3434, 'JAGOSOSMED', 'Sosial Media'),
(183, 183, '- ? Promo 01 Oktober 2023 ?-', 'Instagram Followers PROMO 1 [ No Refill ] [ Fast, TERMURAH, High Drop] ', 'drop 10 - 100%\nbisa partial\nno kompline\n\nDilarang kompline dalam hal apapun\nlayanan promo\norder = berani ambil resiko', 10, 3000, 1034.0909090909, 1011.1111111111, 101.11111111111, 'Aktif', 1385, 'JAGOSOSMED', 'Sosial Media'),
(184, 184, 'Instagram Followers  Bergaransi 60 Hari - 99 Hari ', 'Instagram Followers Refill S15 [ Refill 99 Days ] ♻️', '1K-2K/day', 10, 500000, 37242.045454545, 36414.444444444, 3641.4444444444, 'Aktif', 1833, 'JAGOSOSMED', 'Sosial Media'),
(185, 185, 'Instagram Followers Bergaransi', 'Instagram Followers Refill S16 [ Refill 30Days ] [ REAL HQ ]', 'instan\nwaktu mulai 0-6 jam\n', 10, 20000, 36577.272727273, 35764.444444444, 3576.4444444444, 'Aktif', 1851, 'JAGOSOSMED', 'Sosial Media'),
(186, 186, 'Instagram Followers  Bergaransi 60 Hari - 99 Hari ', 'Instagram Followers Refill S18 [ Refill 60Day ] INSTANT ', 'High Quality\n1k - 2k Per Day Speed\nLow Drop\n', 20, 100000, 43550, 42582.222222222, 4258.2222222222, 'Aktif', 1886, 'JAGOSOSMED', 'Sosial Media'),
(187, 187, 'Instagram Followers Bergaransi', 'Instagram Followers Refill S2 [ Refill 30Day ] LessDrop♻️', 'kemungkinan drop 5-15% ( tapi gk jami 100% )\nHigh-Quality\n', 50, 100000, 47686.363636364, 46626.666666667, 4662.6666666667, 'Aktif', 1666, 'JAGOSOSMED', 'Sosial Media'),
(188, 188, 'Instagram Followers Bergaransi', 'Instagram Followers Refill S21 [ AUTO refill 30D ][ HQ ]', '- High-Quality Instagram followers\n- Followers Unfollow 5%\n- Speed 2k-5k per days', 10, 5000, 23592.045454545, 23067.777777778, 2306.7777777778, 'Aktif', 1892, 'JAGOSOSMED', 'Sosial Media'),
(189, 189, 'Instagram Followers Bergaransi', 'Instagram Followers Refill S22 [ AUTO refill 30D ]⭐⭐', '30 days guarantee\nauto refill\n1-3k/day', 10, 100000, 18776.136363636, 18358.888888889, 1835.8888888889, 'Aktif', 1914, 'JAGOSOSMED', 'Sosial Media'),
(190, 190, 'Instagram Followers  Bergaransi 180 Hari - Lifetim', 'Instagram Followers Refill S23 [ refill button 180D ]♻️', 'proses refill 2-3hari\n', 100, 500000, 20607.954545455, 20150, 2015, 'Aktif', 1923, 'JAGOSOSMED', 'Sosial Media'),
(191, 191, 'Instagram Followers Bergaransi', 'Instagram Followers Refill S25 [ AUTO REFILL 30Days ] HQ', 'hanya bisa refill jika yg turun dari kami\nAuto Refill\nInstan', 20, 100000, 17461.363636364, 17073.333333333, 1707.3333333333, 'Aktif', 1928, 'JAGOSOSMED', 'Sosial Media'),
(192, 192, 'Instagram Followers Bergaransi', 'Instagram Followers Refill S25 [ NON DROP ] real followers ♻️', 'NON-drop\n30 days refill\nKualitas Bagus', 1000, 100000, 36075, 35273.333333333, 3527.3333333333, 'Aktif', 1927, 'JAGOSOSMED', 'Sosial Media'),
(193, 193, 'Instagram Followers Bergaransi', 'Instagram Followers Refill S26 [ AUTO REFILL 30Days ] MAX 30k', 'Instant\n30 days auto refill\nSpeed 5k/D', 50, 30000, 21804.545454545, 21320, 2132, 'Aktif', 1933, 'JAGOSOSMED', 'Sosial Media'),
(194, 194, 'Instagram Followers  Bergaransi 60 Hari - 99 Hari ', 'Instagram Followers Refill S27 [ REFILL 90Days ] Nodrop♻️', 'High quality followers\nDrop Sekitar: 2-3%\nKecepatan 20-30K/day', 100, 500000, 20962.5, 20496.666666667, 2049.6666666667, 'Aktif', 1979, 'JAGOSOSMED', 'Sosial Media'),
(195, 195, 'Instagram Followers Bergaransi', 'Instagram Followers Refill S29 [ Refill 30 Days ] cheapeast ', '- Guarantee: 30 days Refill\n- Instant Start\n- Refill button', 50, 10000, 11877.272727273, 11613.333333333, 1161.3333333333, 'Aktif', 2019, 'JAGOSOSMED', 'Sosial Media'),
(196, 196, 'Instagram Followers Bergaransi', 'Instagram Followers Refill S3 [ Refill 30Day ] [ Real Recommended  ]', 'sekitar 70%-80% real user\nSpeed 1k Per Day\n', 100, 100000, 19721.590909091, 19283.333333333, 1928.3333333333, 'Aktif', 1667, 'JAGOSOSMED', 'Sosial Media'),
(197, 197, 'Instagram Followers Bergaransi', 'Instagram Followers Refill S30 [ Refill 45D ] less - no drop', 'fast\nkemungkinan 0-10% drop\nkualitas bagus', 20, 200000, 21125, 20655.555555556, 2065.5555555556, 'Aktif', 2025, 'JAGOSOSMED', 'Sosial Media'),
(198, 198, 'Instagram Followers Bergaransi', 'Instagram Followers Refill S31 [ Refill button 10D ] 3k/days ♻️', 'HQ\nwaktu mulai 0-24 jam', 50, 10000, 16634.090909091, 16264.444444444, 1626.4444444444, 'Aktif', 2054, 'JAGOSOSMED', 'Sosial Media'),
(199, 199, 'Instagram Followers  Bergaransi 60 Hari - 99 Hari ', 'Instagram Followers Refill S32 [ Refill 99days ] FAST HQ', 'Drop sekitar 0-10%\nkualitas bagus\nNON DROP\nrefill 99 days', 20, 200000, 21701.136363636, 21218.888888889, 2121.8888888889, 'Aktif', 2055, 'JAGOSOSMED', 'Sosial Media'),
(200, 200, 'Instagram Followers Bergaransi', 'Instagram Followers Refill S35 [ refill 7days ]  cheap ', 'Instant start\ntidak ada reffund\nhanya refill jika drop\njangan berharap lebih sama layanan murah', 10, 30000, 17372.727272727, 16986.666666667, 1698.6666666667, 'Aktif', 2142, 'JAGOSOSMED', 'Sosial Media'),
(201, 201, 'Instagram Followers Bergaransi', 'Instagram Followers Refill S36 [ refill 30days ] [ cheap & less drop ] ♻️', '0-10% drop\nReal Mixed\nSpeed 10Kday', 50, 200000, 13901.136363636, 13592.222222222, 1359.2222222222, 'Aktif', 2143, 'JAGOSOSMED', 'Sosial Media'),
(202, 202, 'Instagram Followers Bergaransi', 'Instagram Followers Refill S37 [ refill 30days ] [ cheap ] ', '0 - 10 mins', 10, 50000, 15230.681818182, 14892.222222222, 1489.2222222222, 'Aktif', 2161, 'JAGOSOSMED', 'Sosial Media'),
(203, 203, 'Instagram Followers  Bergaransi 60 Hari - 99 Hari ', 'Instagram Followers Refill S38 [ refill 99 hari ] [ Best seller ] ', 'Garansi 99 hari\nhanya refill kalo yg drop dari layanan kami\nrefill habis jika layanan tidak tersedia lagi', 10, 1000000, 14861.363636364, 14531.111111111, 1453.1111111111, 'Aktif', 2211, 'JAGOSOSMED', 'Sosial Media'),
(204, 204, 'Instagram Followers  Bergaransi 60 Hari - 99 Hari ', 'Instagram Followers Refill S79 [ Autorefill 45 days  ] [ R99days ] Best Quality', '30-50k/day\n5-10% drop maximum\nBest Quality\ndrop diatas 10% akan auto refill dalam 45days\nusahakan username gk panjang banget, karna buat delay masuknya', 100, 1000000, 16973.863636364, 16596.666666667, 1659.6666666667, 'Aktif', 2943, 'JAGOSOSMED', 'Sosial Media'),
(205, 205, 'Instagram Followers Bergaransi', 'Instagram Followers Refill S8 [ Refill 30D] [ max 5k ] HQ FAST', 'DROP KEMUNGKINAN Hanya 10%\nmulai 0-1jam', 10, 500000, 22617.045454545, 22114.444444444, 2211.4444444444, 'Aktif', 1761, 'JAGOSOSMED', 'Sosial Media'),
(206, 206, 'Instagram Followers  No Refill ', 'Instagram Followers S15 [ LESS DROP ] [ REAL ] ', '75% real\nno garansi', 20, 5000, 12586.363636364, 12306.666666667, 1230.6666666667, 'Aktif', 1843, 'JAGOSOSMED', 'Sosial Media'),
(207, 207, 'Instagram Followers  No Refill ', 'Instagram Followers S16 [ 10K ] [ REAL ] ', 'START TIME 0-1H\n5K/DAY\nno garansi', 20, 10000, 21775, 21291.111111111, 2129.1111111111, 'Aktif', 1844, 'JAGOSOSMED', 'Sosial Media'),
(208, 208, 'Instagram Followers  No Refill ', 'Instagram Followers Server 10 [ No Refill ] [ Fast ] BOT CHEAP', 'fast', 10, 10000, 3190.9090909091, 3120, 312, 'Aktif', 2043, 'JAGOSOSMED', 'Sosial Media'),
(209, 209, 'Instagram Followers  No Refill ', 'Instagram Followers Server 11 [ No Refill ] [ mix real ] ', 'drop kemungkinan 10-20% untuk saat ini\nprofil ada story nya', 20, 10000, 6854.5454545455, 6702.2222222222, 670.22222222222, 'Aktif', 2075, 'JAGOSOSMED', 'Sosial Media'),
(210, 210, 'Instagram Followers  No Refill ', 'Instagram Followers Server 13 [ cheap ] ', 'INSTANT START\nBOT PROFILE\nBIG DROPS\nNO REFILL', 10, 15000, 3013.6363636364, 2946.6666666667, 294.66666666667, 'Aktif', 2116, 'JAGOSOSMED', 'Sosial Media'),
(211, 211, 'Instagram Followers  No Refill ', 'Instagram Followers Server 17 [ NEW ] [ no refill BOT ] ', 'NO Refill', 100, 10000, 3102.2727272727, 3033.3333333333, 303.33333333333, 'Aktif', 2160, 'JAGOSOSMED', 'Sosial Media'),
(212, 212, 'Instagram Followers  No Refill ', 'Instagram Followers Server 2 [ No Refill] [ BOT ] ', 'INSTANT\nkadang sukses pesanan tidak full masuj\nno kompline', 10, 10000, 4284.0909090909, 4188.8888888889, 418.88888888889, 'Aktif', 1848, 'JAGOSOSMED', 'Sosial Media'),
(213, 213, 'Instagram Followers  No Refill ', 'Instagram Followers Server 21 [ NEW ] MURAH! ', 'MURAH\nProses lama!', 20, 5000, 1447.7272727273, 1415.5555555556, 141.55555555556, 'Aktif', 2374, 'JAGOSOSMED', 'Sosial Media'),
(214, 214, 'Instagram Followers  No Refill ', 'Instagram Followers Server 26 [ Working ] [ 20K/Day - no refill ] Max: 2M', 'Max: 2M', 100, 2000000, 9336.3636363636, 9128.8888888889, 912.88888888889, 'Aktif', 3275, 'JAGOSOSMED', 'Sosial Media'),
(215, 215, 'Instagram Followers  No Refill ', 'Instagram Followers Server 27 [ Working ] [ 10K/Day - no refill ] MURAH', '10K/Day\nInstant', 10, 200000, 2659.0909090909, 2600, 260, 'Aktif', 3387, 'JAGOSOSMED', 'Sosial Media'),
(216, 216, 'Instagram Followers  No Refill ', 'Instagram Followers Server 28 [ Max 15k ] [ 1k-5k/days ] MURAH ', '5k/days \nNO REFILL', 10, 15000, 1625, 1588.8888888889, 158.88888888889, 'Aktif', 3532, 'JAGOSOSMED', 'Sosial Media'),
(217, 217, 'Instagram Followers  No Refill ', 'Instagram Followers Server 29 [ Max 3K ]  MURAH ', 'NO GARANSI\nNO REFILL', 10, 3000, 1174.4318181818, 1148.3333333333, 114.83333333333, 'Aktif', 3533, 'JAGOSOSMED', 'Sosial Media'),
(218, 218, 'Instagram Followers Bergaransi', 'Instagram Followers Server 3 less Drop [ Refill 30days ] ', 'Accounts with Avatars and Posts.\nAuto-Refill up to 100% within a month. |\nCancel Button Enable\n\nCurrent speed: 26,890 per hour.\nDrop Ratio is: ~14%\n\nMost Affordable Price in Market\nOur Aim is to Give Best Quality to Our ALL Customer in Lowest Rate', 10, 50000, 16456.818181818, 16091.111111111, 1609.1111111111, 'Aktif', 2254, 'JAGOSOSMED', 'Sosial Media'),
(219, 219, 'Instagram Followers  Bergaransi 180 Hari - Lifetim', 'Instagram Followers Server 38 [ 365 days Refill ] [ Max 1M ] [ REAL ] ', '60k/days\n365 days Refill', 50, 1000000, 14728.409090909, 14401.111111111, 1440.1111111111, 'Aktif', 3136, 'JAGOSOSMED', 'Sosial Media'),
(220, 220, 'Instagram Followers  Bergaransi 180 Hari - Lifetim', 'Instagram Followers Server 39 [ AR 365 + Lifetime ] [ Working  after update ] [ Old Accounts with Posts ]   [ 30k-50k/day ]  [ Non Drop ]  [ New Recommended ]', 'AR 365 + Lifetime\nWorking  after update\nOld Accounts with Posts\n30k-50k/day\nNon Drop Special\nNew Recommended', 10, 500000, 19765.909090909, 19326.666666667, 1932.6666666667, 'Aktif', 3267, 'JAGOSOSMED', 'Sosial Media'),
(221, 221, 'Instagram Followers Bergaransi', 'Instagram Followers Server 4 LessDrop [ Refill 30D ] [ 1-5k/days]', 'waktu mulai 0-1jam\n1k-5k/day\nLess Drop', 50, 100000, 9690.9090909091, 9475.5555555556, 947.55555555555, 'Aktif', 2306, 'JAGOSOSMED', 'Sosial Media'),
(222, 222, 'Instagram Followers  Bergaransi 60 Hari - 99 Hari ', 'Instagram Followers Server 40  [ R90 ] [ Working  after update ] [ Old Accounts with Posts ]   [ 30k-50k/day ]  [ Non Drop Special ]  [ New ]', 'R90\nWorking  after update\nOld Accounts with Posts\n30k-50k/day\nNon Drop Special\nNew', 10, 500000, 10175.454545455, 9949.3333333333, 994.93333333333, 'Aktif', 3268, 'JAGOSOSMED', 'Sosial Media'),
(223, 223, 'Instagram Followers  Bergaransi 180 Hari - Lifetim', 'Instagram Followers Server 40 [ 365 Days Refill button ] [ High Quality ] [ 10k-30k/day ] ', 'Speed: 30k per day\nStart time: 1-24 jam\nDrop rate: 5%\nGuarantee: 365 days refill', 100, 500000, 17372.727272727, 16986.666666667, 1698.6666666667, 'Aktif', 3273, 'JAGOSOSMED', 'Sosial Media'),
(224, 224, 'Instagram Followers  Bergaransi 60 Hari - 99 Hari ', 'Instagram Followers Server 41 [ Real Looking ] [ Refill: 60 Days ] [ 100K/Day ]', '100K/Day', 10, 300000, 10207.954545455, 9981.1111111111, 998.11111111111, 'Aktif', 3274, 'JAGOSOSMED', 'Sosial Media'),
(225, 225, 'Instagram Followers Bergaransi', 'Instagram Followers Server 5 LessDrop [ Refill 30D ] [ 10-15K/Day] ', 'Start Time: 0-1 Hour', 10, 100000, 12660.227272727, 12378.888888889, 1237.8888888889, 'Aktif', 2702, 'JAGOSOSMED', 'Sosial Media'),
(226, 226, 'Instagram Followers Bergaransi', 'Instagram Followers Server 6  [ Refill 30D ] [ FAST ] [ Real Engaging Followers ]', '10k/d', 10, 50000, 14536.363636364, 14213.333333333, 1421.3333333333, 'Aktif', 2749, 'JAGOSOSMED', 'Sosial Media'),
(227, 227, 'Instagram Followers  Bergaransi 180 Hari - Lifetim', 'Instagram Followers Server 6 HQ [ Refill 365days ] [ Fast ] ', 'Fast \nRefill 365days', 10, 1000000, 19219.318181818, 18792.222222222, 1879.2222222222, 'Aktif', 2338, 'JAGOSOSMED', 'Sosial Media'),
(228, 228, 'Instagram Followers  No Refill ', 'Instagram Followers Server 7 [ fastest - BOT ] ', 'Bot Quality', 10, 30000, 7918.1818181818, 7742.2222222222, 774.22222222222, 'Aktif', 1645, 'JAGOSOSMED', 'Sosial Media'),
(229, 229, 'Instagram Followers  No Refill ', 'Instagram Followers Server 7 [ Real ] [ Fast ] Recomended', 'Real\nInstan', 50, 20000, 11286.363636364, 11035.555555556, 1103.5555555556, 'Aktif', 1970, 'JAGOSOSMED', 'Sosial Media'),
(230, 230, 'Instagram Followers Bergaransi', 'Instagram Followers Server 7 [ Refill 15days] [ HQ ] ', '0-3h Start\nReal Mixed\n2-5k/day\n10-20% drop', 20, 50000, 3796.5909090909, 3712.2222222222, 371.22222222222, 'Aktif', 2756, 'JAGOSOSMED', 'Sosial Media'),
(231, 231, 'Instagram Followers  Bergaransi 60 Hari - 99 Hari ', 'Instagram Followers Server 7 [ Refill 99days ] [ 30-50k/day]', '99 Days Refill\n30-50k/day\nRefill button enabled', 10, 5000000, 18037.5, 17636.666666667, 1763.6666666667, 'Aktif', 2339, 'JAGOSOSMED', 'Sosial Media'),
(232, 232, 'Instagram Followers  Bergaransi 180 Hari - Lifetim', 'Instagram Followers Server 8 [ Refill 180days ] [ 30-50k/day] ( Recommended Service )', 'Speed 50K/day\nHQ Followers\nRefill: 180 Days ( Auto-Refill is Enable for 30 Days )\nDrop Ratio Below 0.5%', 10, 1000000, 16013.636363636, 15657.777777778, 1565.7777777778, 'Aktif', 2340, 'JAGOSOSMED', 'Sosial Media'),
(233, 233, 'Instagram Followers Bergaransi', 'Instagram Followers Server 8 [ Refill 30D ] [ 10k/day ] ', 'drop bisa 20--50%\nwaktu mulai 0-3 jam', 10, 15000, 9262.5, 9056.6666666667, 905.66666666667, 'Aktif', 2824, 'JAGOSOSMED', 'Sosial Media'),
(234, 234, 'Instagram Followers  No Refill ', 'Instagram Followers Server 9 [ No Refill ] [ Fast ] BOT ', 'waktu mulai 0-6 jam', 50, 10000, 3323.8636363636, 3250, 325, 'Aktif', 2021, 'JAGOSOSMED', 'Sosial Media'),
(235, 235, 'Instagram Followers  Updated  ', 'Instagram Followers UP1 [ Updated ] [ R365 ] [ 100% Real Mix ] [ Super fast ] [ Super - Premium ]', 'Fast start\nCurrent speed: ~2236-4236/hour\nExclusive service\nHigh quality\nDrops: ~2-4%\nGuarantee\n365 days Refill button\n- All profiles with avatars and posts\n- No drops\nEnter profile link', 10, 500000, 17727.272727273, 17333.333333333, 1733.3333333333, 'Aktif', 3277, 'JAGOSOSMED', 'Sosial Media'),
(236, 236, 'Instagram Followers  Updated  ', 'Instagram Followers UP2 [ Updated ] [ R60 ] [ 100% Real Mix ] [ Super fast ] [ Super - Premium ] ', 'Fast start\nCurrent speed: ~3739-6392/hour\nExclusive service\nHigh quality\nDrops: ~2-4%\nGuarantee\n60 days Refill button\n- All profiles with avatars and posts\n- No drops\nEnter profile link', 10, 500000, 14625, 14300, 1430, 'Aktif', 3278, 'JAGOSOSMED', 'Sosial Media'),
(237, 237, 'Instagram Followers  Updated  ', 'Instagram Followers UP3 [ Updated ] [ R365 ] [ 100K/Day ] [ Working -  real ]', '100K/Day', 10, 5000000, 13162.5, 12870, 1287, 'Aktif', 3279, 'JAGOSOSMED', 'Sosial Media'),
(238, 238, 'Instagram Story / Impressions / Saves / Profile Vi', 'Instagram Impressions [10M] [EXPLORE - HOME - LOCATION - PROFILE]', 'Impressions showing from ALL in the statistics (Explore, Home, Location ,Etc..)!\nInstant Start!\nFast Delivery!\nMinimum 100\nMaximum 10M', 100, 20000000, 1890.9090909091, 1848.8888888889, 184.88888888889, 'Aktif', 120, 'JAGOSOSMED', 'Sosial Media'),
(239, 239, 'Instagram Story / Impressions / Saves / Profile Vi', 'Instagram Impressions [1M]', 'Real\nInstant Delivery!\nMinimum 100', 100, 1000000, 2275, 2224.4444444444, 222.44444444444, 'Aktif', 121, 'JAGOSOSMED', 'Sosial Media'),
(240, 240, 'Instagram Story / Impressions / Saves / Profile Vi', 'Instagram Impressions + Reach + Profile Visit Server 3 [ R30days ]', 'If you order 1k, user will get around 1k impression+ 1k reach +1k profile visit\n50k/day', 100, 1000000, 871.59090909091, 852.22222222222, 85.222222222222, 'Aktif', 2949, 'JAGOSOSMED', 'Sosial Media'),
(241, 241, 'Instagram Story / Impressions / Saves / Profile Vi', 'Instagram Impressions Server 1 MURAH CEPAT', 'Instant\nFrom hashtags , Home , Profile & Other\nSuper Fast Delivery', 100, 5000000, 989.77272727273, 967.77777777778, 96.777777777778, 'Aktif', 2300, 'JAGOSOSMED', 'Sosial Media'),
(242, 242, 'Instagram Story / Impressions / Saves / Profile Vi', 'Instagram Impressions Server 2 MURAH CEPAT REAL', 'REAL', 100, 10000, 1034.0909090909, 1011.1111111111, 101.11111111111, 'Aktif', 2948, 'JAGOSOSMED', 'Sosial Media'),
(243, 243, 'Instagram Comments/komentar Indonesia', 'Instagram Komentar Indonesia [From Verified Accounts] [1 KOMENTAR + BONUS LIKES] [CUSTOM] EXCLUSIVE', 'Anda akan mendapatkan 1 Komentar dari Akun Instagram yang telah Verified Akun indonesia (Centang Biru)', 1, 1, 22159090.909091, 21666666.666667, 2166666.6666667, 'Aktif', 3146, 'JAGOSOSMED', 'Sosial Media'),
(244, 244, 'Instagram Story / Impressions / Saves / Profile Vi', 'Instagram kunjungan profil / Profile Visit', 'Profile Visit', 100, 100000, 1314.7727272727, 1285.5555555556, 128.55555555556, 'Aktif', 1043, 'JAGOSOSMED', 'Sosial Media'),
(245, 245, 'Instagram Like Indonesia', 'Instagram Likes + Reels  Indonesia JS 7 [ MAX 5K ] [ real aktif ] FAST MURAH [ Refill 14 days ]', 'Drop kecil banget\nreal \nRefill 14 days \nhanya bisa 1x refill\nsyaratnya\n- like dibawah start order/jumlah awal gak bisa refill.\n- user private gak bisa refill\n- orderan belum ada 24 jam belum bisa refill\n\nmax db 3000', 75, 1000, 22159.090909091, 21666.666666667, 2166.6666666667, 'Aktif', 1760, 'JAGOSOSMED', 'Sosial Media'),
(246, 246, 'Instagram Like Indonesia', 'Instagram Likes Indonesia JS 10 [ MAX 1K ] BONUS++ [ NOT SUPPORT REEL ]', 'jika dapat bonus alhamdulillah\njika tidak jangan kompline\nproses 1-24 jam\njika blm 24 jam jangan kompline\nBOT INDO\n\ntidak bisa untuk reels', 100, 4000, 4727.2727272727, 4622.2222222222, 462.22222222222, 'Aktif', 2227, 'JAGOSOSMED', 'Sosial Media'),
(247, 247, 'Instagram Like Indonesia', 'Instagram Likes Indonesia JS 12 [ FAST ] [ REAL ACCOUNT ] [ REFILL 7 DAYS ] [ MAX 20K ]', 'Real Indonesia\nFAST\nProses max 1x24 jam', 50, 2000, 11818.181818182, 11555.555555556, 1155.5555555556, 'Aktif', 2555, 'JAGOSOSMED', 'Sosial Media'),
(248, 248, 'Instagram Like Indonesia', 'Instagram Likes Indonesia JS 14 [LANGSUNGMASUK] [5K] REAL ACCOUNT  [ Refill 3Days ] ', 'INSTAN MASUK\nBONUS JIKA HOKI', 100, 1000, 13295.454545455, 13000, 1300, 'Aktif', 3118, 'JAGOSOSMED', 'Sosial Media'),
(249, 249, 'Instagram Like Indonesia', 'Instagram Likes Indonesia JS 16 [ MAX 1K ] [ REAL 100% FRESH ]', 'MAX 1K\nREAL 100% FRESH', 100, 1000, 17727.272727273, 17333.333333333, 1733.3333333333, 'Aktif', 3201, 'JAGOSOSMED', 'Sosial Media'),
(250, 250, 'Instagram Like Indonesia', 'Instagram Likes Indonesia JS 17 [ MAX 10K ] [ Refill 7 days ]', 'drop lebih 40?ru bisa refill', 10, 10000, 22159.090909091, 21666.666666667, 2166.6666666667, 'Aktif', 3228, 'JAGOSOSMED', 'Sosial Media'),
(251, 251, 'Instagram Like Indonesia', 'Instagram Likes Indonesia PROMO1 [ FAST ] [ REAL ACCOUNT ] [ REFILL 7 DAYS ] [ MAX 20K ] ', 'PROMO SAJSAI BONUS DEPOSIT NAIK LAGI!!!!', 50, 2000, 10340.909090909, 10111.111111111, 1011.1111111111, 'Aktif', 3627, 'JAGOSOSMED', 'Sosial Media'),
(252, 252, 'Instagram Like Indonesia', 'Instagram Likes Indonesia PROMO2 [LANGSUNGMASUK] [5K] REAL ACCOUNT [ Refill 3Days ]', 'PROMO SAJSAI BONUS DEPOSIT NAIK LAGI!!!!', 100, 1000, 11818.181818182, 11555.555555556, 1155.5555555556, 'Aktif', 3628, 'JAGOSOSMED', 'Sosial Media'),
(253, 253, 'Instagram Likes', 'Instagram Likes JS 15 [ NO DROP ] Max terbanyak', 'No Drop Likes\n1-3K / Hour', 20, 50000, 7800, 7626.6666666667, 762.66666666667, 'Aktif', 1565, 'JAGOSOSMED', 'Sosial Media'),
(254, 254, 'Instagram Likes', 'Instagram Likes JS 19 [ NON DROP - Lifetime Guaranteed ] [5k-10k Per Day] ', 'instan\n5k-10k Per Day Speed', 10, 300000, 4727.2727272727, 4622.2222222222, 462.22222222222, 'Aktif', 1651, 'JAGOSOSMED', 'Sosial Media'),
(255, 255, 'Instagram Likes', 'Instagram Likes JS 20 [ Real Account ] [ Best Seller ] ', 'No garansi apaun yg terjadi\nKualitas bagus\ntidak drop paling kalo drop sekitar 10% ( kami tidak menjamin ini selamanya karna ig kadang update gk jelas )', 10, 20000, 7150, 6991.1111111111, 699.11111111111, 'Aktif', 1719, 'JAGOSOSMED', 'Sosial Media'),
(256, 256, 'Instagram Likes', 'Instagram Likes JS 26 [ No drop ] Real ', 'High Quality\nNo drop, jika drop mungkin hanya 10% buat sekarang', 100, 15000, 6780.6818181818, 6630, 663, 'Aktif', 1789, 'JAGOSOSMED', 'Sosial Media'),
(257, 257, 'Instagram Likes', 'Instagram Likes JS 27 [10K] cheap', 'no garansi\nspeed 300/jam\nmulai 0-2 jam', 10, 10000, 7282.9545454545, 7121.1111111111, 712.11111111111, 'Aktif', 1807, 'JAGOSOSMED', 'Sosial Media'),
(258, 258, 'Instagram Likes', 'Instagram Likes JS 29 [ Real ] cheapeast ', 'No garansi\nfast', 100, 5000, 9528.4090909091, 9316.6666666667, 931.66666666667, 'Aktif', 1825, 'JAGOSOSMED', 'Sosial Media'),
(259, 259, 'Instagram Likes', 'Instagram Likes JS 3 [ 10k ] [ Instant - Start ]', 'Start time:\nFor orders under 1000 likes usually instant. If more than 1000 - may take some time, usually few hours\nSpeed is up to 100-200 per hour (can lower a bit when many orders)\nNo cancellation before 24 hours', 20, 5000, 32573.863636364, 31850, 3185, 'Aktif', 1422, 'JAGOSOSMED', 'Sosial Media'),
(260, 260, 'Instagram Likes', 'Instagram Likes JS 31  [ Refill 30D ] INSTANT', 'Refill 30D\nSpeed 2k/day', 50, 10000, 2895.4545454545, 2831.1111111111, 283.11111111111, 'Aktif', 1918, 'JAGOSOSMED', 'Sosial Media'),
(261, 261, 'Instagram Likes', 'Instagram Likes JS 32 cheapeast world [ NO DROP ] FAST', 'Instant\nno drop\nTapi Jika drop gk ada reffund', 100, 50000, 1462.5, 1430, 143, 'Aktif', 1953, 'JAGOSOSMED', 'Sosial Media'),
(262, 262, 'Instagram Likes', 'Instagram Likes JS 9 [ Pakistan+asia+indo ] [ 40K ] ', '1k-2k/hour\n', 50, 40000, 14447.727272727, 14126.666666667, 1412.6666666667, 'Aktif', 1501, 'JAGOSOSMED', 'Sosial Media'),
(263, 263, '- ? Promo 01 Oktober 2023 ?-', 'Instagram Likes PROMO 1 [ Refill 30days ] Speed: 30K/Days', 'Instant -  1 hours\nSpeed: 30K/Days', 10, 100000, 576.13636363636, 563.33333333333, 56.333333333333, 'Aktif', 3426, 'JAGOSOSMED', 'Sosial Media'),
(264, 264, 'Instagram Likes', 'Instagram Likes S1 [ FAST MURAH ]', 'Superfast\nNo refill', 20, 20000, 945.45454545455, 924.44444444444, 92.444444444444, 'Aktif', 2494, 'JAGOSOSMED', 'Sosial Media'),
(265, 265, 'Instagram Likes', 'Instagram Likes S11 [ REAL ] ', '0-6 hours\nFast after start {200k/day}\nNo Refill/refund \nMixed\nkemungkinan drop 50%', 100, 100000, 738.63636363636, 722.22222222222, 72.222222222222, 'Aktif', 2737, 'JAGOSOSMED', 'Sosial Media'),
(266, 266, 'Instagram Likes', 'Instagram Likes S12 [Refill 180 Days] [Max 50K] [5K/Day] ', 'Start Time: 1 Hour\nSpeed 5K/Day', 10, 250000, 1285.2272727273, 1256.6666666667, 125.66666666667, 'Aktif', 2740, 'JAGOSOSMED', 'Sosial Media'),
(267, 267, 'Instagram Likes', 'Instagram Likes S13 [ Lifetime Guaranteed ] [ Real Mixed ] [5K/Day] ', 'Real Mixed\n10k/days', 10, 20000, 2215.9090909091, 2166.6666666667, 216.66666666667, 'Aktif', 2741, 'JAGOSOSMED', 'Sosial Media'),
(268, 268, 'Instagram Likes', 'Instagram Likes S15 [ AUTO REFILL 30 DAYS ] [ FAST ] [ Start Time: 0 -1 Hours ] ', 'HQ', 10, 50000, 2895.4545454545, 2831.1111111111, 283.11111111111, 'Aktif', 2808, 'JAGOSOSMED', 'Sosial Media'),
(269, 269, 'Instagram Likes', 'Instagram Likes S16 [ 30 Days Refill ] [ Start Time: 0 -6 Hours ] ', '[ 30 Days Refill ] [ Start Time: 0 -6 Hours ]', 100, 250000, 827.27272727273, 808.88888888889, 80.888888888889, 'Aktif', 3048, 'JAGOSOSMED', 'Sosial Media'),
(270, 270, 'Instagram Likes', 'Instagram Likes S18 [ Real Mixed ] [ 70k-80k/day ] ', 'Real Mixed \n70k-80k/day\nNo refill', 100, 100000, 531.81818181818, 520, 52, 'Aktif', 3050, 'JAGOSOSMED', 'Sosial Media'),
(271, 271, 'Instagram Likes', 'Instagram Likes S19 [ Real ] [ 20k/day ][ R30 ]', 'Refill 30 days', 100, 100000, 5997.7272727273, 5864.4444444444, 586.44444444444, 'Aktif', 3051, 'JAGOSOSMED', 'Sosial Media'),
(272, 272, 'Instagram Likes', 'Instagram Likes S2 [ FAST No Drop ] 500/hour ', 'waktu mulai 0-1j\nkecepatan 500+/jam\nNodrop\nTidak ada refill jika ada update terburuk', 50, 1000000, 1506.8181818182, 1473.3333333333, 147.33333333333, 'Aktif', 2495, 'JAGOSOSMED', 'Sosial Media'),
(273, 273, 'Instagram Likes', 'Instagram Likes S20 [ Max 500K ] [ 365 Days Refill ] ', 'Max 500K\nwaktu mulai 0-6 jam', 10, 500000, 856.81818181818, 837.77777777778, 83.777777777778, 'Aktif', 3158, 'JAGOSOSMED', 'Sosial Media'),
(274, 274, 'Instagram Likes', 'Instagram Likes S21 [ CHEAP ] Mixed Max 100K ⚡', 'input link post/video\n\nno refill!', 10, 100000, 465.34090909091, 455, 45.5, 'Aktif', 3176, 'JAGOSOSMED', 'Sosial Media'),
(275, 275, 'Instagram Likes', 'Instagram Likes S22 [ CHEAP ] Mixed Max 200K ⚡', 'input link post/video\nno refill!', 20, 200000, 517.04545454545, 505.55555555556, 50.555555555556, 'Aktif', 3177, 'JAGOSOSMED', 'Sosial Media'),
(276, 276, 'Instagram Likes', 'Instagram Likes S23 [ CHEAP ] BOT [ Min 100 - Max 100K ] ⚡', 'NO REFILL\nBISA DROP KAPAN AJA\nBAHKAN SEJAM ATAU KURANG\nNO NGELUH', 100, 100000, 443.18181818182, 433.33333333333, 43.333333333333, 'Aktif', 3178, 'JAGOSOSMED', 'Sosial Media'),
(277, 277, 'Instagram Likes', 'Instagram Likes S24 [ No Refill ] BOT [ Min 100 - Max 70K ] 30-50K/Day ', '30-50K/Day \nMax 70K', 10, 70000, 421.02272727273, 411.66666666667, 41.166666666667, 'Aktif', 3425, 'JAGOSOSMED', 'Sosial Media'),
(278, 278, 'Instagram Likes', 'Instagram Likes S25 [ MURAH ] BOT [ Min 10 - Max 100K ] ', 'start = 0-12 hours\nNO REFILL NO GARANSI', 10, 100000, 361.93181818182, 353.88888888889, 35.388888888889, 'Aktif', 3531, 'JAGOSOSMED', 'Sosial Media'),
(279, 279, 'Instagram Likes', 'Instagram Likes S26 [ Life Time Guaranteed ] MIX [ Min 10 - Max 1M ]', 'Life Time Guaranteed\nMax 1M', 10, 1000000, 753.40909090909, 736.66666666667, 73.666666666667, 'Aktif', 3605, 'JAGOSOSMED', 'Sosial Media'),
(280, 280, 'Instagram Likes', 'Instagram Likes S7 [ Max 100K ] + Bonus', 'Instan\nno drop\njika ada masalah tentang ig dan drop, tetap no garansi', 100, 100000, 731.25, 715, 71.5, 'Aktif', 2554, 'JAGOSOSMED', 'Sosial Media'),
(281, 281, 'Instagram Likes', 'Instagram Likes Server 10 [ mix ] [ Superfast, 30 days refill ]', '30 days refill', 50, 500000, 443.18181818182, 433.33333333333, 43.333333333333, 'Aktif', 2103, 'JAGOSOSMED', 'Sosial Media'),
(282, 282, 'Instagram Likes', 'Instagram Likes Server 12 [ LESSDROP ] [ HQ Refill 45days ] ♻️', 'Fast\nkualitas bagus\nStart: 0-1 jam', 10, 50000, 2156.8181818182, 2108.8888888889, 210.88888888889, 'Aktif', 2219, 'JAGOSOSMED', 'Sosial Media'),
(283, 283, 'Instagram Likes', 'Instagram Likes Server 19 [ 50k/day ] [  REAL ] ', '50k/hari\nkemungkinan 10% Drop saja \ntidak ada isi ulang untuk kasus terburuk.', 10, 50000, 1506.8181818182, 1473.3333333333, 147.33333333333, 'Aktif', 2491, 'JAGOSOSMED', 'Sosial Media'),
(284, 284, 'Instagram Likes', 'Instagram Likes Server 20 [ No Refill | Max 500K ] ', 'Max 500K\nNo Refill', 10, 500000, 332.38636363636, 325, 32.5, 'Aktif', 3607, 'JAGOSOSMED', 'Sosial Media'),
(285, 285, 'Instagram Likes', 'Instagram Likes Server 21 [ 30 Days Refill | Max 500K ] ', '30 Days Refill\nMixed', 10, 500000, 478.63636363636, 468, 46.8, 'Aktif', 3608, 'JAGOSOSMED', 'Sosial Media'),
(286, 286, 'Instagram Likes', 'Instagram Likes Server 3 [ Kualitas bagus ] [ Superfast ] ', 'fast', 10, 25000, 25128.409090909, 24570, 2457, 'Aktif', 1169, 'JAGOSOSMED', 'Sosial Media'),
(287, 287, 'Instagram Likes', 'Instagram Likes Server 9 [ Real ] [ NO DROP ] ', 'No drop ( kemungkinan, drop hanya 10% )\ntetap no garansi', 100, 5000, 2289.7727272727, 2238.8888888889, 223.88888888889, 'Aktif', 2039, 'JAGOSOSMED', 'Sosial Media'),
(288, 288, 'Instagram VERIFIED ', 'Instagram Likes VERIFIED/CENTANG BIRU DONE 24 JAM', 'Jika tidak selesai dalam 1-3 hari\nlangsung bikin tiket', 1, 13, 18792386.363636, 18374777.777778, 1837477.7777778, 'Aktif', 2157, 'JAGOSOSMED', 'Sosial Media'),
(289, 289, 'Instagram Live Video', 'Instagram Live Video Comments Random', 'Username Only \nNo Refill / No Refund \nRandom Comments On Live Video \nFast Delivery \nMinimum 50', 100, 2000, 142276.13636364, 139114.44444444, 13911.444444444, 'Aktif', 922, 'JAGOSOSMED', 'Sosial Media'),
(290, 290, 'Instagram Live Video', 'Instagram Live Video Likes ', 'Username Only\nNo Refill / No Refund\nLikes On Live Video\nFast Delivery\nMinimum 200', 200, 10000, 9129.5454545455, 8926.6666666667, 892.66666666667, 'Aktif', 117, 'JAGOSOSMED', 'Sosial Media'),
(291, 291, 'Instagram Live Video', 'Instagram Live Video Views [ Durasi 60 Menit ] INSTANT', 'INSTANT', 10, 5000, 168010.22727273, 164276.66666667, 16427.666666667, 'Aktif', 2476, 'JAGOSOSMED', 'Sosial Media'),
(292, 292, 'Instagram Live Video', 'Instagram Live Video Views Likes and Comments also', 'refund related issue.\n1286 Instagram Live Video Views - Max 30k - Likes and Comments also 12.00 20 30000 3 hours and 27 minutes Starts within 1-2 mints after ordering\nstart live and then order\nHas random likes and comments\nmin 20 max 20k\nif have problem please share screenshot with time and no. of viewers.\n\nAvg Retention of viewers - 30 to 60 minutes', 20, 30000, 307051.13636364, 300227.77777778, 30022.777777778, 'Aktif', 1998, 'JAGOSOSMED', 'Sosial Media'),
(293, 293, 'Instagram Followers  Updated  ', 'Instagram Real Followers | 30 Days Refill | Speed: 20K/Day | Button Enabled', '-', 10, 1000000, 11906.818181818, 11642.222222222, 1164.2222222222, 'Aktif', 3311, 'JAGOSOSMED', 'Sosial Media'),
(294, 294, 'Instagram Followers  Updated  ', 'Instagram Real Followers | 365 Days Refill | Speed: 20K/Day | Button Enabled', '-', 10, 1000000, 13960.227272727, 13650, 1365, 'Aktif', 3312, 'JAGOSOSMED', 'Sosial Media'),
(295, 295, 'Instagram Followers  Updated  ', 'Instagram Real Followers | Lifetime Refill | Speed: 40K/Day | Button Enabled - Old Accounts	Drop rate 0-1%!', '-', 50, 5000000, 16504.090909091, 16137.333333333, 1613.7333333333, 'Aktif', 3314, 'JAGOSOSMED', 'Sosial Media'),
(296, 296, 'Instagram Followers  Updated  ', 'Instagram Real Followers | Working | Speed: 20K/Day | Max: 200K', '-', 10, 200000, 9011.3636363636, 8811.1111111111, 881.11111111111, 'Aktif', 3309, 'JAGOSOSMED', 'Sosial Media'),
(297, 297, 'Instagram Followers  Updated  ', 'Instagram Real Followers | Working | Speed: 20K/Day | Max: 2M', '-', 10, 200000, 10547.727272727, 10313.333333333, 1031.3333333333, 'Aktif', 3310, 'JAGOSOSMED', 'Sosial Media'),
(298, 298, 'Instagram Followers  Updated  ', 'Instagram Real Followers | Working | Speed: 2K/Day | Max: 2K', '-', 10, 2000, 8257.9545454545, 8074.4444444444, 807.44444444444, 'Aktif', 3308, 'JAGOSOSMED', 'Sosial Media'),
(299, 299, 'Instagram Followers  Updated  ', 'Instagram Real Followers | Working | Speed: 60K/Day | Max: 2M - Old Accounts Drop rate 0-1%!', '-', 50, 2000000, 15204.090909091, 14866.222222222, 1486.6222222222, 'Aktif', 3313, 'JAGOSOSMED', 'Sosial Media'),
(300, 300, 'Instagram Reels', 'Instagram Reels Likes S1 [ Max - 20k ] INSTANT', 'INSTANT', 20, 20000, 7681.8181818182, 7511.1111111111, 751.11111111111, 'Aktif', 2026, 'JAGOSOSMED', 'Sosial Media'),
(301, 301, 'Instagram Reels', 'Instagram Reels Likes S2 [ Max - 10k ] FAST [ Refill 30days ]', 'fast\nRefill 30days', 10, 10000, 14462.5, 14141.111111111, 1414.1111111111, 'Aktif', 2027, 'JAGOSOSMED', 'Sosial Media'),
(302, 302, 'Instagram Reels', 'Instagram Reels Views S2 [ Max - 100K ] ', 'waktu mulai 0-2 jam', 1000, 100000, 13487.5, 13187.777777778, 1318.7777777778, 'Aktif', 3054, 'JAGOSOSMED', 'Sosial Media'),
(303, 303, 'Instagram Reels', 'Instagram Reels Views S3 [ Max - 1M ] ', 'waktu mulai 0-6 jam\n', 100, 10000000, 49651.136363636, 48547.777777778, 4854.7777777778, 'Aktif', 3056, 'JAGOSOSMED', 'Sosial Media'),
(304, 304, 'Instagram Story / Impressions / Saves / Profile Vi', 'Instagram Saves ', 'No Refill / No Refund\n0-1 Hour Start!\n15K/Day\nMinimum 10', 10, 15000, 7356.8181818182, 7193.3333333333, 719.33333333333, 'Aktif', 123, 'JAGOSOSMED', 'Sosial Media'),
(305, 305, 'Instagram Story / Impressions / Saves / Profile Vi', 'Instagram Shares', 'Instant, Superfast, Perfect Quality, #UNLIMITED\nIt can be uploaded to Photo, Carousel, Video, TV and Reel shares.\nSpeed: Minutely 5M', 100, 5000000, 8125, 7944.4444444444, 794.44444444444, 'Aktif', 3560, 'JAGOSOSMED', 'Sosial Media'),
(306, 306, 'Instagram Story Views', 'Instagram Story Views [20K] [LAST STORY ONLY]', 'Views On The Last Story Posted ONLY !\nUsername Only\n0-1 Hour Start!\nUltra Fast!\nMinimum 20', 20, 20000, 3028.4090909091, 2961.1111111111, 296.11111111111, 'Aktif', 115, 'JAGOSOSMED', 'Sosial Media'),
(307, 307, 'Instagram Story Views', 'Instagram Story Views [9K] [1H - Ultra Fast! ]', 'NO REFILL\n\njika ada masalah view tidak masuk\nkirimkan bukti ss nya yang ada tanggal dan waktu nya', 250, 3000, 3486.3636363636, 3408.8888888889, 340.88888888889, 'Aktif', 917, 'JAGOSOSMED', 'Sosial Media'),
(308, 308, 'Instagram Story Views', 'Instagram Story Views S4 [ BEST ]  All Story Views', '10k/day', 100, 35000, 3220.4545454545, 3148.8888888889, 314.88888888889, 'Aktif', 2838, 'JAGOSOSMED', 'Sosial Media'),
(309, 309, 'Instagram Story Views', 'Instagram Story Views S5 [ WORKING - HQ ] All Story Views [ INSTANT FAST ]⚡⚡⚡', 'INSTANT FAST\nAll Story Views', 100, 50000, 2363.6363636364, 2311.1111111111, 231.11111111111, 'Aktif', 3622, 'JAGOSOSMED', 'Sosial Media'),
(310, 310, 'Instagram TV', 'Instagram TV Like Server 4 [ BOT ] [ HQ ]', 'Instant\nno garansi', 10, 10000, 1846.5909090909, 1805.5555555556, 180.55555555556, 'Aktif', 1773, 'JAGOSOSMED', 'Sosial Media'),
(311, 311, 'Instagram TV', 'Instagram TV Like Server 5 [ Instan ]', 'instan', 100, 15000, 7800, 7626.6666666667, 762.66666666667, 'Aktif', 1774, 'JAGOSOSMED', 'Sosial Media'),
(312, 312, 'Instagram Views', 'instagram view + Impressions Server 10 [ INSTANT ] [ VIDEO/REELS/TV ] ', '500K/Day\n', 100, 100000000, 26073.863636364, 25494.444444444, 2549.4444444444, 'Aktif', 3067, 'JAGOSOSMED', 'Sosial Media'),
(313, 313, 'Instagram Views', 'instagram view JS 10 [ REELS - INSTANT ] [ Provider - 100k/days ] ', 'Instant\n100k/days', 100, 10000000, 966.13636363636, 944.66666666667, 94.466666666667, 'Aktif', 3260, 'JAGOSOSMED', 'Sosial Media'),
(314, 314, 'Instagram Views', 'instagram view JS 11 [ REELS - INSTANT ] [ NoDrop - 5M Day ] ', '5M Day\nINSTANT \nREELS', 50, 5000000, 2659.0909090909, 2600, 260, 'Aktif', 3262, 'JAGOSOSMED', 'Sosial Media'),
(315, 315, 'Instagram Views', 'instagram view JS 12 | Max 5M | Reel or Tv | Fast', 'Max 5M \nReel or Tv \nSlow', 100, 5000000, 1890.9090909091, 1848.8888888889, 184.88888888889, 'Aktif', 3272, 'JAGOSOSMED', 'Sosial Media'),
(316, 316, 'Instagram Views', 'instagram view JS 13 [ Max 20M | Reel or Tv | HQ Services ]', 'Max 20M', 100, 20000000, 1270.4545454545, 1242.2222222222, 124.22222222222, 'Aktif', 3358, 'JAGOSOSMED', 'Sosial Media'),
(317, 317, 'Instagram Views', 'instagram view JS 14 [ All Videos | 1k-5k/d ]', '1k-5k/d\nInstant\nAll Videos', 100, 10000000, 2939.7727272727, 2874.4444444444, 287.44444444444, 'Aktif', 3368, 'JAGOSOSMED', 'Sosial Media'),
(318, 318, 'Instagram Views', 'instagram view JS 15 [ All Videos | Max 500K | Start : 0-15 Munites ] ', 'Start : 0-15 Munites\nMax 500K', 100, 5000000, 717.95454545455, 702, 70.2, 'Aktif', 3435, 'JAGOSOSMED', 'Sosial Media'),
(319, 319, 'Instagram Views', 'instagram view JS 16 [ All Videos] [ Max 5M ] [ Start : 0-15 Munites ] ', 'Location: Global\nQuality: High\nViews made from active profiles.\nStart Time: 0-30 Minutes', 100, 500000, 2998.8636363636, 2932.2222222222, 293.22222222222, 'Aktif', 3451, 'JAGOSOSMED', 'Sosial Media'),
(320, 320, 'Instagram Views', 'instagram view JS 17 [ Reel Or Tv ] [ New - Cheap ] [ Start : 0-15 Munites ]', 'Start : 0-30 Munites', 100, 300000, 2747.7272727273, 2686.6666666667, 268.66666666667, 'Aktif', 3461, 'JAGOSOSMED', 'Sosial Media'),
(321, 321, 'Instagram Views', 'instagram view JS 18 [ Video+ Reel + IGTV ] [ + Profile Visits, +   Owerflow ] [ 5M/days ] ', '- Start : 0-5 Munites\n- Start : Fast\n- Always Working Services', 100, 50000000, 2511.3636363636, 2455.5555555556, 245.55555555556, 'Aktif', 3523, 'JAGOSOSMED', 'Sosial Media'),
(322, 322, 'Instagram Views', 'instagram view JS 19 [ Update - Provider ] [ Max 20M ]', '- Start : 0-30 Munites', 100, 100000000, 1019.3181818182, 996.66666666667, 99.666666666667, 'Aktif', 3527, 'JAGOSOSMED', 'Sosial Media'),
(323, 323, 'Instagram Views', 'instagram view JS 2 [ Works for REEL/IGTV/VIDEO ] [ FAST ]', 'Works for REEL/IGTV/VIDEO\nFAST', 100, 1000000, 2215.9090909091, 2166.6666666667, 216.66666666667, 'Aktif', 3198, 'JAGOSOSMED', 'Sosial Media'),
(324, 324, 'Instagram Views', 'instagram view JS 20 [ SUPERFAST - INSTANT  ] [ Max 20M - All Video | No-Drop ] ⚡⚡', 'SANGAT FAST\nUDAH DIUJI 10K SIAP DALAM 5 MENIT', 100, 2000000, 1137.5, 1112.2222222222, 111.22222222222, 'Aktif', 3529, 'JAGOSOSMED', 'Sosial Media'),
(325, 325, 'Instagram Views', 'instagram view JS 21 [ Video+ Reel + IGTV ] [ 1M/Days ] [ FAST ]', 'FAST\nCHEAPEST', 100, 30000000, 753.40909090909, 736.66666666667, 73.666666666667, 'Aktif', 2216, 'JAGOSOSMED', 'Sosial Media'),
(326, 326, 'Instagram Views', 'instagram view JS 3 [ Works for REEL/IGTV/VIDEO ] [ 5K/Days ]', 'Real Trafic\nInstan', 500, 5000000, 3161.3636363636, 3091.1111111111, 309.11111111111, 'Aktif', 3199, 'JAGOSOSMED', 'Sosial Media'),
(327, 327, 'Instagram Views', 'instagram view JS 4 [ Works for Reels ] [ 5K/Hours ]', 'waktu mulai 0 - 3 jam\n5K/Hours', 500, 1000000, 8863.6363636364, 8666.6666666667, 866.66666666667, 'Aktif', 3200, 'JAGOSOSMED', 'Sosial Media'),
(328, 328, 'Instagram Views', 'instagram view JS 5 [ Works for Reels/TV ] [ Slow Services ]', 'Works for Reels/TV', 100, 100000000, 915.90909090909, 895.55555555556, 89.555555555556, 'Aktif', 3210, 'JAGOSOSMED', 'Sosial Media'),
(329, 329, 'Instagram Views', 'instagram view JS 6  [ NEW - INSTANT ] [ MAX 100k ] ', 'INSTANT \nMAX 500k', 100, 100000, 5613.6363636364, 5488.8888888889, 548.88888888889, 'Aktif', 3211, 'JAGOSOSMED', 'Sosial Media'),
(330, 330, 'Instagram Views', 'instagram view JS 7 [ NEW - INSTANT ] [ Working Services - 500K ]', 'Instant', 100, 500000, 1551.1363636364, 1516.6666666667, 151.66666666667, 'Aktif', 3212, 'JAGOSOSMED', 'Sosial Media'),
(331, 331, 'Instagram Views', 'instagram view JS 8 [ NEW - INSTANT ] [ Provider Services - 20M ] ', 'Instan', 100, 20000000, 1019.3181818182, 996.66666666667, 99.666666666667, 'Aktif', 3229, 'JAGOSOSMED', 'Sosial Media'),
(332, 332, 'Instagram Views', 'instagram view JS 9 [ NEW - INSTANT ] [ Provider - 500K ] ', 'Instant', 100, 500000, 1167.0454545455, 1141.1111111111, 114.11111111111, 'Aktif', 3236, 'JAGOSOSMED', 'Sosial Media'),
(333, 333, 'Instagram Views', 'instagram view Server 10 SUPERFAST [ VIDEO/REELS ] [ TV tidak Bisa ] Max 10M ', 'Speed: 1M - 2M In 15 minutes\nStart: Instant\nada beberapa pesanan yg status nya stuck\nsebelum kompline silahkan cek apakah sudah masuk atau belum view nya', 100, 10000000, 1031.1363636364, 1008.2222222222, 100.82222222222, 'Aktif', 2573, 'JAGOSOSMED', 'Sosial Media'),
(334, 334, 'Instagram Views', 'instagram view Server 11 [ INSTANT ] [ Works for Reels ]  [ FAST ]', 'FAST', 100, 10000000, 14196.590909091, 13881.111111111, 1388.1111111111, 'Aktif', 3077, 'JAGOSOSMED', 'Sosial Media'),
(335, 335, 'Instagram Views', 'instagram view Server 11 SUPERFAST [ VIDEO/REELS/TV ]Max 100M ', 'INSTANT\nSUPERFAST', 100, 100000000, 42811.363636364, 41860, 4186, 'Aktif', 2652, 'JAGOSOSMED', 'Sosial Media'),
(336, 336, 'Instagram Views', 'instagram view Server 13 [ INSTANT ] [ Works for Reels ] [ Max 700K ]', 'FAST', 100, 700000, 3250, 3177.7777777778, 317.77777777778, 'Aktif', 3163, 'JAGOSOSMED', 'Sosial Media'),
(337, 337, 'Instagram Views', 'instagram view Server 14 [ INSTANT ] [ Works for Reels ]', 'Start: 0-15min\nSpeed: Super Fast\nRefill: No Refill', 100, 100000000, 3250, 3177.7777777778, 317.77777777778, 'Aktif', 3166, 'JAGOSOSMED', 'Sosial Media'),
(338, 338, 'Instagram Views', 'instagram view Server 15 [ 500/hr ] UPDATED FAST', '500/hr', 100, 10000, 1418.1818181818, 1386.6666666667, 138.66666666667, 'Aktif', 3191, 'JAGOSOSMED', 'Sosial Media'),
(339, 339, 'Instagram Views', 'instagram view Server 3 SUPERFAST [ TV/VIDEO/REELS] ', 'SUPERFAST', 100, 1000000, 26886.363636364, 26288.888888889, 2628.8888888889, 'Aktif', 2538, 'JAGOSOSMED', 'Sosial Media'),
(340, 340, 'Instagram Views', 'instagram view Server 4 SUPERFAST [ TV/VIDEO/REELS]  Recommended ', 'Best Service in the World\nGaransi seumur hidup jika drop', 100, 5000000, 3515.9090909091, 3437.7777777778, 343.77777777778, 'Aktif', 2539, 'JAGOSOSMED', 'Sosial Media'),
(341, 341, 'Instagram Views', 'instagram view Server 7 [ fast MURAH ] ', 'Start: 0 - 15 Min\n500K - 1M / Hour', 100, 100000000, 20548.863636364, 20092.222222222, 2009.2222222222, 'Aktif', 2946, 'JAGOSOSMED', 'Sosial Media'),
(342, 342, 'Instagram Views', 'instagram view UPDATE 1 [ Bisa untuk REEL/IGTV/VIDEO ]', 'Emergency\n50k/hour', 100, 5000000, 2777.2727272727, 2715.5555555556, 271.55555555556, 'Aktif', 2170, 'JAGOSOSMED', 'Sosial Media'),
(343, 343, 'Facebook Live Stream - JS1', 'JS 1 - Facebook Live Stream View [120 Min] ', 'stable \nno refill', 50, 5000, 137534.09090909, 134477.77777778, 13447.777777778, 'Aktif', 2971, 'JAGOSOSMED', 'Sosial Media'),
(344, 344, 'Facebook Live Stream - JS1', 'JS 1 - Facebook Live Stream View [150 Min] ', 'stable\nno refill', 50, 5000, 172840.90909091, 169000, 16900, 'Aktif', 2972, 'JAGOSOSMED', 'Sosial Media'),
(345, 345, 'Facebook Live Stream - JS1', 'JS 1 - Facebook Live Stream View [180 Min]', 'stable\nno refill', 50, 5000, 208295.45454545, 203666.66666667, 20366.666666667, 'Aktif', 2973, 'JAGOSOSMED', 'Sosial Media'),
(346, 346, 'Facebook Live Stream - JS1', 'JS 1 - Facebook Live Stream View [210 Min] ', 'stable\nno refill', 50, 5000, 243750, 238333.33333333, 23833.333333333, 'Aktif', 2974, 'JAGOSOSMED', 'Sosial Media'),
(347, 347, 'Facebook Live Stream - JS1', 'JS 1 - Facebook Live Stream View [240 Min] ', 'stable\nno refill', 50, 5000, 276250, 270111.11111111, 27011.111111111, 'Aktif', 2975, 'JAGOSOSMED', 'Sosial Media'),
(348, 348, 'Facebook Live Stream - JS1', 'JS 1 - Facebook Live Stream View [270 Min] ', 'stable\nno refill', 50, 5000, 310227.27272727, 303333.33333333, 30333.333333333, 'Aktif', 2976, 'JAGOSOSMED', 'Sosial Media'),
(349, 349, 'Facebook Live Stream - JS1', 'JS 1 - Facebook Live Stream View [30 Min] ', 'stable\nno refill', 50, 5000, 34568.181818182, 33800, 3380, 'Aktif', 2968, 'JAGOSOSMED', 'Sosial Media'),
(350, 350, 'Facebook Live Stream - JS1', 'JS 1 - Facebook Live Stream View [300 Min] ', 'stable\nno refill', 50, 5000, 347159.09090909, 339444.44444444, 33944.444444444, 'Aktif', 2977, 'JAGOSOSMED', 'Sosial Media'),
(351, 351, 'Facebook Live Stream - JS1', 'JS 1 - Facebook Live Stream View [60 Min] ', 'stable\nno refill', 50, 5000, 68693.181818182, 67166.666666667, 6716.6666666667, 'Aktif', 2969, 'JAGOSOSMED', 'Sosial Media'),
(352, 352, 'Facebook Live Stream - JS1', 'JS 1 - Facebook Live Stream View [90 Min] ', 'stable\nno refill', 50, 5000, 103409.09090909, 101111.11111111, 10111.111111111, 'Aktif', 2970, 'JAGOSOSMED', 'Sosial Media'),
(353, 353, 'Facebook Live Stream - JS2', 'JS 2 - Facebook Live Stream View [120 Min] Best Seller ', 'mulai: 0-5 menit\npembelian harus kelipatan 50', 50, 2000, 939545.45454545, 918666.66666667, 91866.666666667, 'Aktif', 2982, 'JAGOSOSMED', 'Sosial Media'),
(354, 354, 'Facebook Live Stream - JS2', 'JS 2 - Facebook Live Stream View [30 Min] Best Seller', 'mulai: 0-5 menit\npembelian harus kelipatan 50', 50, 2000, 234886.36363636, 229666.66666667, 22966.666666667, 'Aktif', 2978, 'JAGOSOSMED', 'Sosial Media'),
(355, 355, 'Facebook Live Stream - JS2', 'JS 2 - Facebook Live Stream View [45 Min] Best Seller ', 'mulai: 0-5 menit\npembelian harus kelipatan 50', 50, 2000, 351590.90909091, 343777.77777778, 34377.777777778, 'Aktif', 2979, 'JAGOSOSMED', 'Sosial Media'),
(356, 356, 'Facebook Live Stream - JS2', 'JS 2 - Facebook Live Stream View [60 Min] Best Seller ', 'mulai: 0-5 menit\npembelian harus kelipatan 50', 50, 2000, 469772.72727273, 459333.33333333, 45933.333333333, 'Aktif', 2980, 'JAGOSOSMED', 'Sosial Media'),
(357, 357, 'Facebook Live Stream - JS2', 'JS 2 - Facebook Live Stream View [90 Min] Best Seller ', 'mulai: 0-5 menit\npembelian harus kelipatan 50', 50, 2000, 703181.81818182, 687555.55555556, 68755.555555556, 'Aktif', 2981, 'JAGOSOSMED', 'Sosial Media');
INSERT INTO `layanan_sosmed` (`id`, `service_id`, `kategori`, `layanan`, `catatan`, `min`, `max`, `harga`, `harga_api`, `profit`, `status`, `provider_id`, `provider`, `tipe`) VALUES
(358, 358, 'Shopee/Tokopedia/Bukalapak/Lazada', 'Lazada Followers [ MAX 3K ] ', '- Masukkan TARGET link toko\n- Proses fast 0 - 1 jam, max 1 x 24 jam', 200, 3000, 78295.454545455, 76555.555555556, 7655.5555555555, 'Aktif', 3427, 'JAGOSOSMED', 'Sosial Media'),
(359, 359, 'Instagram Like Komentar  top koment ', 'Like Komen Indonesia BULE ', 'HQ/REAL\n0-24hrs \nSuperfast\nSERVICE NOT STABLE', 50, 100000, 55840.909090909, 54600, 5460, 'Aktif', 748, 'JAGOSOSMED', 'Sosial Media'),
(360, 360, 'Likee app', 'Likee App Followers  [ 500-1k/day ]', 'contoh target https://likee.com/@********\nno refill', 20, 10000, 7371.5909090909, 7207.7777777778, 720.77777777778, 'Aktif', 1607, 'JAGOSOSMED', 'Sosial Media'),
(361, 361, 'Likee app', 'Likee App Post Likes [Speed : 1k-2k/day]', 'contoh target :https://likee.com/@********/video/*********\nNo refill', 20, 10000, 3294.3181818182, 3221.1111111111, 322.11111111111, 'Aktif', 1606, 'JAGOSOSMED', 'Sosial Media'),
(362, 362, 'Khusus Member', 'Likes Instagram Murah', 'Likes Khusus Member', 100, 10000, 1818.1818181818, 1777.7777777778, 177.77777777778, 'Aktif', 12412199, 'JAGOSOSMED', 'Sosial Media'),
(363, 363, 'Khusus Member', 'Likes Instagram Murah Khusus Member', 'Likes Instagram Murah Khusus Member', 100, 1000, 11363.636363636, 11111.111111111, 1111.1111111111, 'Aktif', 12412197, 'JAGOSOSMED', 'Sosial Media'),
(364, 364, 'Linkedin', 'Linkedin - Followers AUTO 1', 'instan', 100, 1000, 99110.227272727, 96907.777777778, 9690.7777777778, 'Aktif', 141, 'JAGOSOSMED', 'Sosial Media'),
(365, 365, 'Pinterest', 'Pinterest Board Followers ', 'Pinterest Board Followers', 20, 5000, 53432.954545455, 52245.555555556, 5224.5555555556, 'Aktif', 915, 'JAGOSOSMED', 'Sosial Media'),
(366, 366, 'Pinterest', 'Pinterest Likes ', 'Pinterest Likes', 22, 250000, 4520.4545454545, 4420, 442, 'Aktif', 916, 'JAGOSOSMED', 'Sosial Media'),
(367, 367, 'Khusus Member', 'Rp 25000 dapat 10000 likes', 'khususss', 100, 1000, 2840.9090909091, 2777.7777777778, 277.77777777778, 'Aktif', 1234567890, 'JAGOSOSMED', 'Sosial Media'),
(368, 368, 'Shopee LiveStream', 'Shopee Likes Streaming Indonesia [ Tap Love ❤ ] Max 100K [ BONUS ++ ][ INSTANT ]', '1. Masukan Link Live Shopee Saja\n2. Pastikan Data Benar', 10, 100000, 997.15909090909, 975, 97.5, 'Aktif', 3565, 'JAGOSOSMED', 'Sosial Media'),
(369, 369, 'Shopee LiveStream', 'Shopee Livestream Views [ Max 50K ][ Stay 120 minutes ]', '* UNLIMITED live time\n* Very stable, no drop\n* Viewers will be added slowly in the first 5 minutes\n* System will add additional days if Shopee fix their algorithm\n* No refund in any case\n\nLink format:\n1. Shopee Taiwan: https://shopee.tw/USERNAME\n2. Shopee Singapore: https://shopee.sg/USERNAME\n3. Shopee Thailand: https://shopee.co.th/USERNAME\n4. Shopee Malaysia: https://shopee.com.my/USERNAME\n5. Shopee Philippines: https://shopee.ph/USERNAME\n6. Shopee Indonesia: https://shopee.co.id/USERNAME\n7. Shopee Vietnam: https://shopee.vn/USERNAME', 50, 50000, 2319318.1818182, 2267777.7777778, 226777.77777778, 'Aktif', 3543, 'JAGOSOSMED', 'Sosial Media'),
(370, 370, 'Shopee LiveStream', 'Shopee Livestream Views [ Max 50K ][ Stay 150 minutes ]', '* UNLIMITED live time\n* Very stable, no drop\n* Viewers will be added slowly in the first 5 minutes\n* System will add additional days if Shopee fix their algorithm\n* No refund in any case\n\nLink format:\n1. Shopee Taiwan: https://shopee.tw/USERNAME\n2. Shopee Singapore: https://shopee.sg/USERNAME\n3. Shopee Thailand: https://shopee.co.th/USERNAME\n4. Shopee Malaysia: https://shopee.com.my/USERNAME\n5. Shopee Philippines: https://shopee.ph/USERNAME\n6. Shopee Indonesia: https://shopee.co.id/USERNAME\n7. Shopee Vietnam: https://shopee.vn/USERNAME', 50, 10000, 2363636.3636364, 2311111.1111111, 231111.11111111, 'Aktif', 3544, 'JAGOSOSMED', 'Sosial Media'),
(371, 371, 'Shopee LiveStream', 'Shopee Livestream Views [ Max 50K ][ Stay 30 minutes ]', '* UNLIMITED live time\n* Very stable, no drop\n* Viewers will be added slowly in the first 5 minutes\n* System will add additional days if Shopee fix their algorithm\n* No refund in any case\n\nLink format:\n1. Shopee Taiwan: https://shopee.tw/USERNAME\n2. Shopee Singapore: https://shopee.sg/USERNAME\n3. Shopee Thailand: https://shopee.co.th/USERNAME\n4. Shopee Malaysia: https://shopee.com.my/USERNAME\n5. Shopee Philippines: https://shopee.ph/USERNAME\n6. Shopee Indonesia: https://shopee.co.id/USERNAME\n7. Shopee Vietnam: https://shopee.vn/USERNAME', 50, 50000, 613068.18181818, 599444.44444444, 59944.444444444, 'Aktif', 3540, 'JAGOSOSMED', 'Sosial Media'),
(372, 372, 'Shopee LiveStream', 'Shopee Livestream Views [ Max 50K ][ Stay 60 minutes ] ', '* UNLIMITED live time\n* Very stable, no drop\n* Viewers will be added slowly in the first 5 minutes\n* System will add additional days if Shopee fix their algorithm\n* No refund in any case\n\nLink format:\n1. Shopee Taiwan: https://shopee.tw/USERNAME\n2. Shopee Singapore: https://shopee.sg/USERNAME\n3. Shopee Thailand: https://shopee.co.th/USERNAME\n4. Shopee Malaysia: https://shopee.com.my/USERNAME\n5. Shopee Philippines: https://shopee.ph/USERNAME\n6. Shopee Indonesia: https://shopee.co.id/USERNAME\n7. Shopee Vietnam: https://shopee.vn/USERNAME', 50, 50000, 1168522.7272727, 1142555.5555556, 114255.55555556, 'Aktif', 3541, 'JAGOSOSMED', 'Sosial Media'),
(373, 373, 'Shopee LiveStream', 'Shopee Livestream Views [ Max 50K ][ Stay 90 minutes ]', '* UNLIMITED live time\n* Very stable, no drop\n* Viewers will be added slowly in the first 5 minutes\n* System will add additional days if Shopee fix their algorithm\n* No refund in any case\n\nLink format:\n1. Shopee Taiwan: https://shopee.tw/USERNAME\n2. Shopee Singapore: https://shopee.sg/USERNAME\n3. Shopee Thailand: https://shopee.co.th/USERNAME\n4. Shopee Malaysia: https://shopee.com.my/USERNAME\n5. Shopee Philippines: https://shopee.ph/USERNAME\n6. Shopee Indonesia: https://shopee.co.id/USERNAME\n7. Shopee Vietnam: https://shopee.vn/USERNAME', 50, 50000, 1787500, 1747777.7777778, 174777.77777778, 'Aktif', 3542, 'JAGOSOSMED', 'Sosial Media'),
(374, 374, 'Shopee LiveStream', 'Shopee livestream views [1K] (120 min)', '* UNLIMITED live time\n* Very stable, no drop\n* Viewers will be added slowly in the first 5 minutes\n* System will add additional days if Shopee fix their algorithm\n* No refund in any case\n\nLink format:\n1. Shopee Taiwan: https://shopee.tw/USERNAME\n2. Shopee Singapore: https://shopee.sg/USERNAME\n3. Shopee Thailand: https://shopee.co.th/USERNAME\n4. Shopee Malaysia: https://shopee.com.my/USERNAME\n5. Shopee Philippines: https://shopee.ph/USERNAME\n6. Shopee Indonesia: https://shopee.co.id/USERNAME\n7. Shopee Vietnam: https://shopee.vn/USERNAME', 50, 10000, 3035263.6363636, 2967813.3333333, 296781.33333333, 'Aktif', 3580, 'JAGOSOSMED', 'Sosial Media'),
(375, 375, 'Shopee LiveStream', 'Shopee livestream views [1K] (180 min)', '* UNLIMITED live time\n* Very stable, no drop\n* Viewers will be added slowly in the first 5 minutes\n* System will add additional days if Shopee fix their algorithm\n* No refund in any case\n\nLink format:\n1. Shopee Taiwan: https://shopee.tw/USERNAME\n2. Shopee Singapore: https://shopee.sg/USERNAME\n3. Shopee Thailand: https://shopee.co.th/USERNAME\n4. Shopee Malaysia: https://shopee.com.my/USERNAME\n5. Shopee Philippines: https://shopee.ph/USERNAME\n6. Shopee Indonesia: https://shopee.co.id/USERNAME\n7. Shopee Vietnam: https://shopee.vn/USERNAME', 50, 10000, 4575054.5454545, 4473386.6666667, 447338.66666667, 'Aktif', 3581, 'JAGOSOSMED', 'Sosial Media'),
(376, 376, 'Shopee LiveStream', 'Shopee livestream views [1K] (240 min)', '* UNLIMITED live time\n* Very stable, no drop\n* Viewers will be added slowly in the first 5 minutes\n* System will add additional days if Shopee fix their algorithm\n* No refund in any case\n\nLink format:\n1. Shopee Taiwan: https://shopee.tw/USERNAME\n2. Shopee Singapore: https://shopee.sg/USERNAME\n3. Shopee Thailand: https://shopee.co.th/USERNAME\n4. Shopee Malaysia: https://shopee.com.my/USERNAME\n5. Shopee Philippines: https://shopee.ph/USERNAME\n6. Shopee Indonesia: https://shopee.co.id/USERNAME\n7. Shopee Vietnam: https://shopee.vn/USERNAME', 50, 10000, 6100072.7272727, 5964515.5555556, 596451.55555556, 'Aktif', 3582, 'JAGOSOSMED', 'Sosial Media'),
(377, 377, 'Shopee LiveStream', 'Shopee livestream views [1K] (30 min)', '* UNLIMITED live time\n* Very stable, no drop\n* Viewers will be added slowly in the first 5 minutes\n* System will add additional days if Shopee fix their algorithm\n* No refund in any case\n\nLink format:\n1. Shopee Taiwan: https://shopee.tw/USERNAME\n2. Shopee Singapore: https://shopee.sg/USERNAME\n3. Shopee Thailand: https://shopee.co.th/USERNAME\n4. Shopee Malaysia: https://shopee.com.my/USERNAME\n5. Shopee Philippines: https://shopee.ph/USERNAME\n6. Shopee Indonesia: https://shopee.co.id/USERNAME\n7. Shopee Vietnam: https://shopee.vn/USERNAME', 50, 10000, 786240, 768768, 76876.8, 'Aktif', 3577, 'JAGOSOSMED', 'Sosial Media'),
(378, 378, 'Shopee LiveStream', 'Shopee livestream views [1K] (60 min)', '* UNLIMITED live time\n* Very stable, no drop\n* Viewers will be added slowly in the first 5 minutes\n* System will add additional days if Shopee fix their algorithm\n* No refund in any case\n\nLink format:\n1. Shopee Taiwan: https://shopee.tw/USERNAME\n2. Shopee Singapore: https://shopee.sg/USERNAME\n3. Shopee Thailand: https://shopee.co.th/USERNAME\n4. Shopee Malaysia: https://shopee.com.my/USERNAME\n5. Shopee Philippines: https://shopee.ph/USERNAME\n6. Shopee Indonesia: https://shopee.co.id/USERNAME\n7. Shopee Vietnam: https://shopee.vn/USERNAME', 50, 10000, 1525018.1818182, 1491128.8888889, 149112.88888889, 'Aktif', 3578, 'JAGOSOSMED', 'Sosial Media'),
(379, 379, 'Shopee LiveStream', 'Shopee livestream views [1K] (90 min)', '* UNLIMITED live time\n* Very stable, no drop\n* Viewers will be added slowly in the first 5 minutes\n* System will add additional days if Shopee fix their algorithm\n* No refund in any case\n\nLink format:\n1. Shopee Taiwan: https://shopee.tw/USERNAME\n2. Shopee Singapore: https://shopee.sg/USERNAME\n3. Shopee Thailand: https://shopee.co.th/USERNAME\n4. Shopee Malaysia: https://shopee.com.my/USERNAME\n5. Shopee Philippines: https://shopee.ph/USERNAME\n6. Shopee Indonesia: https://shopee.co.id/USERNAME\n7. Shopee Vietnam: https://shopee.vn/USERNAME', 50, 10000, 2287527.2727273, 2236693.3333333, 223669.33333333, 'Aktif', 3579, 'JAGOSOSMED', 'Sosial Media'),
(380, 380, 'Shopee/Tokopedia/Bukalapak/Lazada', 'Shopee Video Views Indonesia [ Max 10M ] ', 'Input Link Shopee Video\nStart Time\n0-5 Minutes', 100, 10000000, 1477.2727272727, 1444.4444444444, 144.44444444444, 'Aktif', 3202, 'JAGOSOSMED', 'Sosial Media'),
(381, 381, 'Shopee/Tokopedia/Bukalapak/Lazada', 'Shopee Video Views Indonesia [ Max 1M ]', '1. Input Link Shopee Video', 100, 1000000, 199.43181818182, 195, 19.5, 'Aktif', 3406, 'JAGOSOSMED', 'Sosial Media'),
(382, 382, 'Snack Video Followers', 'Snack Video Followers Server 1 [ 100% Real ] [ Max 10K ] [ No Refill ] [ 300/days ]', '- Mulai : 0-30 Munite\n- Jangan hilangkan profil Anda\n- Jangan mengubah username\n- LESS DROP\n\nCatatan:\n Saat layanan sedang sibuk, kecepatan awal proses berubah.\n Jangan melakukan pemesanan kedua pada target yang sama sebelum pesanan Anda selesai di sistem.', 10, 50000, 37079.545454545, 36255.555555556, 3625.5555555556, 'Aktif', 3583, 'JAGOSOSMED', 'Sosial Media'),
(383, 383, 'Snack Video Followers', 'Snack Video Followers Server 2 [ Real 100% ]', '- Mulai : 0-30 Munite\n- Jangan hilangkan profil Anda\n- Jangan mengubah username\n\nCatatan:\n Saat layanan sedang sibuk, kecepatan awal proses berubah.\n Jangan melakukan pemesanan kedua pada target yang sama sebelum pesanan Anda selesai di sistem.', 10, 50000, 35454.545454545, 34666.666666667, 3466.6666666667, 'Aktif', 3584, 'JAGOSOSMED', 'Sosial Media'),
(384, 384, 'Snack Video Followers', 'Snack Video Followers Server 3 [ SuperInstant ] [ Speed: 50K/Day ] [ 30 Days Refill ]', '- Mulai : 0-30 Munite\n- Jangan hilangkan profil Anda\n- Jangan mengubah username\n\nCatatan:\n Saat layanan sedang sibuk, kecepatan awal proses berubah.\n Jangan melakukan pemesanan kedua pada target yang sama sebelum pesanan Anda selesai di sistem.', 10, 50000, 38409.090909091, 37555.555555556, 3755.5555555556, 'Aktif', 3585, 'JAGOSOSMED', 'Sosial Media'),
(385, 385, 'Snack Video Likes', 'Snack Video Likes Server 2 [ BONUS VIEW ] [ SuperInstant ] [ Speed: 50K/Day ] [ 30 Days Refill ]', '- Mulai : 0-30 Munite\n- Jangan mengahapus Video saat proses order\n\nCatatan:\n Saat layanan sedang sibuk, kecepatan awal proses berubah.\n Jangan melakukan pemesanan kedua pada target yang sama sebelum pesanan Anda selesai di sistem.', 10, 50000, 15068.595454545, 14733.737777778, 1473.3737777778, 'Aktif', 3587, 'JAGOSOSMED', 'Sosial Media'),
(386, 386, 'SoundCloud', 'Soundcloud - Likes ( S1 ) [ HQ ] ( INSTANT )', 'HQ Users, Non Drop. Order Will Be Start Instant.', 20, 40000, 28555.681818182, 27921.111111111, 2792.1111111111, 'Aktif', 105, 'JAGOSOSMED', 'Sosial Media'),
(387, 387, 'SoundCloud', 'Soundcloud Followers JS 3 [Refill 30 Days] [Speed 10K/Day]', 'Refill 30 Days\n10K/Day\n', 20, 1000000, 35159.090909091, 34377.777777778, 3437.7777777778, 'Aktif', 2966, 'JAGOSOSMED', 'Sosial Media'),
(388, 388, 'SoundCloud', 'Soundcloud Followers JS 4 [ Cheapest ] [ No refill ]', 'Link: https//soundcloud.com/username\nStart: 0-24 hrs\nSpeed: 1k-2k\nNO NGELUH', 100, 200, 29.545454545455, 28.888888888889, 2.8888888888889, 'Aktif', 3571, 'JAGOSOSMED', 'Sosial Media'),
(389, 389, 'SoundCloud', 'Soundcloud Followers JS 5 [ 50K/Day ] [ No refill ]', 'Start: instant - 30 minutes\nSpeed: 50K/Day\nNo refill', 20, 50000, 16102.272727273, 15744.444444444, 1574.4444444444, 'Aktif', 3572, 'JAGOSOSMED', 'Sosial Media'),
(390, 390, 'SoundCloud', 'Soundcloud Followers JS 6 [ 30 days Guarantee ]', 'Refill : 30 days Guarantee', 50, 15000, 19647.727272727, 19211.111111111, 1921.1111111111, 'Aktif', 3573, 'JAGOSOSMED', 'Sosial Media'),
(391, 391, 'SoundCloud', 'Soundcloud Followers JS 7 [ 30 days Guarantee ] [ Max 1M ] [ Non Drop ]', '30 Day Refill Button\n200k/day', 20, 1000000, 21863.636363636, 21377.777777778, 2137.7777777778, 'Aktif', 3574, 'JAGOSOSMED', 'Sosial Media'),
(392, 392, 'SoundCloud', 'SoundCloud Plays [ 250k/day ] [ R30 ] Instant', 'Instant\n250k/day\nR30Days', 500, 100000000, 310.22727272727, 303.33333333333, 30.333333333333, 'Aktif', 2964, 'JAGOSOSMED', 'Sosial Media'),
(393, 393, 'SoundCloud', 'SoundCloud Plays [1.5M]', 'Real\n0-1 Hour Start!\n50K - 100K/Day\nMultiple of 100\nMinimum 100', 100, 1500000, 1403.4090909091, 1372.2222222222, 137.22222222222, 'Aktif', 101, 'JAGOSOSMED', 'Sosial Media'),
(394, 394, 'SoundCloud', 'SoundCloud Plays [10M]', 'Real\n0-1 Hour Start!\n10K - 100K/Day\nMinimum 20', 20, 10000000, 2334.0909090909, 2282.2222222222, 228.22222222222, 'Aktif', 102, 'JAGOSOSMED', 'Sosial Media'),
(395, 395, 'SoundCloud', 'SoundCloud Plays [Max: 10M]', 'Start Time: Instant - 12 hours\nSpeed: 3 to 5mil/ day\nSpecs: Full Link !', 50000, 1000000000, 398.86363636364, 390, 39, 'Aktif', 2481, 'JAGOSOSMED', 'Sosial Media'),
(396, 396, 'Spotify', 'Spotify Followers S1 [1M] min 1000', 'Start Time: Instant - 6 hours\nSpeed: 20K/ day \nRefill: no', 1000, 1000000, 17269.318181818, 16885.555555556, 1688.5555555556, 'Aktif', 725, 'JAGOSOSMED', 'Sosial Media'),
(397, 397, 'Spotify', 'Spotify Followers S2 [1M] min 20', 'Start Time: Instant - 6 hours\nSpeed: 20K/ day \nRefill: no', 20, 1000000, 62532.954545455, 61143.333333333, 6114.3333333333, 'Aktif', 726, 'JAGOSOSMED', 'Sosial Media'),
(398, 398, 'Spotify', 'Spotify Followers S3 [Super Fast] min 20', '100% High-Quality Account\nNo Drop - Life Time Guarantee\nInstant ( Avg 0-3 hrs ) \n500 to 5000 per 24 hour', 20, 1000000, 38409.090909091, 37555.555555556, 3755.5555555556, 'Aktif', 727, 'JAGOSOSMED', 'Sosial Media'),
(399, 399, 'Spotify', 'Spotify Followers S5 [ 1M-2M/day ] [ R90 days ] Max 1M ', 'Instan\nR90 days', 100, 100000000, 6662.5, 6514.4444444444, 651.44444444444, 'Aktif', 3254, 'JAGOSOSMED', 'Sosial Media'),
(400, 400, 'Spotify', 'Spotify Followers S6 [ 5M/day ] [ R30 days ] Max 100M ', 'R30 days\n5M/day', 100, 100000000, 5377.2727272727, 5257.7777777778, 525.77777777778, 'Aktif', 3255, 'JAGOSOSMED', 'Sosial Media'),
(401, 401, 'Spotify', 'Spotify Followers S7 [ User/Playlist/Artist]  [ 1M-2M/day ] [ R365 days ] Max 100M ', 'waktu mulai 0-30 menit\n1M-2M/days\nR365 days', 100, 100000000, 7563.6363636364, 7395.5555555556, 739.55555555556, 'Aktif', 3256, 'JAGOSOSMED', 'Sosial Media'),
(402, 402, 'Spotify Plays  Track | Playlist ', 'Spotify FREE Plays Server 1 [Refill 365 Days] [Max 1M] [ 6 - 18 Hours ] [Speed 500/Day]', 'Speed: 500/Day\n6 - 18 Hours', 1000, 1000000000, 3427.2727272727, 3351.1111111111, 335.11111111111, 'Aktif', 3624, 'JAGOSOSMED', 'Sosial Media'),
(403, 403, 'Spotify Plays  Track | Playlist ', 'Spotify FREE Plays Server 2 [ Lifetime Guaranteed ] [Max 1M] [ 0 - 12 Hours ] [Speed 1K/Day]', '1K/Day\nStart Time: 0 - 12 Hours', 1000, 1000000000, 3582.3863636364, 3502.7777777778, 350.27777777778, 'Aktif', 3625, 'JAGOSOSMED', 'Sosial Media'),
(404, 404, 'Spotify Plays  Track | Playlist ', 'Spotify Playlists FREE S2 [ 60 days refill ] [ Speed 1k-2k/days ]', 'Correct format: \nhttps://open.spotify.com/album/2beOdusX0eDgXQ7KdX8IVf\nhttps://open.spotify.com/playlist/4jHJBBSbRZp2SNFeHoJMfA', 1000, 10000000, 20711.363636364, 20251.111111111, 2025.1111111111, 'Aktif', 730, 'JAGOSOSMED', 'Sosial Media'),
(405, 405, 'Spotify Plays  Track | Playlist ', 'Spotify Plays [ 1k/100M] [ 2k -5k/days ] [Non Drop]', 'Link: https://open.spotify.com/track/1LYYsrjs2VIKB8t534B3cm\nStart: Instant ( Avg 0-3 hrs )\nSpeed: 2k to 5k per 24 hours\nRefill: Lifetime', 1000, 100000000, 4136.3636363636, 4044.4444444444, 404.44444444444, 'Aktif', 3252, 'JAGOSOSMED', 'Sosial Media'),
(406, 406, 'Spotify Plays  Track | Playlist ', 'Spotify Plays [ 1k/10M ] [ 2-3k/day ] [ Lifetime Guaranteed ]', '24-48h start\n2-3k/day\nLifetime Guaranteed', 100, 100000000, 3770, 3686.2222222222, 368.62222222222, 'Aktif', 3614, 'JAGOSOSMED', 'Sosial Media'),
(407, 407, 'Spotify Plays  Track | Playlist ', 'Spotify Plays [ 1k/10M] [ 2-3k/day ] [ Lifetime Guaranteed ] ', 'Lifetime Guaranteed\nwaktu mulai 2x24 jam', 1000, 100000000, 3545.4545454545, 3466.6666666667, 346.66666666667, 'Aktif', 3250, 'JAGOSOSMED', 'Sosial Media'),
(408, 408, 'Spotify Plays  Track | Playlist ', 'Spotify Plays [ 1k/10M] [ 20k-30k/day ] [ Lifetime Guaranteed ] ', 'waktu mulai 1x24 jam', 1000, 100000000, 8730.6818181818, 8536.6666666667, 853.66666666667, 'Aktif', 3251, 'JAGOSOSMED', 'Sosial Media'),
(409, 409, 'Spotify Plays  Track | Playlist ', 'Spotify Plays [ 1k/500K ] [ 30k/day ] [ Lifetime Guarantee ] ', 'Start: Instant\nSpeed: 30k\nRefill: Lifetime Guarantee', 5000, 500000, 4431.8181818182, 4333.3333333333, 433.33333333333, 'Aktif', 3526, 'JAGOSOSMED', 'Sosial Media'),
(410, 410, 'Spotify Plays  Track | Playlist ', 'Spotify Plays [ 1M ] Speed : 500 - 3500/D', '- Start Time: 1 - 12 Hours\n- Speed : 500 - 3500/D\n- Refill : Non Drop - LifeTime Guarantee\n- Best Service in the Market\n- Followers from TIER 1 countries only! USA/CA/EU/AU/NZ/UK.\n- Quality: HQ\n- Min/Max: 1000/1M', 1000, 1000000, 13989.772727273, 13678.888888889, 1367.8888888889, 'Aktif', 1225, 'JAGOSOSMED', 'Sosial Media'),
(411, 411, 'Spotify Plays  Track | Playlist ', 'Spotify Plays S1', 'Spotify Plays S1', 1000, 1000000, 26339.772727273, 25754.444444444, 2575.4444444444, 'Aktif', 728, 'JAGOSOSMED', 'Sosial Media'),
(412, 412, 'Spotify', 'Spotify USA Playlist Followers [Lifetime Guaranteed] [Max: 1M] [Start Time: 12 Hours] [Speed: 50K/Day] ♻️', 'Start Time: Usually INSTANT - can take up to 12 Hours.\nSpeed: Usually 50K/Day (can be as slow as 5K/Day sometimes due to overloads).', 20, 100000000, 14255.681818182, 13938.888888889, 1393.8888888889, 'Aktif', 3249, 'JAGOSOSMED', 'Sosial Media'),
(413, 413, 'Telegram Channnel Members/Group', 'Telegram - Channnel Members [ Max 3K]', 'Channel Only\n5k/day\nNo Refill\n1-12hrs start\nMin 100, Max 100k', 100, 3000, 30786.363636364, 30102.222222222, 3010.2222222222, 'Aktif', 469, 'JAGOSOSMED', 'Sosial Media'),
(414, 414, 'Telegram Channnel Members/Group', 'Telegram - Channnel Members/Group Server 11 [100K] [ Refill 30 days ] ', 'Instant\nSpeed: 20K+ day\nNon Drop 30 day', 10, 200000, 19440.909090909, 19008.888888889, 1900.8888888889, 'Aktif', 2465, 'JAGOSOSMED', 'Sosial Media'),
(415, 415, 'Telegram Channnel Members/Group', 'Telegram - Channnel Members/Group Server 14  [ 50K ] [ Refill 3 days ]', 'Instant\nSpeed 30-50k day\nRefill 3 day\nOnly publics are accepted', 100, 20000, 8878.4090909091, 8681.1111111111, 868.11111111111, 'Aktif', 2565, 'JAGOSOSMED', 'Sosial Media'),
(416, 416, 'Telegram Channnel Members/Group', 'Telegram - Channnel Members/Group Server 15 [ 100K ] Garansi 1 TAHUN', '70k-100k/day\nNO DROP\nKALO DROP TINGGAL MINTA REFILL DI TIKET\nINSTAN', 100, 100000, 27743.181818182, 27126.666666667, 2712.6666666667, 'Aktif', 2748, 'JAGOSOSMED', 'Sosial Media'),
(417, 417, 'Telegram Channnel Members/Group', 'Telegram - Channnel Members/Group Server 4 [ Max 15K] R10Days', 'Mulai: 1-30 Menit\nKecepatan: 5000 / hari\nRefill 10Days\nKualitas: Real\nJika Anda Telah Mengubah Tautan Atau Saluran Dihapus Tidak Akan Ada Pembatalan Pesanan', 500, 15000, 33179.545454545, 32442.222222222, 3244.2222222222, 'Aktif', 1967, 'JAGOSOSMED', 'Sosial Media'),
(418, 418, 'Telegram Channnel Members/Group', 'Telegram - Channnel Members/Group Server 6 [ Max 10K] REAL INDIA ', 'Link: Https://T.Me/Username\nStart: 0-360 Min\nSpeed: 5000/D\nRefill: 30 Days\nQuality: INDIAN\nJika Anda Telah Mengubah Tautan Atau Saluran Dihapus Tidak Akan Ada canceled Pesanan', 10, 10000, 36621.590909091, 35807.777777778, 3580.7777777778, 'Aktif', 2013, 'JAGOSOSMED', 'Sosial Media'),
(419, 419, 'Telegram auto post view ( Future/masa depan )', 'Telegram auto post view ( Future 10 posts ) ', 'Auto view for Future posts\nTrusted Service and Full Auto\nSuitable for Public channels', 100, 2000000, 1876.1363636364, 1834.4444444444, 183.44444444444, 'Aktif', 3062, 'JAGOSOSMED', 'Sosial Media'),
(420, 420, 'Telegram auto post view ( Future/masa depan )', 'Telegram auto post view ( Future 100 posts ) ', 'Auto view for Future posts\nTrusted Service and Full Auto\nSuitable for Public channels', 100, 250000, 18731.818181818, 18315.555555556, 1831.5555555556, 'Aktif', 3065, 'JAGOSOSMED', 'Sosial Media'),
(421, 421, 'Telegram auto post view ( Future/masa depan )', 'Telegram auto post view ( Future 30 posts ) ', 'Auto view for Future posts\nTrusted Service and Full Auto\nSuitable for Public channels', 100, 2000000, 5731.8181818182, 5604.4444444444, 560.44444444444, 'Aktif', 3063, 'JAGOSOSMED', 'Sosial Media'),
(422, 422, 'Telegram auto post view ( Future/masa depan )', 'Telegram auto post view ( Future 5 posts ) ', 'Auto view for Future posts\nTrusted Service and Full Auto\nSuitable for Public channels', 100, 2000000, 960.22727272727, 938.88888888889, 93.888888888889, 'Aktif', 3061, 'JAGOSOSMED', 'Sosial Media'),
(423, 423, 'Telegram auto post view ( Future/masa depan )', 'Telegram auto post view ( Future 50 posts ) ', 'Auto view for Future posts\nTrusted Service and Full Auto\nSuitable for Public channels', 100, 2000000, 8878.4090909091, 8681.1111111111, 868.11111111111, 'Aktif', 3064, 'JAGOSOSMED', 'Sosial Media'),
(424, 424, 'Telegram Reactions', 'Telegram BeamingFace Reaction + Views (20/300k) [ 10k/hr ] ', 'INSTAN\nFAST', 20, 300000, 10119.318181818, 9894.4444444444, 989.44444444444, 'Aktif', 2588, 'JAGOSOSMED', 'Sosial Media'),
(425, 425, 'Telegram Channnel Members/Group', 'Telegram Channnel Members [ Max 10K]  48 Hour NonDrop', 'Instant\nSpeed: 1-5K day\nBisa Req Cancelled\nNo guaranteed\n48 Hour NonDrop/kemungkinan besar lewat 48hours drop\nkami tidak ada garansi', 100, 30000, 9232.9545454545, 9027.7777777778, 902.77777777778, 'Aktif', 1502, 'JAGOSOSMED', 'Sosial Media'),
(426, 426, 'Telegram Channnel Members/Group', 'Telegram Channnel Members 17 [ 30K ] [ Refill 45 days ] Non Drop', 'Instant\n7k-15k/day\nR45\nNon Drop', 500, 30000, 21125, 20655.555555556, 2065.5555555556, 'Aktif', 2959, 'JAGOSOSMED', 'Sosial Media'),
(427, 427, 'Telegram Channnel Members/Group', 'Telegram Channnel Members 19 [ 100K ] [ Refill 1 year ] Non Drop ', 'Instant\n70k-100k/day\nNon Drop\n1 year guarantee\nHanya bisa refill dari akun yg turun dari layanan ini!', 100, 100000, 26590.909090909, 26000, 2600, 'Aktif', 2961, 'JAGOSOSMED', 'Sosial Media'),
(428, 428, 'Telegram Channnel Members/Group', 'Telegram Channnel Members 20 [ 100K ] [ Real - 30 Days Refill ] [ 50K/days ]', '50K/days\n30 Days Refill', 500, 100000, 17535.227272727, 17145.555555556, 1714.5555555556, 'Aktif', 3089, 'JAGOSOSMED', 'Sosial Media'),
(429, 429, 'Telegram Channnel Members/Group', 'Telegram Channnel Members 21 [ 700K ] [ Real - 90 Days Refill ] [ 50K/days ] ', '90 Days Refill\n50K/days', 100, 700000, 25025, 24468.888888889, 2446.8888888889, 'Aktif', 3090, 'JAGOSOSMED', 'Sosial Media'),
(430, 430, 'Telegram Channnel Members/Group', 'Telegram Channnel Members/Group Server 24 [NO LIMIT] [ NonDrop l FAST ', 'Instant\nSpeed: 50K+ day\nNonDrop\nThe database is updated every day.', 100, 40000, 23636.363636364, 23111.111111111, 2311.1111111111, 'Aktif', 3439, 'JAGOSOSMED', 'Sosial Media'),
(431, 431, 'Telegram Reactions', 'Telegram CryingFace Reaction + Views (20/300k) [ 10k/hr ] ', 'INSTAN\nFAST', 20, 300000, 10119.318181818, 9894.4444444444, 989.44444444444, 'Aktif', 2589, 'JAGOSOSMED', 'Sosial Media'),
(432, 432, 'Telegram Reactions', 'Telegram Dislike Reaction + Views (20/300k) [ 10k/hr ] ', 'Instan\nFAST', 20, 300000, 10119.318181818, 9894.4444444444, 989.44444444444, 'Aktif', 2582, 'JAGOSOSMED', 'Sosial Media'),
(433, 433, 'Telegram Reactions', 'Telegram Fire [?] Reaction ', 'Proses bisa 1-2 hari\nbisa lebih cepat dan lebih lama', 10, 5000000, 930.68181818182, 910, 91, 'Aktif', 2578, 'JAGOSOSMED', 'Sosial Media'),
(434, 434, 'Telegram Reactions', 'Telegram Fire Reaction + Views (20/300k) [ 10k/hr ] ', 'INSTAN\nFAST', 20, 300000, 10119.318181818, 9894.4444444444, 989.44444444444, 'Aktif', 2584, 'JAGOSOSMED', 'Sosial Media'),
(435, 435, 'Telegram Reactions', 'Telegram Heart Reaction + Views (20/300k) [ 10k/hr ] ', 'Instan \nFAST', 20, 300000, 10119.318181818, 9894.4444444444, 989.44444444444, 'Aktif', 2583, 'JAGOSOSMED', 'Sosial Media'),
(436, 436, 'Telegram Reactions', 'Telegram Like [?] Reaction ', 'Proses bisa 1-2 hari\nbisa lebih cepat dan lebih lama', 1, 10000, 930.68181818182, 910, 91, 'Aktif', 2580, 'JAGOSOSMED', 'Sosial Media'),
(437, 437, 'Telegram Reactions', 'Telegram Like Reaction + Views (20/300k) [ 10k/hr ]', 'FAST \nINSTAN', 20, 300000, 10119.318181818, 9894.4444444444, 989.44444444444, 'Aktif', 2581, 'JAGOSOSMED', 'Sosial Media'),
(438, 438, 'Telegram Channnel Members/Group', 'Telegram Members [HQ] (100/30k) {5k-10k/hr} [1 Year Guarantee]', 'Instan', 100, 3000000, 25562.727272727, 24994.666666667, 2499.4666666667, 'Aktif', 3265, 'JAGOSOSMED', 'Sosial Media'),
(439, 439, 'Telegram Reactions', 'Telegram Muntah ( FaceVomiting ) Reaction + Views (20/300k) [ 10k/hr ] ', 'INSTAN\nFAST', 20, 300000, 10119.318181818, 9894.4444444444, 989.44444444444, 'Aktif', 2591, 'JAGOSOSMED', 'Sosial Media'),
(440, 440, 'Telegram Reactions', 'Telegram PartyPopper [ ? ] Reaction', 'Proses bisa 1-2 hari\nbisa lebih cepat', 1, 10000, 930.68181818182, 910, 91, 'Aktif', 2576, 'JAGOSOSMED', 'Sosial Media'),
(441, 441, 'Telegram Reactions', 'Telegram PartyPopper Reaction + Views (20/300k) [ 10k/hr ] ', 'INSTAN\nFAST', 20, 300000, 10119.318181818, 9894.4444444444, 989.44444444444, 'Aktif', 2585, 'JAGOSOSMED', 'Sosial Media'),
(442, 442, 'Telegram Reactions', 'Telegram Post Reactions + Views [Negative] [Refill: No] [Max: 1M] [Start Time: 0-1 Hour] [Speed: 600K/Day] ', 'Pesan 1000 kadang yg masuk tidak tepat 1000 bisa cuman 500 ( no kompline )\ndan coba dlu pesan 100 karna ada beberapa chanel/grup yang tidak support\nkami tidak ada refund jika status sukses tetapi react nya gk masuk\nInstant start.\nInstant complete.\nGroup or channel\nPublic links only', 50, 1000000, 590.90909090909, 577.77777777778, 57.777777777778, 'Aktif', 2625, 'JAGOSOSMED', 'Sosial Media'),
(443, 443, 'Telegram Reactions', 'Telegram Post Reactions + Views [Positive]  [Refill: No] [Max: 1M] [Start Time: 0-1 Hour] [Speed: 600K/Day]', 'Pesan 1000 kadang yg masuk tidak tepat 1000 bisa cuman 500 ( no kompline )\ndan coba dlu pesan 100 karna ada beberapa chanel/grup yang tidak support\nkami tidak ada refund jika status sukses tetapi react nya gk masuk\nInstant start.\nInstant complete.\nGroup or channel\nPublic links only', 50, 1000000, 590.90909090909, 577.77777777778, 57.777777777778, 'Aktif', 2624, 'JAGOSOSMED', 'Sosial Media'),
(444, 444, 'Telegram Post View', 'Telegram Post Views ( Instant-5 minute Start, Superfast, Real )', 'INSTANT START\nSPEED 500K PER DAY', 100, 3000000, 7.3863636363636, 7.2222222222222, 0.72222222222222, 'Aktif', 3052, 'JAGOSOSMED', 'Sosial Media'),
(445, 445, 'Telegram Post View', 'Telegram Post Views [ Last 1 Post ] Max 50M [ SuperFast ]', 'SuperFast\nLast 1 Post', 10, 50000000, 2.9545454545455, 2.8888888888889, 0.28888888888889, 'Aktif', 3370, 'JAGOSOSMED', 'Sosial Media'),
(446, 446, 'Telegram Post View', 'Telegram Post Views [ Last 10 Post ] Max 50M [ SuperFast ] ', 'Speed: Day 100K\nNo Drop\nLast 10 Post', 10, 50000000, 192.04545454545, 187.77777777778, 18.777777777778, 'Aktif', 3453, 'JAGOSOSMED', 'Sosial Media'),
(447, 447, 'Telegram Post View', 'Telegram Post Views [ Last 100 Post ] Max 50M [ SuperFast ]', 'Speed: Day 100K\nNo Drop\nLast 5 Post', 10, 50000000, 2068.1818181818, 2022.2222222222, 202.22222222222, 'Aktif', 3456, 'JAGOSOSMED', 'Sosial Media'),
(448, 448, 'Telegram Post View', 'Telegram Post Views [ Last 1000 Post ] Max 50M [ SuperFast ] ', 'Speed: Day 100K\nNo Drop\nLast 1000 Post', 10, 50000000, 14181.818181818, 13866.666666667, 1386.6666666667, 'Aktif', 3459, 'JAGOSOSMED', 'Sosial Media'),
(449, 449, 'Telegram Post View', 'Telegram Post Views [ Last 20 Post ] Max 50M [ SuperFast ] ', 'Speed: Day 100K\nNo Drop\nLast 20 Post', 10, 50000000, 502.27272727273, 491.11111111111, 49.111111111111, 'Aktif', 3454, 'JAGOSOSMED', 'Sosial Media'),
(450, 450, 'Telegram Post View', 'Telegram Post Views [ Last 5 Post ] Max 50M [ SuperFast ] ', 'Speed: Day 100K\nNo Drop\nLast 5 Post', 10, 50000000, 66.477272727273, 65, 6.5, 'Aktif', 3452, 'JAGOSOSMED', 'Sosial Media'),
(451, 451, 'Telegram Post View', 'Telegram Post Views [ Last 50 Post ] Max 50M [ SuperFast ] ', 'Speed: Day 100K\nNo Drop\nLast 50 Post', 10, 50000000, 1019.3181818182, 996.66666666667, 99.666666666667, 'Aktif', 3455, 'JAGOSOSMED', 'Sosial Media'),
(452, 452, 'Telegram Post View', 'Telegram Post Views [ Last 500 Post ] Max 50M [ SuperFast ]', 'Speed: Day 100K\nNo Drop\nLast 500 Post', 10, 50000000, 9676.1363636364, 9461.1111111111, 946.11111111111, 'Aktif', 3457, 'JAGOSOSMED', 'Sosial Media'),
(453, 453, 'Telegram Post View', 'Telegram Post Views [ Last 750 Post ] Max 50M [ SuperFast ] ', 'Speed: Day 100K\nNo Drop\nLast 750 Post', 10, 50000000, 11609.886363636, 11351.888888889, 1135.1888888889, 'Aktif', 3458, 'JAGOSOSMED', 'Sosial Media'),
(454, 454, 'Telegram Post View', 'Telegram Post Views [1 Post] FAST', 'FAST\nLifetime Refill', 100, 100000000, 5.9090909090909, 5.7777777777778, 0.57777777777778, 'Aktif', 3159, 'JAGOSOSMED', 'Sosial Media'),
(455, 455, 'Telegram Post View', 'Telegram Post Views [10K] [Last 1] ', 'Start Time: Instant - 1 hour\nSpeed: 10K to 20K/ day\nRefill: no\nSpecs: Latest Post\nSend Post Link Or channel id\nExample Link: https://t.me/link_example/994', 100, 200000, 945.45454545455, 924.44444444444, 92.444444444444, 'Aktif', 1459, 'JAGOSOSMED', 'Sosial Media'),
(456, 456, 'Telegram Post View', 'Telegram Post Views [10K] [Last 5]', 'Views Will Be Added To Your Last 5 Posts\nReal\n0-1 Hour Start!\n24 Hours Delivery\nMinimum 100', 100, 10000, 6632.9545454545, 6485.5555555556, 648.55555555556, 'Aktif', 108, 'JAGOSOSMED', 'Sosial Media'),
(457, 457, 'Telegram Post View', 'Telegram Post Views [500K] [Last 1 Post] ', 'Last 1 Post', 100, 500000, 221.59090909091, 216.66666666667, 21.666666666667, 'Aktif', 1942, 'JAGOSOSMED', 'Sosial Media'),
(458, 458, 'Telegram Post View', 'Telegram Post Views [500K] [Last 10 Post] ', 'Last 10 Post', 50, 500000, 2068.1818181818, 2022.2222222222, 202.22222222222, 'Aktif', 1943, 'JAGOSOSMED', 'Sosial Media'),
(459, 459, 'Telegram Post View', 'Telegram Post Views [90M] [ 1 Post ] TERMURAH DAN SUPERFAST', 'Instant\n2jt/hari\nNon Drop\nTarget/data  masukin link contoh https://t.me/medanpediaSMM/192\nExample Link: https://t.me/Your_Group/MessageID\nAtau bisa \nTarget/data  masukin link contoh https://t.me/medanpediaSMM\nExample Link: https://t.me/Your_Group/\nuntuk postingan terakhir', 100, 90000000, 44.318181818182, 43.333333333333, 4.3333333333333, 'Aktif', 2592, 'JAGOSOSMED', 'Sosial Media'),
(460, 460, 'Telegram Reactions', 'Telegram ScreaminFace Reaction + Views (20/300k) [ 10k/hr ] ', 'INSTAN \nFAST', 20, 300000, 10119.318181818, 9894.4444444444, 989.44444444444, 'Aktif', 2587, 'JAGOSOSMED', 'Sosial Media'),
(461, 461, 'Telegram Reactions', 'Telegram StarStruck [ ? ] Reaction ', 'Proses bisa 1-2 hari\nbisa lebih cepat', 10, 5000000, 930.68181818182, 910, 91, 'Aktif', 2577, 'JAGOSOSMED', 'Sosial Media'),
(462, 462, 'Telegram Reactions', 'Telegram StarStruck Reaction + Views (20/300k) [ 10k/hr ] ', 'INSTAN\nFAST', 20, 300000, 10119.318181818, 9894.4444444444, 989.44444444444, 'Aktif', 2586, 'JAGOSOSMED', 'Sosial Media'),
(463, 463, 'Telegram Story Views', 'Telegram Story Views [ HQ Services ] [ Max: 500K ] [ 50K/days ]', '- Real Look Accounts\n- Start Time: Instant\n\nContoh Target:\nhttps://t.me/username/s/1', 10, 500000, 9602.2727272727, 9388.8888888889, 938.88888888889, 'Aktif', 3460, 'JAGOSOSMED', 'Sosial Media'),
(464, 464, 'Telegram Reactions', 'Telegram Tai ( PileofPoo ) Reaction + Views (20/300k) [ 10k/hr ] ', 'INSTAN\nFAST', 20, 300000, 10119.318181818, 9894.4444444444, 989.44444444444, 'Aktif', 2590, 'JAGOSOSMED', 'Sosial Media'),
(465, 465, 'Telegram Reactions', 'Telegram Tai [?] Reaction', 'Proses bisa 1-2 hari\nbisa lebih cepat dan lebih lama', 10, 5000000, 280.68181818182, 274.44444444444, 27.444444444444, 'Aktif', 2579, 'JAGOSOSMED', 'Sosial Media'),
(466, 466, 'Threads Comments', 'Threads Custom Comments S1 [ max 500 ] [ 30 Days Guaranteed ] [ 100% Real ]', 'max 500\n30 Days Guaranteed', 5, 500, 262954.54545455, 257111.11111111, 25711.111111111, 'Aktif', 3341, 'JAGOSOSMED', 'Sosial Media'),
(467, 467, 'Threads Comments', 'Threads Custom Comments S2 [ Max 2K ] [ FAST ] [ 100% Real ] ', '100% Real\nMax 2K', 5, 2000, 562973.86363636, 550463.33333333, 55046.333333333, 'Aktif', 3342, 'JAGOSOSMED', 'Sosial Media'),
(468, 468, 'Threads Followers', 'Threads Followers S1 [ Max 5K ] [ 100% Real | 30 Days Guaranteed ]', '100% Real | 30 Days Guaranteed\nMax 5K', 50, 10000, 50965.909090909, 49833.333333333, 4983.3333333333, 'Aktif', 3333, 'JAGOSOSMED', 'Sosial Media'),
(469, 469, 'Threads Followers', 'Threads Followers S10 [ MURAH ] [ No refill ]', 'No garansi apapun', 50, 10000, 15969.318181818, 15614.444444444, 1561.4444444444, 'Aktif', 3374, 'JAGOSOSMED', 'Sosial Media'),
(470, 470, 'Threads Followers', 'Threads Followers S11 [ MURAH ] [ No refill ] [ 20k/days ]', 'Instant Start\nNo refill\n20k/days', 10, 10000, 5702.2727272727, 5575.5555555556, 557.55555555556, 'Aktif', 3385, 'JAGOSOSMED', 'Sosial Media'),
(471, 471, 'Threads Followers', 'Threads Followers S12 [ refill 30 days ] [ 10k/days ]', 'refill 30 days\n10k/days', 10, 20000, 12276.136363636, 12003.333333333, 1200.3333333333, 'Aktif', 3423, 'JAGOSOSMED', 'Sosial Media'),
(472, 472, 'Threads Followers', 'Threads Followers S2 [ Max 2K ] [ 100% Real | Fast ] ', '100% Real | Fast\nMax 2K', 5, 2000, 607528.40909091, 594027.77777778, 59402.777777778, 'Aktif', 3334, 'JAGOSOSMED', 'Sosial Media'),
(473, 473, 'Threads Followers', 'Threads Followers S3 [ 50k/days ] [ 100% Real | Refill 30 days ] ', 'Target : https://www.threads.net/@example OR @example', 10, 25000, 97500, 95333.333333333, 9533.3333333333, 'Aktif', 3335, 'JAGOSOSMED', 'Sosial Media'),
(474, 474, 'Threads Followers', 'Threads Followers S4 [ Max 500 ] [ 100% Real | No Refill ] ', 'CATATAN DEPAN: Jangan mendefinisikan pekerjaan untuk berbagi yang politis, provokatif, ideologis, ilegal, berbahaya bagi kesehatan dan masyarakat.\n\n Pengguna berasal dari situs misi dan 100% akun nyata. Mereka rela berinteraksi dengan posting Anda.\n Jangan pernah memesan untuk kedua kalinya dari layanan ini jika sudah max 500. Jika tidak, saldo Anda dapat hangus.\n\n- Pengguna berasal dari situs tugas.\n- Tautan: Tautan profil utas\n- Kualitas: 100% Pengikut Nyata Aktif Turki\n- Waktu Mulai: Dimulai dalam 1 jam antara pukul 10:00 pagi dan 23:59 malam.\n- Waktu Penyelesaian: Karena mereka adalah pengguna nyata, mereka bebas berdagang di akun yang mereka inginkan. Sebagian besar dari mereka tiba dalam 1 hari tetapi bisa memakan waktu beberapa hari untuk menyelesaikannya.\n- Drop rate rendah, tetapi karena mereka adalah pengguna nyata, kami tidak dapat memberikan kontrol untuk berhenti mengikuti dalam jangka panjang.\n\nCatatan:\n- Tidak mungkin mengirim ke akun pribadi. Jangan sembunyikan akun Anda atau ubah nama pengguna Anda selama proses berlangsung.', 10, 500, 339772.72727273, 332222.22222222, 33222.222222222, 'Aktif', 3336, 'JAGOSOSMED', 'Sosial Media'),
(475, 475, 'Threads Followers', 'Threads Followers S5 [ Max 500 ] [ 100% Real | No Refill ] ', '100% Real\nNo Refill', 10, 500, 302840.90909091, 296111.11111111, 29611.111111111, 'Aktif', 3337, 'JAGOSOSMED', 'Sosial Media'),
(476, 476, 'Threads Followers', 'Threads Followers S6 [ Max 1M ] [ Refill 30days ] ', 'Max 1M', 100, 1000000, 145526.13636364, 142292.22222222, 14229.222222222, 'Aktif', 3347, 'JAGOSOSMED', 'Sosial Media'),
(477, 477, 'Threads Followers', 'Threads Followers S7 [ BOT INDO ] [ Refill 20days ] ', 'Karena instagram threads masih baru kami berikan garansi refill dan garansi jika drop 100% seperti instagram\nakun threads saat di kunjungi belum tersedia/ blm registrasi tapi akun tetap menambah folllowers threads!!!!', 100, 100000, 43579.545454545, 42611.111111111, 4261.1111111111, 'Aktif', 3349, 'JAGOSOSMED', 'Sosial Media'),
(478, 478, 'Threads Followers', 'Threads Followers S8 [ BOT INDO ] [ Refill 7 days ] ', 'Karena instagram threads masih baru kami berikan garansi refill dan garansi jika drop 100% seperti instagram\nakun threads saat di kunjungi belum tersedia/ blm registrasi tapi akun tetap menambah folllowers threads!!!!', 100, 5000, 29545.454545455, 28888.888888889, 2888.8888888889, 'Aktif', 3359, 'JAGOSOSMED', 'Sosial Media'),
(479, 479, 'Threads Followers', 'Threads Followers S9 [ 10K/days ] [ Refill 60 days ]', '10K/days\nRefill 60 days', 10, 10000, 51246.590909091, 50107.777777778, 5010.7777777778, 'Aktif', 3360, 'JAGOSOSMED', 'Sosial Media'),
(480, 480, 'Threads Likes', 'Threads Likes S1 [ Max 10K ] [ 100% Real | 30 Days Refill ] ', '100% Real | 30 Days Refill\nMax 10K', 50, 10000, 113011.36363636, 110500, 11050, 'Aktif', 3338, 'JAGOSOSMED', 'Sosial Media'),
(481, 481, 'Threads Likes', 'Threads Likes S2 [ Max 2K ] [ 100% Real | Fast ] ', '100% Real | Fast', 5, 2000, 253160.22727273, 247534.44444444, 24753.444444444, 'Aktif', 3339, 'JAGOSOSMED', 'Sosial Media'),
(482, 482, 'Threads Likes', 'Threads Likes S3 [ max 500 ] [ 100% Turkish Data ] ', '100% Turkish Data\nmax 500', 10, 500, 177272.72727273, 173333.33333333, 17333.333333333, 'Aktif', 3340, 'JAGOSOSMED', 'Sosial Media'),
(483, 483, 'Threads Likes', 'Threads Likes S4 [ max 100k ] [ 100% REAL ] [ 30k/days ]', '30k/days', 20, 100000, 70909.090909091, 69333.333333333, 6933.3333333333, 'Aktif', 3350, 'JAGOSOSMED', 'Sosial Media'),
(484, 484, 'Threads Likes', 'Threads Likes S5 [ max 10k ] [ No Refill ] [ 20k/days ]', '20k/days\nNo Refill', 10, 10000, 5702.2727272727, 5575.5555555556, 557.55555555556, 'Aktif', 3386, 'JAGOSOSMED', 'Sosial Media'),
(485, 485, 'Threads Likes', 'Threads Likes S6 [ max 20k ] [ 30 days Refill ] [ 10k/days ]', '30 days Refill\n10k/days\n', 10, 20000, 11522.727272727, 11266.666666667, 1126.6666666667, 'Aktif', 3422, 'JAGOSOSMED', 'Sosial Media'),
(486, 486, 'Threads Reshare', 'Threads Reshare S1 [ Max 5K ] [ 30 Days Guaranteed ] [ 100% Real ] ', '30 Days Guaranteed', 10, 5000, 127045.45454545, 124222.22222222, 12422.222222222, 'Aktif', 3343, 'JAGOSOSMED', 'Sosial Media'),
(487, 487, 'TikTok Followers', 'TIK TOK FOLLOWERS S5 [ 30 days refill - Full URL ]  ⚡️⚡️⚡️', '- Speed 5000 per day\n- Avatars Followers and Likes\n- 30 days warranty\n- instant start to 5 minute start Time\n( Contoh Target yang kamu masukin https://www.tiktok.com/@username )', 10, 30000, 56136.363636364, 54888.888888889, 5488.8888888889, 'Aktif', 1342, 'JAGOSOSMED', 'Sosial Media'),
(488, 488, 'TikTok Likes', 'TIK TOK Likes JS 2 [ HQ ] [ NON-DROP] ', 'NON-DROP & HQ\n1000/hours\nwaktu mulai 0-12 jam', 20, 5000, 65369.318181818, 63916.666666667, 6391.6666666667, 'Aktif', 1876, 'JAGOSOSMED', 'Sosial Media'),
(489, 489, 'TikTok Likes', 'TIK TOK Likes S5 [ 30 days refill - Full URL ] ', 'Complete URL \n30 days refill\nSpeed 2-5k/Day', 10, 15000, 163740.90909091, 160102.22222222, 16010.222222222, 'Aktif', 1241, 'JAGOSOSMED', 'Sosial Media'),
(490, 490, 'TikTok Likes', 'TIK TOK Likes S6 [ 30 days refill - Full URL ] ', '- Speed 5000 per day\n- Avatars Followers and Likes\n- 30 days warranty\n- instant start to 5 minute start Time', 9, 30000, 112331.81818182, 109835.55555556, 10983.555555556, 'Aktif', 1343, 'JAGOSOSMED', 'Sosial Media'),
(491, 491, 'TikTok Likes', 'TIK TOK Likes Server 1 [ 30 days refill  ] [ SuperInstant  ] ', '25K/Day\nGuarantee : 30 Days', 100, 30000, 19913.636363636, 19471.111111111, 1947.1111111111, 'Aktif', 1592, 'JAGOSOSMED', 'Sosial Media'),
(492, 492, 'TikTok View', 'TIK TOK View S13 [ WORK AFTER UPDATE ] INSTAN', 'Fast\nmin 100', 100, 1000000, 76.818181818182, 75.111111111111, 7.5111111111111, 'Aktif', 1896, 'JAGOSOSMED', 'Sosial Media'),
(493, 493, 'Tiktok Comments ', 'Tiktok 1 Comments random [ Akun centang biru/ VERIFIED ] EKLUSIVE', 'proses 2-7 hari\nno refill', 1000, 1000, 31569.318181818, 30867.777777778, 3086.7777777778, 'Aktif', 2326, 'JAGOSOSMED', 'Sosial Media'),
(494, 494, 'TikTok INDONESIA', 'TikTok Followers Indonesia BONUS++ [ 30 Days Refill - EKLUSIVE ] ', 'indo pasif\nproses 3x24 jam\ndapat bonus jika beruntung', 100, 1000, 130000, 127111.11111111, 12711.111111111, 'Aktif', 1986, 'JAGOSOSMED', 'Sosial Media'),
(495, 495, 'TikTok Followers', 'TikTok Followers JS 2 [ 1K/day ] [ NO Refill ] [ max 200k ] ', 'Instan', 10, 200000, 89375, 87388.888888889, 8738.8888888889, 'Aktif', 2999, 'JAGOSOSMED', 'Sosial Media'),
(496, 496, 'TikTok Followers', 'TikTok Followers JS 26 [ Low Drop - working after update ] [ 100% Real ] [ 1k per day ] No Refill ', 'no drop - 2% drop\ntetapi tetap NO GARANSI apapun yang terjadi!', 10, 50000, 86420.454545455, 84500, 8450, 'Aktif', 3020, 'JAGOSOSMED', 'Sosial Media'),
(497, 497, 'TikTok Followers', 'TikTok Followers JS 27 [ working after update ] [ 100% Real ] [ 500-1k/d and HQ quality ] ', 'no drop tapi jika drop tidak ada garansi!', 25, 5000, 122613.63636364, 119888.88888889, 11988.888888889, 'Aktif', 3037, 'JAGOSOSMED', 'Sosial Media'),
(498, 498, 'TikTok Followers', 'TikTok Followers JS 28 [ working after update ] [ 500-1k/d and Good quality ] ', 'Instans', 10, 5000, 126277.27272727, 123471.11111111, 12347.111111111, 'Aktif', 3038, 'JAGOSOSMED', 'Sosial Media'),
(499, 499, 'TikTok Followers', 'TikTok Followers JS 33 [ 30 Days Refill ] [ Speed: Up To 5K/Day ] ', 'waktu mulai 0-6 jam', 10, 50000, 104413.63636364, 102093.33333333, 10209.333333333, 'Aktif', 3055, 'JAGOSOSMED', 'Sosial Media'),
(500, 500, 'TikTok Followers', 'TikTok Followers JS 34 [ Auto 30 Days Refill ] [ Speed: Up To 1K/Day ] ', '0 - 6 Hours\nAuto 30 Days Refill \n1K/Day\n\n', 10, 10000, 107072.72727273, 104693.33333333, 10469.333333333, 'Aktif', 3066, 'JAGOSOSMED', 'Sosial Media'),
(501, 501, 'TikTok Followers', 'TikTok Followers JS 4 [ 1k/day ] [ NO refill ] [ WANITA ] NEW ', 'akun banyak yg foto perempuan [ tapi gk menutup kemungkinan kemudian hari berubah NO NGELUH MASALAH INI! ]\n30 Days Refill\n1k/day', 10, 200000, 114252.27272727, 111713.33333333, 11171.333333333, 'Aktif', 3001, 'JAGOSOSMED', 'Sosial Media'),
(502, 502, 'TikTok Followers', 'TikTok Followers JS 5 [Refill 30 Days] [Start Time 0 - 1 Hour] [Speed Up to 5K/Day]', 'Refill 30 Days\nStart Time 0 - 1 Hour\nSpeed Up to 5K/Day', 100, 150000, 115892.04545455, 113316.66666667, 11331.666666667, 'Aktif', 3008, 'JAGOSOSMED', 'Sosial Media'),
(503, 503, 'TikTok Followers', 'TikTok Followers S10 [ Working ] [ 80K/Day ] [ Refill 30days ] [ MAX 20K ] ', 'Refill 30days\nSpeed: 80K/Day', 10, 20000, 198855.68181818, 194436.66666667, 19443.666666667, 'Aktif', 3074, 'JAGOSOSMED', 'Sosial Media'),
(504, 504, 'TikTok Followers', 'TikTok Followers S11 [ Perfect Quality ] [ 40K/Day ] [ Refill 30days ] [ MAX 50K ] ', 'Refill 30days\n40K/Day', 10, 50000, 138125, 135055.55555556, 13505.555555556, 'Aktif', 3075, 'JAGOSOSMED', 'Sosial Media'),
(505, 505, 'TikTok Followers', 'TikTok Followers S12 [ 5K/Day ] [ Refill 30days ] [ MAX 100K ] ', 'Refill 30days\n5K/Day', 50, 100000, 51763.636363636, 50613.333333333, 5061.3333333333, 'Aktif', 3076, 'JAGOSOSMED', 'Sosial Media'),
(506, 506, 'TikTok Followers', 'TikTok Followers S13 [ 5K-10K/Day ] [ Refill 30days ] [ MAX 50K ] ', 'Refill 30days\n5K-10K/Day', 10, 50000, 39147.727272727, 38277.777777778, 3827.7777777778, 'Aktif', 3087, 'JAGOSOSMED', 'Sosial Media'),
(507, 507, 'TikTok Followers', 'TikTok Followers S15 [ 3K/Day ] [ Refill 30days ] [ Max 300K ] ', 'Refill 30days\n3K/Day\nwaktu mulai 0-3 hari', 10, 300000, 32500, 31777.777777778, 3177.7777777778, 'Aktif', 3116, 'JAGOSOSMED', 'Sosial Media'),
(508, 508, 'TikTok Followers', 'TikTok Followers S16 [ Real HQ ] [ 20K/Day ] [ HQ ] [ INSTAN ] ', 'kecepatan 20k/jam', 10, 20000, 92920.454545455, 90855.555555556, 9085.5555555555, 'Aktif', 3117, 'JAGOSOSMED', 'Sosial Media'),
(509, 509, 'TikTok Followers', 'TikTok Followers S17 [ SLOW ] [ 50K/Day ] [ Real  ] ', 'SLOW', 50, 50000, 25704.545454545, 25133.333333333, 2513.3333333333, 'Aktif', 3133, 'JAGOSOSMED', 'Sosial Media'),
(510, 510, 'TikTok Followers', 'TikTok Followers S18 [ HQ ] [ 3K/Day ] [Refill 60 Days ] ', '0 - 1 Hour\n3K/Day\n', 5, 100000, 92329.545454545, 90277.777777778, 9027.7777777778, 'Aktif', 3134, 'JAGOSOSMED', 'Sosial Media'),
(511, 511, 'TikTok Followers', 'TikTok Followers S19 [ 5K/Day ] [ Refill 30 Days ] ', 'NonDrop\n5K/Day\nRefill 30 Days', 10, 50000, 88281.818181818, 86320, 8632, 'Aktif', 3135, 'JAGOSOSMED', 'Sosial Media'),
(512, 512, 'TikTok Followers', 'TikTok Followers S23 [ 10k/days ] [ HQ Accounts ] [ No Refill ]', 'No Refill', 100, 500000, 56136.363636364, 54888.888888889, 5488.8888888889, 'Aktif', 3233, 'JAGOSOSMED', 'Sosial Media'),
(513, 513, 'TikTok Followers', 'TikTok Followers S26 | HQ Accounts | 300K | INSTANT | 0-5 Min | 50K/Day⚡ ', '50K/Day\n0-5 Min', 10, 300000, 47715.909090909, 46655.555555556, 4665.5555555556, 'Aktif', 3257, 'JAGOSOSMED', 'Sosial Media'),
(514, 514, 'TikTok Followers', 'TikTok Followers S27 | HQ Accounts | 200K | INSTANT | 0-5 Min | 10K/Day⚡ ', 'No refill', 10, 200000, 39059.090909091, 38191.111111111, 3819.1111111111, 'Aktif', 3263, 'JAGOSOSMED', 'Sosial Media'),
(515, 515, 'TikTok Followers', 'TikTok Followers S28 | Max 500K | Ultra Instant | Speed: 25K/Day | 7 Days Refill ♻️', 'Max 500K\nUltra Instant\nSpeed: 25K/Day\n7 Days Refill', 10, 500000, 58780.681818182, 57474.444444444, 5747.4444444444, 'Aktif', 3270, 'JAGOSOSMED', 'Sosial Media'),
(516, 516, 'TikTok Followers', 'TikTok Followers S29 | Max 250K | Mıx - Fast | 10-50K/days', 'Max 250K\nslow proses. jangan komplen apapun itu jika lambat.\n10-50K/days', 10, 250000, 39162.5, 38292.222222222, 3829.2222222222, 'Aktif', 3271, 'JAGOSOSMED', 'Sosial Media'),
(517, 517, 'TikTok Followers', 'TikTok Followers S30 | Max 30K | Mıx - Fast | 3K-4K/days ', '3K-4K/days \nslow proses. jangan komplen apapun itu jika lambat.\n', 10, 30000, 36606.818181818, 35793.333333333, 3579.3333333333, 'Aktif', 3315, 'JAGOSOSMED', 'Sosial Media'),
(518, 518, 'TikTok Followers', 'TIKTOK Followers S37 [ Max 500K ] [ Refill: 30 Days ] [ 50K/Day ] ', '50K/Day', 50, 500000, 47907.954545455, 46843.333333333, 4684.3333333333, 'Aktif', 3477, 'JAGOSOSMED', 'Sosial Media'),
(519, 519, 'TikTok Followers', 'TIKTOK Followers S38 [ Max 40K ] [ Refill: 30 Days ] [ 10K/Day ] ', 'Start Time: 0 - 6 Hours', 10, 400000, 64261.363636364, 62833.333333333, 6283.3333333333, 'Aktif', 3497, 'JAGOSOSMED', 'Sosial Media'),
(520, 520, 'TikTok Followers', 'TikTok Followers S6 [ NEW ] [ Speed Up To 1K/Day ] ᵁᴾᴰᴬᵀᴱᴰ ', '1K/Day \nNO refill', 10, 100000, 79610.227272727, 77841.111111111, 7784.1111111111, 'Aktif', 3069, 'JAGOSOSMED', 'Sosial Media'),
(521, 521, 'TikTok Followers', 'TikTok Followers S9 [ NEW ] [ Speed Up To 10K/Day ] [ Refill 30days ]  ᵁᴾᴰᴬᵀᴱᴰ', '8K-10K/Day \nRefill 30days', 10, 10000, 112243.18181818, 109748.88888889, 10974.888888889, 'Aktif', 3072, 'JAGOSOSMED', 'Sosial Media'),
(522, 522, 'TikTok Followers', 'TIKTOK FOLLOWERS Server 11 [ 20K/Day ]', '20k/day', 100, 30000, 86863.636363636, 84933.333333333, 8493.3333333333, 'Aktif', 2595, 'JAGOSOSMED', 'Sosial Media'),
(523, 523, 'TikTok Followers', 'TIKTOK FOLLOWERS Server 15 [ refill 30 hari ] [ Instant ] [ 50k/day Speed ] HQ Accounts', 'refill 30 hari\n50k/day Speed\n HQ Accounts', 100, 50000, 53181.818181818, 52000, 5200, 'Aktif', 2661, 'JAGOSOSMED', 'Sosial Media'),
(524, 524, 'TikTok Followers', 'TIKTOK FOLLOWERS Server 16 [ No refill ] [ 10k/day Speed ] ', 'No refill\n\nsekarang bisa refill 30days tapi jika tiba tiba gk bisa refill\nno kompline', 100, 100000, 88222.727272727, 86262.222222222, 8626.2222222222, 'Aktif', 2665, 'JAGOSOSMED', 'Sosial Media');
INSERT INTO `layanan_sosmed` (`id`, `service_id`, `kategori`, `layanan`, `catatan`, `min`, `max`, `harga`, `harga_api`, `profit`, `status`, `provider_id`, `provider`, `tipe`) VALUES
(525, 525, 'TikTok Followers', 'TIKTOK FOLLOWERS Server 22 [ 100/day ] [ 365 Days refill ]', '365 Days refill\nwaktu mulai 0-12 jam', 100, 100000, 91915.909090909, 89873.333333333, 8987.3333333333, 'Aktif', 2790, 'JAGOSOSMED', 'Sosial Media'),
(526, 526, 'TikTok Followers', 'TikTok Followers Server 29 [ 5k-10k/day ] [ 30 days refill ][ HQ ] ', 'instan\n10k/days', 10, 500000, 95003.409090909, 92892.222222222, 9289.2222222222, 'Aktif', 2902, 'JAGOSOSMED', 'Sosial Media'),
(527, 527, 'TikTok Followers', 'TIKTOK FOLLOWERS Server 3 [ R30 ] [ BEST SELLER ]', 'Real and Active Followers and Likes\nProses 1x24 jam', 5, 100000, 60701.136363636, 59352.222222222, 5935.2222222222, 'Aktif', 2441, 'JAGOSOSMED', 'Sosial Media'),
(528, 528, 'TikTok Followers', 'TIKTOK Followers Versi 1 [ Max 200K ] [ Refill: 30 Days ] [ 20K/Day ] ', '20K/Day\nRefill: 30 Days', 500, 200000, 57613.636363636, 56333.333333333, 5633.3333333333, 'Aktif', 3501, 'JAGOSOSMED', 'Sosial Media'),
(529, 529, 'TikTok Followers', 'TIKTOK Followers Versi 10 [ Non drop ] [ 30 days refill ] [ 30k/day speed ]', '30k/day speed', 50, 50000, 41068.181818182, 40155.555555556, 4015.5555555556, 'Aktif', 3546, 'JAGOSOSMED', 'Sosial Media'),
(530, 530, 'TikTok Followers', 'TIKTOK Followers Versi 2 [ Max 50K ] [ Refill: 30 Days ] [ 50K/Day ]', 'Start: 15 min\nSpeed : 50K/Per Day', 200, 50000, 52443.181818182, 51277.777777778, 5127.7777777778, 'Aktif', 3502, 'JAGOSOSMED', 'Sosial Media'),
(531, 531, 'TikTok Followers', 'TIKTOK Followers Versi 3 [ Max 25K ] [ No refill ] [ 5K/Day ] [ REAL ] ', 'Start Time: 0 - 3 Hours\nREAL \nNo refill', 10, 25000, 72386.363636364, 70777.777777778, 7077.7777777778, 'Aktif', 3503, 'JAGOSOSMED', 'Sosial Media'),
(532, 532, 'TikTok Followers', 'TIKTOK Followers Versi 4 [ Max 50K ] [ Refill 30 Days ] [ 5K/Day ] [ REAL ]', 'REAL \nRefill 30 Days', 10, 50000, 96022.727272727, 93888.888888889, 9388.8888888889, 'Aktif', 3504, 'JAGOSOSMED', 'Sosial Media'),
(533, 533, 'TikTok Followers', 'TIKTOK Followers Versi 5 [ Max 300K ] [ NO REFILL ] [ 5K/Day ] [ Real - Fast ]', 'NO REFILL', 10, 300000, 26590.909090909, 26000, 2600, 'Aktif', 3514, 'JAGOSOSMED', 'Sosial Media'),
(534, 534, 'TikTok Followers', 'TIKTOK Followers Versi 6 [ Max 100K ] [ 15 Days Refill ] [ 10K/Day ] [ Real - HQ ] ', '- Speed : 10K Per Day\n- 15 Day Refill\n- Quality: Real & Bot user', 10, 100000, 24375, 23833.333333333, 2383.3333333333, 'Aktif', 3520, 'JAGOSOSMED', 'Sosial Media'),
(535, 535, 'TikTok Followers', 'TIKTOK Followers Versi 7 [ Max 200K ] [ 30 Days Refill ] [ 20K/Day ] [ Real - HQ ] ', '- Speed : 20K Per Day\n- 30 Day Refill\n- Quality: Real & Bot user', 10, 100000, 24965.909090909, 24411.111111111, 2441.1111111111, 'Aktif', 3521, 'JAGOSOSMED', 'Sosial Media'),
(536, 536, 'TikTok Followers', 'TIKTOK Followers Versi 8 [ Max 200K ] [ 60 Days Refill ] [ 30K/Day ] [ Real - HQ ] ', '- Speed : 30K Per Day\n- 60 Day Refill\n- Quality: Real & Bot user', 50, 100000, 25556.818181818, 24988.888888889, 2498.8888888889, 'Aktif', 3522, 'JAGOSOSMED', 'Sosial Media'),
(537, 537, 'TikTok Followers', 'TIKTOK Followers Versi 9 [ Max 50K ] [ 30 Days Refill ] [ 5K/Day ] [ Best Services ]', 'Speed: 3k-5k/Days\nStart: 0-24Hrs\nRefill: 30 days', 100, 50000, 32500, 31777.777777778, 3177.7777777778, 'Aktif', 3545, 'JAGOSOSMED', 'Sosial Media'),
(538, 538, 'Tiktok Comments ', 'Tiktok Komentar [ 3 HQ Random Komentar ] [Start Time: 0-1 Hour]  Real and Active', 'Pesan Jumlah 1000 anda mendapat kan 3 komentar\nbukan order 1000 dapat 1000 komentar!\nHQ & Active Accounts\nkomentar sesuai dengan video konten mu', 1000, 1000, 4535.2272727273, 4434.4444444444, 443.44444444444, 'Aktif', 2699, 'JAGOSOSMED', 'Sosial Media'),
(539, 539, 'Tiktok Comments ', 'Tiktok Komentar [ 3 HQ Random Komentar ] [Start Time: 0-1 Hour] [Finishes in 3 Hours]', 'Pesan Jumlah 1000 anda mendapat kan 3 komentar\nbukan order 1000 dapat 1000 komentar!\nHQ & Active Accounts\nkomentar sesuai dengan video konten mu', 1000, 1000, 12675, 12393.333333333, 1239.3333333333, 'Aktif', 2695, 'JAGOSOSMED', 'Sosial Media'),
(540, 540, 'Tiktok Comments ', 'Tiktok Komentar Kostum Server 1  [Refill 30 Days] [ LOW ] [Max: 10K]  [Speed: 1K/Hour]', 'Speed : 1K Per Hour\nNo Drop & 30 Day Refill Guarantee\nExample Link: Tiktok Video Link (All Video Link Acceeptable)', 10, 100000, 127045.45454545, 124222.22222222, 12422.222222222, 'Aktif', 2696, 'JAGOSOSMED', 'Sosial Media'),
(541, 541, 'Tiktok Comments ', 'Tiktok Komentar Kostum Server 2 [Refill 30 Days] [Max: 10K] [Speed: 1K/Hour]', 'Speed: 1K/Hour\nLOW QUALITY\n', 10, 5000, 128227.27272727, 125377.77777778, 12537.777777778, 'Aktif', 2697, 'JAGOSOSMED', 'Sosial Media'),
(542, 542, 'Tiktok Comments ', 'Tiktok Komentar Kostum Server 3 [ No refill ] [ Max: 10K ] [ Speed: 1K/Hour ] ', 'FAST', 10, 10000, 53920.454545455, 52722.222222222, 5272.2222222222, 'Aktif', 3602, 'JAGOSOSMED', 'Sosial Media'),
(543, 543, 'TikTok INDONESIA', 'TikTok Likes Indonesia [ 15K/Day ] [ 30 Days Refill ] [ Quality High ] ', 'Start: 0-30Min', 10, 100000, 30431.818181818, 29755.555555556, 2975.5555555556, 'Aktif', 3592, 'JAGOSOSMED', 'Sosial Media'),
(544, 544, 'TikTok INDONESIA', 'TikTok Likes Indonesia [ 15K/Day ] [ No refill ] [ Quality High ]', 'Start: 0-30Min', 10, 15000, 20386.363636364, 19933.333333333, 1993.3333333333, 'Aktif', 3591, 'JAGOSOSMED', 'Sosial Media'),
(545, 545, 'TikTok Likes', 'TikTok Likes JS 13 [ REFILL 30D ][Speed: 2K/Day]', 'waktu mulai 0-2 jam\nkualitas REAL tidak BOT tapi akun luar', 10, 50000, 31332.954545455, 30636.666666667, 3063.6666666667, 'Aktif', 2298, 'JAGOSOSMED', 'Sosial Media'),
(546, 546, 'TikTok Likes', 'TIKTOK Likes Server 22 [ Refill 30 Days ] HQ', 'waktu mulai 6-12 jam', 100, 100000, 12409.090909091, 12133.333333333, 1213.3333333333, 'Aktif', 2801, 'JAGOSOSMED', 'Sosial Media'),
(547, 547, 'TikTok Likes', 'TIKTOK Likes Server 24 [ Refill 30 Days ] HQ REAL', '2K/Day', 10, 50000, 31332.954545455, 30636.666666667, 3063.6666666667, 'Aktif', 2806, 'JAGOSOSMED', 'Sosial Media'),
(548, 548, 'TikTok Likes', 'TIKTOK Likes Server 27 [ No refill ] [ FAST ] BONUS++', 'tidak ada garansi\nbonus bisa 10-50% tergantung hoki/no kompline jika gk ada bonus dapat\n', 100, 10000, 8671.5909090909, 8478.8888888889, 847.88888888889, 'Aktif', 2816, 'JAGOSOSMED', 'Sosial Media'),
(549, 549, 'TikTok Likes', 'TIKTOK Likes Server 28 [ No refill ] [ SUPERFAST EMERGENCY ]', 'EMERGENCY', 100, 15000, 17284.090909091, 16900, 1690, 'Aktif', 2817, 'JAGOSOSMED', 'Sosial Media'),
(550, 550, 'TikTok Likes', 'TIKTOK Likes Server 29 [ No refill ] [ EMERGENCY KE 2 ] ', 'EMERGENCY', 100, 50000, 13443.181818182, 13144.444444444, 1314.4444444444, 'Aktif', 2826, 'JAGOSOSMED', 'Sosial Media'),
(551, 551, 'TikTok Likes', 'TIKTOK Likes Server 32 [ 30 refill days] [ 3k/day ]', '3k/day', 100, 500000, 11375, 11122.222222222, 1112.2222222222, 'Aktif', 2845, 'JAGOSOSMED', 'Sosial Media'),
(552, 552, 'TikTok Likes', 'TIKTOK Likes Server 33 [ 30 refill days] [ 5k/days ] Best seller', '5k/days\nRefill 30 days', 100, 100000, 10075, 9851.1111111111, 985.11111111111, 'Aktif', 2846, 'JAGOSOSMED', 'Sosial Media'),
(553, 553, 'TikTok Likes', 'TIKTOK Likes Server 35 [ No refill] [ 100-300/days ] REAL ', 'REAL', 100, 1000000, 6706.8181818182, 6557.7777777778, 655.77777777778, 'Aktif', 2851, 'JAGOSOSMED', 'Sosial Media'),
(554, 554, 'TikTok Likes', 'TIKTOK Likes Server 36 [ No refill ] [ 1k/days ] ULTRAFAST', 'ULTRAFAST', 100, 1000, 10355.681818182, 10125.555555556, 1012.5555555556, 'Aktif', 2896, 'JAGOSOSMED', 'Sosial Media'),
(555, 555, 'TikTok Likes', 'TIKTOK Likes Server 37 [Start Time: 0-1 Hour] [Speed: 1K/Day] [Refill 30 Days]', 'From order for 1000 Likes, you will get 1000+ likes and in addition 1000 views to the selected post from the same accounts that have liked your post\n\nStart Time: Instant - 1Hours\nSpeed: 2K - 4K/Day\nRefill: 30 Days', 100, 100000, 12084.090909091, 11815.555555556, 1181.5555555556, 'Aktif', 2923, 'JAGOSOSMED', 'Sosial Media'),
(556, 556, 'TikTok Likes', 'TIKTOK Likes Server 38 [1K/Day] [Refill 30 Days] max 1k', '[1K/Day] [Refill 30 Days] max 1k', 50, 1000, 8789.7727272727, 8594.4444444444, 859.44444444444, 'Aktif', 2983, 'JAGOSOSMED', 'Sosial Media'),
(557, 557, 'TikTok Likes', 'TIKTOK Likes Server 39 [ 50K /day speed ] [Refill 30 Days] WORK', 'No Drop\nrefill 30 days', 10, 500000, 5259.0909090909, 5142.2222222222, 514.22222222222, 'Aktif', 2993, 'JAGOSOSMED', 'Sosial Media'),
(558, 558, 'TikTok Likes', 'TIKTOK Likes Server 40 [20K/Day] [Refill 30 Days] NEW', 'Refill 30 Days', 10, 8000, 10178.409090909, 9952.2222222222, 995.22222222222, 'Aktif', 3002, 'JAGOSOSMED', 'Sosial Media'),
(559, 559, 'TikTok Likes', 'TIKTOK Likes Server 42 [ Speed 10k In 10Min ] [ Refill 30 Days ] Super Instant', 'Speed 10k In 10Min', 30, 10000, 5938.6363636364, 5806.6666666667, 580.66666666667, 'Aktif', 3014, 'JAGOSOSMED', 'Sosial Media'),
(560, 560, 'TikTok Likes', 'TIKTOK Likes Server 43 [ Start Time: 5-15 minutes ] [ No refill ] ', 'Start Time: 5-15 minutes', 100, 10000, 4254.5454545455, 4160, 416, 'Aktif', 3017, 'JAGOSOSMED', 'Sosial Media'),
(561, 561, 'TikTok Likes', 'TIKTOK Likes Server 45 [ Start Time: 10-30 minutes ] [ No refill ] ', 'Start Time: 10-30 minutes', 10, 200000, 6307.9545454545, 6167.7777777778, 616.77777777778, 'Aktif', 3042, 'JAGOSOSMED', 'Sosial Media'),
(562, 562, 'TikTok Likes', 'TIKTOK Likes Server 47 [ Start Time: 0-6 hours] [ max 50k ] ', 'no refill', 100, 50000, 6544.3181818182, 6398.8888888889, 639.88888888889, 'Aktif', 3189, 'JAGOSOSMED', 'Sosial Media'),
(563, 563, 'TikTok Likes', 'TIKTOK Likes Server 48 [ Speed: 5K/Day ] ', 'Speed: 5K/Day', 10, 50000, 4328.4090909091, 4232.2222222222, 423.22222222222, 'Aktif', 3190, 'JAGOSOSMED', 'Sosial Media'),
(564, 564, 'TikTok Likes', 'TIKTOK Likes Server 49 [ Speed: 10k/Day ] REAL', 'NO refill', 10, 100000, 3988.6363636364, 3900, 390, 'Aktif', 3193, 'JAGOSOSMED', 'Sosial Media'),
(565, 565, 'TikTok Likes', 'TikTok Likes Server 6 [ Superfast ] [ 1K ] R30 days [ Akun Perempuan ]', 'Superfast', 50, 1000, 32012.5, 31301.111111111, 3130.1111111111, 'Aktif', 2434, 'JAGOSOSMED', 'Sosial Media'),
(566, 566, 'TikTok Likes', 'TIKTOK Likes Server 8 [ Refill 30 Days ]  Speed 10K/Day', 'max 10k', 100, 10000, 22188.636363636, 21695.555555556, 2169.5555555556, 'Aktif', 2568, 'JAGOSOSMED', 'Sosial Media'),
(567, 567, 'TikTok Likes', 'TIKTOK Likes Server JS 1 [Max: 100K] [Refill: 30 Days] [Start Time: 0 - 3 Hours] [Speed: Up to 10K/Day]', 'Refill: 30 Days\nSpeed: Up to 10K/Day', 10, 100000, 5539.7727272727, 5416.6666666667, 541.66666666667, 'Aktif', 3129, 'JAGOSOSMED', 'Sosial Media'),
(568, 568, 'TikTok Likes', 'TIKTOK Likes Server JS 10 [ SuperInstant ] [ Max: 200K ] [ Speed: 50K/Day ]', 'No refund\nNo refill\nNokompline \nStart: 0-30Min', 50, 200000, 4697.7272727273, 4593.3333333333, 459.33333333333, 'Aktif', 3488, 'JAGOSOSMED', 'Sosial Media'),
(569, 569, 'TikTok Likes', 'TIKTOK Likes Server JS 13 [ SuperInstant ] [ Max: 10K ] [ Speed 50K/Day ] ', 'Start: 15 min', 50, 10000, 1477.2727272727, 1444.4444444444, 144.44444444444, 'Aktif', 3519, 'JAGOSOSMED', 'Sosial Media'),
(570, 570, 'TikTok Likes', 'TIKTOK Likes Server JS 14 [ MURAH ] [ Instant - Superfast ]', 'HQ\n1K/days\nDrop: 1%-15% ( tidak ada garansi - nokompline kalo terjadi drop pada waktu tertentu )', 50, 30000, 2954.5454545455, 2888.8888888889, 288.88888888889, 'Aktif', 3530, 'JAGOSOSMED', 'Sosial Media'),
(571, 571, 'TikTok Likes', 'TIKTOK Likes Server JS 15 [ SuperInstant ] [ ULTRA FAST COJSLETED ]', 'Start: 0-30Min\nSpeed: 100K/Day\nNo Refill', 10, 1000000, 2084.4318181818, 2038.1111111111, 203.81111111111, 'Aktif', 3593, 'JAGOSOSMED', 'Sosial Media'),
(572, 572, 'TikTok Likes', 'TIKTOK Likes Server JS 3 [Max: 100K] [Refill: 30 Days] [Start Time: 0 - 1 Hours] [Speed: Up to 120K/Day] ', '5k/JAM\nNon Drop', 10, 50000, 5170.4545454545, 5055.5555555556, 505.55555555556, 'Aktif', 3130, 'JAGOSOSMED', 'Sosial Media'),
(573, 573, 'TikTok Likes', 'TIKTOK Likes Server JS 4 [ Max 100K ] [ Refill 30 Days ] [ Start Time: 0 - 1 Hours ] [Speed: 3k-5k/days] ', 'Speed: 3k-5k/Days\nStart: 0-1Hrs\nRefill: 30 days', 10, 100000, 4948.8636363636, 4838.8888888889, 483.88888888889, 'Aktif', 3161, 'JAGOSOSMED', 'Sosial Media'),
(574, 574, 'TikTok Likes', 'TIKTOK Likes Server JS 5 [ Max 100K ] [ Speed: 500K/Day ]  [ 30 Days Refill ] ', '30 Days Refill', 10, 100000, 4417.0454545455, 4318.8888888889, 431.88888888889, 'Aktif', 3194, 'JAGOSOSMED', 'Sosial Media'),
(575, 575, 'TikTok Likes', 'TIKTOK Likes Server JS 8 [ Max 500K ] [ Refill: 30 Days ] [ 50K/Day ] ', '50K/Day', 10, 500000, 3397.7272727273, 3322.2222222222, 332.22222222222, 'Aktif', 3476, 'JAGOSOSMED', 'Sosial Media'),
(576, 576, 'TikTok Likes', 'TIKTOK Likes Server JS 9 [ Max 1M ] [ Refill: 365 Days ] [ 100K/Day ] ', '100K/Day', 25, 1000000, 7238.6363636364, 7077.7777777778, 707.77777777778, 'Aktif', 3478, 'JAGOSOSMED', 'Sosial Media'),
(577, 577, 'Tiktok Live Streams Like/Share/Comment', 'Tiktok Live Like [Max: 100K] [Start Time: Instant] [Speed: 100K/Day]', 'TikTok Live Likes\nService Starting Super Instant!\nDaily Speed : 100K Per Hour\n\nExample Link:\nhttps://www.tiktok.com/@username', 10, 1000000, 2555.6818181818, 2498.8888888889, 249.88888888889, 'Aktif', 2633, 'JAGOSOSMED', 'Sosial Media'),
(578, 578, 'Tiktok Live Streams Like/Share/Comment', 'Tiktok Live Like [Max: 10M] [Start Time: Instant] [Speed: 100K/hrs] ', 'Instant\n100k/hr', 100, 10000000, 2437.5, 2383.3333333333, 238.33333333333, 'Aktif', 3244, 'JAGOSOSMED', 'Sosial Media'),
(579, 579, 'Tiktok Live Streams Like/Share/Comment', 'Tiktok Live Like Server 1  [Max: 100K] [Start Time: Instant] [Speed: 100K/Day] ', 'Speed: 100K/Day', 10, 1000000, 2600, 2542.2222222222, 254.22222222222, 'Aktif', 2690, 'JAGOSOSMED', 'Sosial Media'),
(580, 580, 'Tiktok Live Streams Like/Share/Comment', 'Tiktok Live Like Server 2 [Max: 100K] [Start Time: 0 - 1 Hours] [Speed: 100K/Day] ', 'Speed: 100K/Day', 5, 1000000, 2688.6363636364, 2628.8888888889, 262.88888888889, 'Aktif', 2691, 'JAGOSOSMED', 'Sosial Media'),
(581, 581, 'Tiktok Live Streams Like/Share/Comment', 'Tiktok Live Like Server 3 [ + PK battle points ] [ 1k-10k/days ] [ INSTANT ]', 'INSTANT', 10, 10000, 3102.2727272727, 3033.3333333333, 303.33333333333, 'Aktif', 3631, 'JAGOSOSMED', 'Sosial Media'),
(582, 582, 'Tiktok Live Streams Like/Share/Comment', 'Tiktok Live Share [ Max: 100K ] [ Instant ] [ Speed: 100K/Day ]', 'Max: 100K\nInstant \nSpeed: 100K/Day', 100, 100000, 8789.7727272727, 8594.4444444444, 859.44444444444, 'Aktif', 3245, 'JAGOSOSMED', 'Sosial Media'),
(583, 583, 'Tiktok Live Streams Like/Share/Comment', 'Tiktok Live Share [Max: 100K] [Start Time: Instant] [Speed: 100K/Day] ', 'Service Starting Super Instant!\nDaily Speed : 100K Per Hour\n\nExample Link:\nhttps://www.tiktok.com/@username', 10, 1000000, 14787.5, 14458.888888889, 1445.8888888889, 'Aktif', 2634, 'JAGOSOSMED', 'Sosial Media'),
(584, 584, 'Tiktok Live Streams S1', 'Tiktok Live Stream Views | 120 Minute | 50K | No-Drop | ULTRAFAST ⚡✔️', 'ULTRAFAST\nNo-Drop', 10, 100000, 26208, 25625.6, 2562.56, 'Aktif', 3619, 'JAGOSOSMED', 'Sosial Media'),
(585, 585, 'Tiktok Live Streams S1', 'Tiktok Live Stream Views | 15 Minute | 50K | No-Drop | ULTRAFAST ⚡✔️', 'ULTRAFAST\nNo-Drop', 10, 100000, 3276, 3203.2, 320.32, 'Aktif', 3615, 'JAGOSOSMED', 'Sosial Media'),
(586, 586, 'Tiktok Live Streams S1', 'Tiktok Live Stream Views | 180 Minutes | 50K | No-Drop | ULTRAFAST ⚡✔️', 'ULTRAFAST\nNo-Drop', 10, 100000, 39312, 38438.4, 3843.84, 'Aktif', 3620, 'JAGOSOSMED', 'Sosial Media'),
(587, 587, 'Tiktok Live Streams S1', 'Tiktok Live Stream Views | 240 Minutes | 50K | No-Drop | ULTRAFAST ⚡✔️', 'ULTRAFAST\nNo-Drop', 10, 100000, 52416, 51251.2, 5125.12, 'Aktif', 3621, 'JAGOSOSMED', 'Sosial Media'),
(588, 588, 'Tiktok Live Streams S1', 'Tiktok Live Stream Views | 30 Minute | 50K | No-Drop | ULTRAFAST ⚡✔️', 'ULTRAFAST\nNo-Drop', 10, 100000, 6552, 6406.4, 640.64, 'Aktif', 3616, 'JAGOSOSMED', 'Sosial Media'),
(589, 589, 'Tiktok Live Streams S1', 'Tiktok Live Stream Views | 60 Minute | 50K | No-Drop | ULTRAFAST ⚡✔️', 'ULTRAFAST\nNo-Drop', 10, 100000, 13104, 12812.8, 1281.28, 'Aktif', 3617, 'JAGOSOSMED', 'Sosial Media'),
(590, 590, 'Tiktok Live Streams S1', 'Tiktok Live Stream Views | 90 Minute | 50K | No-Drop | ULTRAFAST ⚡✔️', 'ULTRAFAST\nNo-Drop', 10, 100000, 19656, 19219.2, 1921.92, 'Aktif', 3618, 'JAGOSOSMED', 'Sosial Media'),
(591, 591, 'Tiktok Live Streams', 'TikTok Live Stream Views | Max 10K | 180 Munites', 'Mulai: 0-15 menit\nKecepatan: Sangat Cepat\nIsi Ulang: Tanpa Isi Ulang/ NO REFILL\n\nFormat Tautan: username/ nama pengguna\nFormat Tautan: https://www.tiktok.com/@username\n\nCatatan:\n- Silakan kirim screenshot jika Anda mengklaim pesanan tidak terkirim.\n- Periksa format tautan dengan cermat sebelum melakukan pemesanan.\n- Pastikan akun Anda bersifat publik, bukan pribadi.\n- Saat layanan padat/overload, kecepatan awal operasi berubah.\n- Jangan melakukan pemesanan kedua (double order) di tautan yang sama sebelum pesanan Anda diselesaikan di sistem.', 100, 10000, 243019.63636364, 237619.2, 23761.92, 'Aktif', 3331, 'JAGOSOSMED', 'Sosial Media'),
(592, 592, 'Tiktok Live Streams', 'TikTok Live Stream Views | Max 20K | 120 Munites', 'Mulai: 0-15 menit\nKecepatan: Sangat Cepat\nIsi Ulang: Tanpa Isi Ulang/ NO REFILL\n\nFormat Tautan: username/ nama pengguna\nFormat Tautan: https://www.tiktok.com/@username\n\nCatatan:\n- Silakan kirim screenshot jika Anda mengklaim pesanan tidak terkirim.\n- Periksa format tautan dengan cermat sebelum melakukan pemesanan.\n- Pastikan akun Anda bersifat publik, bukan pribadi.\n- Saat layanan padat/overload, kecepatan awal operasi berubah.\n- Jangan melakukan pemesanan kedua (double order) di tautan yang sama sebelum pesanan Anda diselesaikan di sistem.', 100, 20000, 126572.72727273, 123760, 12376, 'Aktif', 3330, 'JAGOSOSMED', 'Sosial Media'),
(593, 593, 'Tiktok Live Streams', 'TikTok Live Stream Views | Max 20K | 15 Munites', 'Mulai: 0-15 menit\nKecepatan: Sangat Cepat\nIsi Ulang: Tanpa Isi Ulang/ NO REFILL\n\nFormat Tautan: username/ nama pengguna\nFormat Tautan: https://www.tiktok.com/@username\n\nCatatan:\n- Silakan kirim screenshot jika Anda mengklaim pesanan tidak terkirim.\n- Periksa format tautan dengan cermat sebelum melakukan pemesanan.\n- Pastikan akun Anda bersifat publik, bukan pribadi.\n- Saat layanan padat/overload, kecepatan awal operasi berubah.\n- Jangan melakukan pemesanan kedua (double order) di tautan yang sama sebelum pesanan Anda diselesaikan di sistem.', 100, 20000, 9619.5272727273, 9405.76, 940.576, 'Aktif', 3326, 'JAGOSOSMED', 'Sosial Media'),
(594, 594, 'Tiktok Live Streams', 'TikTok Live Stream Views | Max 20K | 240 Munites', 'Mulai: 0-15 menit\nKecepatan: Sangat Cepat\nIsi Ulang: Tanpa Isi Ulang/ NO REFILL\n\nFormat Tautan: username/ nama pengguna\nFormat Tautan: https://www.tiktok.com/@username\n\nCatatan:\n- Silakan kirim screenshot jika Anda mengklaim pesanan tidak terkirim.\n- Periksa format tautan dengan cermat sebelum melakukan pemesanan.\n- Pastikan akun Anda bersifat publik, bukan pribadi.\n- Saat layanan padat/overload, kecepatan awal operasi berubah.\n- Jangan melakukan pemesanan kedua (double order) di tautan yang sama sebelum pesanan Anda diselesaikan di sistem.', 100, 20000, 427815.81818182, 418308.8, 41830.88, 'Aktif', 3332, 'JAGOSOSMED', 'Sosial Media'),
(595, 595, 'Tiktok Live Streams', 'TikTok Live Stream Views | Max 20K | 30 Munites', 'Mulai: 0-15 menit\nKecepatan: Sangat Cepat\nIsi Ulang: Tanpa Isi Ulang/ NO REFILL\n\nFormat Tautan: username/ nama pengguna\nFormat Tautan: https://www.tiktok.com/@username\n\nCatatan:\n- Silakan kirim screenshot jika Anda mengklaim pesanan tidak terkirim.\n- Periksa format tautan dengan cermat sebelum melakukan pemesanan.\n- Pastikan akun Anda bersifat publik, bukan pribadi.\n- Saat layanan padat/overload, kecepatan awal operasi berubah.\n- Jangan melakukan pemesanan kedua (double order) di tautan yang sama sebelum pesanan Anda diselesaikan di sistem.', 100, 20000, 17213.890909091, 16831.36, 1683.136, 'Aktif', 3327, 'JAGOSOSMED', 'Sosial Media'),
(596, 596, 'Tiktok Live Streams', 'TikTok Live Stream Views | Max 20K | 60 Munites', 'Mulai: 0-15 menit\nKecepatan: Sangat Cepat\nIsi Ulang: Tanpa Isi Ulang/ NO REFILL\n\nFormat Tautan: username/ nama pengguna\nFormat Tautan: https://www.tiktok.com/@username\n\nCatatan:\n- Silakan kirim screenshot jika Anda mengklaim pesanan tidak terkirim.\n- Periksa format tautan dengan cermat sebelum melakukan pemesanan.\n- Pastikan akun Anda bersifat publik, bukan pribadi.\n- Saat layanan padat/overload, kecepatan awal operasi berubah.\n- Jangan melakukan pemesanan kedua (double order) di tautan yang sama sebelum pesanan Anda diselesaikan di sistem.', 100, 20000, 34934.072727273, 34157.76, 3415.776, 'Aktif', 3328, 'JAGOSOSMED', 'Sosial Media'),
(597, 597, 'Tiktok Live Streams', 'TikTok Live Stream Views | Max 20K | 90 Munites', 'Mulai: 0-15 menit\nKecepatan: Sangat Cepat\nIsi Ulang: Tanpa Isi Ulang/ NO REFILL\n\nFormat Tautan: username/ nama pengguna\nFormat Tautan: https://www.tiktok.com/@username\n\nCatatan:\n- Silakan kirim screenshot jika Anda mengklaim pesanan tidak terkirim.\n- Periksa format tautan dengan cermat sebelum melakukan pemesanan.\n- Pastikan akun Anda bersifat publik, bukan pribadi.\n- Saat layanan padat/overload, kecepatan awal operasi berubah.\n- Jangan melakukan pemesanan kedua (double order) di tautan yang sama sebelum pesanan Anda diselesaikan di sistem.', 100, 20000, 68349.272727273, 66830.4, 6683.04, 'Aktif', 3329, 'JAGOSOSMED', 'Sosial Media'),
(598, 598, 'Tiktok Live Streams', 'TikTok Livestream Views [Max: 10K] [Start Time: INSTANT] [Stay: 3 jam]', 'Instan\nStay  3 jam.\nView akan tetap selama periode waktu pemesanan\n100% volume pesanan dan penonton hadir\nKualitas: dengan avatar penonton\nJika waktu habis, itu akan berakhir. Jika waktunya belum habis, pemutusan bisa terus bertambah.', 100, 50000, 1352531.8181818, 1322475.5555556, 132247.55555556, 'Aktif', 2913, 'JAGOSOSMED', 'Sosial Media'),
(599, 599, 'Tiktok Live Streams', 'TikTok Livestream Views [Max: 10K] [Start Time: INSTANT] [Stay: 6 jam]', 'Instan\nStay 6 jam.\nView akan tetap selama periode waktu pemesanan\n100% volume pesanan dan penonton hadir\nKualitas: dengan avatar penonton\nJika waktu habis, itu akan berakhir. Jika waktunya belum habis, pemutusan bisa terus bertambah.', 100, 100000, 2176613.6363636, 2128244.4444444, 212824.44444444, 'Aktif', 2914, 'JAGOSOSMED', 'Sosial Media'),
(600, 600, 'Tiktok Live Streams', 'TikTok Livestream Views [Max: 50K] [Start Time: INSTANT] [Stay: 1 jam]', 'Instan\nStay 1 jam.\nView akan tetap selama periode waktu pemesanan\n100% volume pesanan dan penonton hadir\nKualitas: dengan avatar penonton\nJika waktu habis, itu akan berakhir. Jika waktunya belum habis, pemutusan bisa terus bertambah.', 100, 50000, 469477.27272727, 459044.44444444, 45904.444444444, 'Aktif', 2911, 'JAGOSOSMED', 'Sosial Media'),
(601, 601, 'Tiktok Live Streams', 'TikTok Livestream Views [Max: 50K] [Start Time: INSTANT] [Stay: 120 min] ', 'Mulai Live Streaming lalu pesan\nContoh tautan: https://www.tiktok.com/@username\nwaktu mulai 3-4 menit\nscreenshot layar dengan waktu -3-4 menit setelah pemesanan - Waktu harus terlihat di screenshot \nscreenshot layar digunakan untuk hal yg tidak diinginkan', 100, 50000, 919454.54545455, 899022.22222222, 89902.222222222, 'Aktif', 2112, 'JAGOSOSMED', 'Sosial Media'),
(602, 602, 'Tiktok Live Streams', 'TikTok Livestream Views [Max: 50K] [Start Time: INSTANT] [Stay: 15 menit]', 'Instan\nStay 15 mnt.\nView akan tetap selama periode waktu pemesanan\n100?ri volume pesanan dan penonton hadir\nKualitas: dengan avatar penonton\nJika waktu habis, itu akan berakhir. Jika waktunya belum habis, pemutusan bisa terus bertambah.', 100, 50000, 128035.22727273, 125190, 12519, 'Aktif', 2909, 'JAGOSOSMED', 'Sosial Media'),
(603, 603, 'Tiktok Live Streams', 'TikTok Livestream Views [Max: 50K] [Start Time: INSTANT] [Stay: 15 min] ', 'Mulai Live Streaming lalu pesan\nContoh tautan: https://www.tiktok.com/@username atau username ( tanpa @ )\nwaktu mulai 3-4 menit\nscreenshot layar dengan waktu -3-4 menit setelah pemesanan - Waktu harus terlihat di screenshot\nscreenshot layar digunakan untuk hal yg tidak diinginkan', 100, 50000, 166665.90909091, 162962.22222222, 16296.222222222, 'Aktif', 3025, 'JAGOSOSMED', 'Sosial Media'),
(604, 604, 'Tiktok Live Streams', 'TikTok Livestream Views [Max: 50K] [Start Time: INSTANT] [Stay: 180 min] ', 'Mulai Live Streaming lalu pesan\nContoh tautan: https://www.tiktok.com/@username\nwaktu mulai 3-4 menit\nscreenshot layar dengan waktu -3-4 menit setelah pemesanan - Waktu harus terlihat di screenshot \nscreenshot layar digunakan untuk hal yg tidak diinginkan', 100, 50000, 1037798.8636364, 1014736.6666667, 101473.66666667, 'Aktif', 2113, 'JAGOSOSMED', 'Sosial Media'),
(605, 605, 'Tiktok Live Streams', 'TikTok Livestream Views [Max: 50K] [Start Time: INSTANT] [Stay: 2 jam]', 'Instan\nStay 2 jam.\nView akan tetap selama periode waktu pemesanan\n100% volume pesanan dan penonton hadir\nKualitas: dengan avatar penonton\nJika waktu habis, itu akan berakhir. Jika waktunya belum habis, pemutusan bisa terus bertambah.', 100, 50000, 901594.31818182, 881558.88888889, 88155.888888889, 'Aktif', 2912, 'JAGOSOSMED', 'Sosial Media'),
(606, 606, 'Tiktok Live Streams', 'TikTok Livestream Views [Max: 50K] [Start Time: INSTANT] [Stay: 240 min] ', 'Mulai Live Streaming lalu pesan\nContoh tautan: https://www.tiktok.com/@username atau username ( tanpa @ )\nwaktu mulai 3-4 menit\nscreenshot layar dengan waktu -3-4 menit setelah pemesanan - Waktu harus terlihat di screenshot\nscreenshot layar digunakan untuk hal yg tidak diinginkan', 100, 50000, 1156187.5, 1130494.4444444, 113049.44444444, 'Aktif', 3026, 'JAGOSOSMED', 'Sosial Media'),
(607, 607, 'Tiktok Live Streams', 'TikTok Livestream Views [Max: 50K] [Start Time: INSTANT] [Stay: 30 min]', 'Mulai Live Streaming lalu pesan\nContoh tautan: https://www.tiktok.com/@username\nwaktu mulai 3-4 menit\nscreenshot layar dengan waktu -3-4 menit setelah pemesanan - Waktu harus terlihat di screenshot \nscreenshot layar digunakan untuk hal yg tidak diinginkan', 100, 50000, 353289.77272727, 345438.88888889, 34543.888888889, 'Aktif', 2109, 'JAGOSOSMED', 'Sosial Media'),
(608, 608, 'Tiktok Live Streams', 'TikTok Livestream Views [Max: 50K] [Start Time: INSTANT] [Stay: 30menit] ', 'Instan\nStay 30 mnt.\nView akan tetap selama periode waktu pemesanan\n100% volume pesanan dan penonton hadir\nKualitas: dengan avatar penonton\nJika waktu habis, itu akan berakhir. Jika waktunya belum habis, pemutusan bisa terus bertambah.', 100, 50000, 252259.09090909, 246653.33333333, 24665.333333333, 'Aktif', 2910, 'JAGOSOSMED', 'Sosial Media'),
(609, 609, 'Tiktok Live Streams', 'TikTok Livestream Views [Max: 50K] [Start Time: INSTANT] [Stay: 60 min]', 'Mulai Live Streaming lalu pesan\nContoh tautan: https://www.tiktok.com/@username\nwaktu mulai 3-4 menit\nscreenshot layar dengan waktu -3-4 menit setelah pemesanan - Waktu harus terlihat di screenshot \nscreenshot layar digunakan untuk hal yg tidak diinginkan', 100, 50000, 531212.5, 519407.77777778, 51940.777777778, 'Aktif', 2110, 'JAGOSOSMED', 'Sosial Media'),
(610, 610, 'Tiktok Live Streams', 'TikTok Livestream Views [Max: 50K] [Start Time: INSTANT] [Stay: 90 Menit] ', 'Mulai Live Streaming lalu pesan\nContoh tautan: https://www.tiktok.com/@username atau username ( tanpa @ )\nwaktu mulai 3-4 menit\nscreenshot layar dengan waktu -3-4 menit setelah pemesanan - Waktu harus terlihat di screenshot\nscreenshot layar digunakan untuk hal yg tidak diinginkan', 100, 50000, 735977.27272727, 719622.22222222, 71962.222222222, 'Aktif', 3027, 'JAGOSOSMED', 'Sosial Media'),
(611, 611, 'Tiktok Live Streams', 'TikTok Livestream Views [Max: 50K] [Start Time: INSTANT] [Stay: 90 min]', 'Mulai Live Streaming lalu pesan\nContoh tautan: https://www.tiktok.com/@username\nwaktu mulai 3-4 menit\nscreenshot layar dengan waktu -3-4 menit setelah pemesanan - Waktu harus terlihat di screenshot \nscreenshot layar digunakan untuk hal yg tidak diinginkan', 100, 50000, 720909.09090909, 704888.88888889, 70488.888888889, 'Aktif', 2111, 'JAGOSOSMED', 'Sosial Media'),
(612, 612, 'Tiktok Live Streams', 'TikTok Livestream Views [Start Time: INSTANT] [Stay: 15 min] ', 'Start : 0-5 min\nJika Anda memesan 1000, rata-rata 60-100 View bersamaan akan bertahan selama 15menit\nFormat tautan:\nUsername\n\nLAYANAN NO GARANSI APAPUN ITU', 100, 5000, 67156.818181818, 65664.444444444, 6566.4444444444, 'Aktif', 2115, 'JAGOSOSMED', 'Sosial Media'),
(613, 613, 'Tiktok Live Streams', 'TikTok Livestream Views S1 | Instant⚡️ [120 Mins] ', 'tolong berikan screenshoot bukti view untuk refund jika tidak masuk sama sekali\n', 50, 10000, 265909.09090909, 260000, 26000, 'Aktif', 3241, 'JAGOSOSMED', 'Sosial Media'),
(614, 614, 'Tiktok Live Streams', 'TikTok Livestream Views S1 | Instant⚡️ [15 Mins]', 'tolong berikan screenshoot bukti view untuk refund jika tidak masuk sama sekali', 50, 10000, 26590.909090909, 26000, 2600, 'Aktif', 3237, 'JAGOSOSMED', 'Sosial Media'),
(615, 615, 'Tiktok Live Streams', 'TikTok Livestream Views S1 | Instant⚡️ [180 Mins] ', 'tolong berikan screenshoot bukti view untuk refund jika tidak masuk sama sekali\n', 50, 10000, 398863.63636364, 390000, 39000, 'Aktif', 3242, 'JAGOSOSMED', 'Sosial Media'),
(616, 616, 'Tiktok Live Streams', 'TikTok Livestream Views S1 | Instant⚡️ [240 Mins] ', 'tolong berikan screenshoot bukti view untuk refund jika tidak masuk sama sekali\n', 50, 10000, 477159.09090909, 466555.55555556, 46655.555555556, 'Aktif', 3243, 'JAGOSOSMED', 'Sosial Media'),
(617, 617, 'Tiktok Live Streams', 'TikTok Livestream Views S1 | Instant⚡️ [30 Mins] ', 'tolong berikan screenshoot bukti view untuk refund jika tidak masuk sama sekali\n', 10, 10000, 53181.818181818, 52000, 5200, 'Aktif', 3238, 'JAGOSOSMED', 'Sosial Media'),
(618, 618, 'Tiktok Live Streams', 'TikTok Livestream Views S1 | Instant⚡️ [60 Mins] ', 'tolong berikan screenshoot bukti view untuk refund jika tidak masuk sama sekali\n', 50, 10000, 106363.63636364, 104000, 10400, 'Aktif', 3239, 'JAGOSOSMED', 'Sosial Media'),
(619, 619, 'Tiktok Live Streams', 'TikTok Livestream Views S1 | Instant⚡️ [90 Mins] ', 'tolong berikan screenshoot bukti view untuk refund jika tidak masuk sama sekali\n', 50, 10000, 159545.45454545, 156000, 15600, 'Aktif', 3240, 'JAGOSOSMED', 'Sosial Media'),
(620, 620, 'Tiktok Live Streams Like/Share/Comment', 'Tiktok PK BATTLE POİNTS [ Instant Start | 100M/Day ]', 'FAST', 10, 1000000, 2806.8181818182, 2744.4444444444, 274.44444444444, 'Aktif', 3633, 'JAGOSOSMED', 'Sosial Media'),
(621, 621, 'Tiktok Live Streams Like/Share/Comment', 'Tiktok PK BATTLE POİNTS [ Instant Start | 100M/Day ]⚡⚡ ', 'FAST', 10, 5000000, 4284.0909090909, 4188.8888888889, 418.88888888889, 'Aktif', 3634, 'JAGOSOSMED', 'Sosial Media'),
(622, 622, 'Tiktok Live Streams Like/Share/Comment', 'Tiktok PK BATTLE POİNTS [ Instant Start | 300M/Day ] ', 'FAST', 10, 30000000, 258.52272727273, 252.77777777778, 25.277777777778, 'Aktif', 3632, 'JAGOSOSMED', 'Sosial Media'),
(623, 623, 'TikTok Save/Favorit', 'TikTok Save Server 1 [ Refill 30days ]  5k/days ', 'Refill 30days \n5k/days', 100, 20000, 915.90909090909, 895.55555555556, 89.555555555556, 'Aktif', 2628, 'JAGOSOSMED', 'Sosial Media'),
(624, 624, 'TikTok Save/Favorit', 'TikTok Save Server 2 [ Refill 30days ] 5k-10k/day', '5k-10k/day\nrefill 30 days', 100, 20000, 3929.5454545455, 3842.2222222222, 384.22222222222, 'Aktif', 2641, 'JAGOSOSMED', 'Sosial Media'),
(625, 625, 'TikTok  share', 'TIKTOK Share JS 1 [ Real Share ] INSTANT', 'THE CHEAPEST SERVICE\nREAL PROFILE', 10, 100000, 34051.136363636, 33294.444444444, 3329.4444444444, 'Aktif', 1877, 'JAGOSOSMED', 'Sosial Media'),
(626, 626, 'TikTok  share', 'TIKTOK Share JS 3 MAX 100jt TERMURAH', '10/10M', 10, 100000000, 5643.1818181818, 5517.7777777778, 551.77777777778, 'Aktif', 2517, 'JAGOSOSMED', 'Sosial Media'),
(627, 627, 'TikTok  share', 'TIKTOK Share JS 5 [Refill 30 days]  10K/Day [ NonDrop ]', 'NonDrop', 10, 10000000, 2614.7727272727, 2556.6666666667, 255.66666666667, 'Aktif', 2627, 'JAGOSOSMED', 'Sosial Media'),
(628, 628, 'TikTok  share', 'TIKTOK Share JS 8 [ Speed 50K/day ] ', 'Speed 50K/day', 100, 2000000, 4978.4090909091, 4867.7777777778, 486.77777777778, 'Aktif', 2750, 'JAGOSOSMED', 'Sosial Media'),
(629, 629, 'TikTok Story', 'TikTok Story Likes  [ Max 30K ]  [ Day 10K ]', '[ Max 30K ]  [ Day 10K ]', 50, 30000, 6765.9090909091, 6615.5555555556, 661.55555555556, 'Aktif', 2752, 'JAGOSOSMED', 'Sosial Media'),
(630, 630, 'TikTok Story', 'TikTok Story Views [ Max 30K ] [ Day 10K ] ', '[ Max 30K ] [ Day 10K ]', 100, 30000, 6765.9090909091, 6615.5555555556, 661.55555555556, 'Aktif', 2754, 'JAGOSOSMED', 'Sosial Media'),
(631, 631, 'TikTok Story', 'TikTok Story Views [ Max 30K ] [ Day 10K ] [ All Stories ]', '[ Max 30K ] [ Day 10K ] [ All Stories ]', 100, 30000, 6765.9090909091, 6615.5555555556, 661.55555555556, 'Aktif', 2753, 'JAGOSOSMED', 'Sosial Media'),
(632, 632, 'TikTok View', 'TIKTOK View JS 22 [ MAX: 1B ] FAST WORK', 'MURAHH\n5M/days', 100, 1000000000, 2.9545454545455, 2.8888888888889, 0.28888888888889, 'Aktif', 3011, 'JAGOSOSMED', 'Sosial Media'),
(633, 633, 'TikTok View', 'TIKTOK View JS 23 [ R30 ] TERMURAH FAST', 'R30', 100, 1000000000, 88.636363636364, 86.666666666667, 8.6666666666667, 'Aktif', 3015, 'JAGOSOSMED', 'Sosial Media'),
(634, 634, 'TikTok View', 'TIKTOK View JS 24 [ Start Time: 0-10 minutes ] TERMURAH FAST ', 'TERMURAH FAST', 100, 300000000, 73.863636363636, 72.222222222222, 7.2222222222222, 'Aktif', 3016, 'JAGOSOSMED', 'Sosial Media'),
(635, 635, 'TikTok View', 'TIKTOK View JS 25 TERMURAH [ NON DROP ] 100M/Day', '100M/Day', 100, 2147483647, 59.090909090909, 57.777777777778, 5.7777777777778, 'Aktif', 3021, 'JAGOSOSMED', 'Sosial Media'),
(636, 636, 'TikTok View', 'TIKTOK View JS 26 [ MURAH - MAX 10M  ] ', 'Max 10M', 100, 100000000, 88.636363636364, 86.666666666667, 8.6666666666667, 'Aktif', 3041, 'JAGOSOSMED', 'Sosial Media'),
(637, 637, 'TikTok View', 'TIKTOK View JS 27 [ MURAH - MAX 50M ] ', 'MURAH - MAX 50M\n10M/day', 100, 50000000, 59.090909090909, 57.777777777778, 5.7777777777778, 'Aktif', 3046, 'JAGOSOSMED', 'Sosial Media'),
(638, 638, 'TikTok View', 'TIKTOK View JS 28 [ TERMURAH - MAX 1000M ] Instant ', '10M/Day', 100, 50000000, 20.681818181818, 20.222222222222, 2.0222222222222, 'Aktif', 3068, 'JAGOSOSMED', 'Sosial Media'),
(639, 639, 'TikTok View', 'TIKTOK View JS 29 [ TERMURAH - MAX 50M ] Instant ', 'TERMURAH', 100, 50000000, 14.772727272727, 14.444444444444, 1.4444444444444, 'Aktif', 3179, 'JAGOSOSMED', 'Sosial Media'),
(640, 640, 'TikTok View', 'TIKTOK View JS 30 [ Cheapest in All Market ] Instant ', 'Cheapest in All Market', 100, 1000000000, 5.9090909090909, 5.7777777777778, 0.57777777777778, 'Aktif', 3185, 'JAGOSOSMED', 'Sosial Media'),
(641, 641, 'TikTok View', 'TIKTOK View JS 32 [ Cheapest in All Market ] Max 100M', 'Day 10M', 100, 1000000000, 88.636363636364, 86.666666666667, 8.6666666666667, 'Aktif', 3187, 'JAGOSOSMED', 'Sosial Media'),
(642, 642, 'TikTok View', 'TIKTOK View JS 33 [ Cheapest in All Market ] Update Special', '10M/Day\nMax: 50M', 100, 500000000, 2.9545454545455, 2.8888888888889, 0.28888888888889, 'Aktif', 3213, 'JAGOSOSMED', 'Sosial Media'),
(643, 643, 'TikTok View', 'TIKTOK View JS 34 [ Non-Drop ] 100M/Day', '100M/Day', 100, 100000000, 10.340909090909, 10.111111111111, 1.0111111111111, 'Aktif', 3230, 'JAGOSOSMED', 'Sosial Media'),
(644, 644, 'TikTok View', 'TIKTOK View JS 35 [ 100M/Day ] No Refill', 'input link video\nNo Refill', 100, 2147483647, 88.636363636364, 86.666666666667, 8.6666666666667, 'Aktif', 3231, 'JAGOSOSMED', 'Sosial Media'),
(645, 645, 'TikTok View', 'TIKTOK View JS 36 [ 1M/Day ] Life Time Guaranteed', 'Life Time Guaranteed\n1M/Day', 100, 100000000, 26.590909090909, 26, 2.6, 'Aktif', 3613, 'JAGOSOSMED', 'Sosial Media'),
(646, 646, 'TikTok View', 'TIKTOK View JS11 [ TERMURAH DUNIA ] 5M/days', '5M/days', 100, 50000000, 103.40909090909, 101.11111111111, 10.111111111111, 'Aktif', 2937, 'JAGOSOSMED', 'Sosial Media'),
(647, 647, 'TikTok View', 'TIKTOK View JS12 [ 100M - 150M/Day ] ', '[ 100M - 150M/Day ]', 1000, 10000000, 221.59090909091, 216.66666666667, 21.666666666667, 'Aktif', 2954, 'JAGOSOSMED', 'Sosial Media'),
(648, 648, 'TikTok View', 'TIKTOK View JS13 [ 100M - 5M/Day ] R30', '100M - 5M/Day', 100, 40000000, 975, 953.33333333333, 95.333333333333, 'Aktif', 2955, 'JAGOSOSMED', 'Sosial Media'),
(649, 649, 'TikTok View', 'TIKTOK View JS14 [ 200k/Day ] FAST UPDATE', 'FAST UPDATE', 100, 1000000000, 88.636363636364, 86.666666666667, 8.6666666666667, 'Aktif', 2956, 'JAGOSOSMED', 'Sosial Media'),
(650, 650, 'TikTok View', 'TIKTOK View JS15 [ 2M/Day ] FAST UPDATE CHEAP', 'waktu proses fast', 100, 500000000, 354.54545454545, 346.66666666667, 34.666666666667, 'Aktif', 2958, 'JAGOSOSMED', 'Sosial Media'),
(651, 651, 'TikTok View', 'TIKTOK View JS17 [ 100K-500K/Day ] FAST CHEAP ', 'INTANS', 100, 10000000, 35.454545454545, 34.666666666667, 3.4666666666667, 'Aktif', 2991, 'JAGOSOSMED', 'Sosial Media'),
(652, 652, 'TikTok View', 'TIKTOK View JS19 [ 5M ] MURAH! ', 'MURAH fast', 100, 5000000, 206.81818181818, 202.22222222222, 20.222222222222, 'Aktif', 2997, 'JAGOSOSMED', 'Sosial Media'),
(653, 653, 'TikTok View', 'TIKTOK View JS2 [ INSTAN ] [ 10M/days ] TERMURAH!', '10M/days', 100, 2147483647, 17.727272727273, 17.333333333333, 1.7333333333333, 'Aktif', 2765, 'JAGOSOSMED', 'Sosial Media'),
(654, 654, 'TikTok View', 'TIKTOK View JS20 [ 10M ] MURAHH! ', 'MURAHH', 100, 10000000, 88.636363636364, 86.666666666667, 8.6666666666667, 'Aktif', 3003, 'JAGOSOSMED', 'Sosial Media'),
(655, 655, 'TikTok View', 'TIKTOK View JS3 [ Trending + viral views]', '100% Real Engaging TikTok Views\nTiktok Trending Views\nHigh Chance to Get in Trend\nhttp://tiktok.com/trending\nPlace Big Order to Get in Trending.', 100, 10000000, 546.59090909091, 534.44444444444, 53.444444444444, 'Aktif', 2856, 'JAGOSOSMED', 'Sosial Media'),
(656, 656, 'TikTok View', 'TIKTOK View JS4 [ 500K/Day ] ', 'waktu mulai 0-1jam\n500K/Day\n', 100, 50000000, 502.27272727273, 491.11111111111, 49.111111111111, 'Aktif', 2858, 'JAGOSOSMED', 'Sosial Media'),
(657, 657, 'TikTok View', 'TIKTOK View JS9 [ TERMURAH]', 'waktu mulai 0-30 menit', 100, 5000000, 251.13636363636, 245.55555555556, 24.555555555556, 'Aktif', 2908, 'JAGOSOSMED', 'Sosial Media'),
(658, 658, 'TikTok View', 'TIKTOK View S9 [ superfast ] [ Trending + Viral Views]', 'Layanan ini berbeda dengan view lain\nkarena layanan ini bisa membuat trending dan viral video', 500, 500000, 2600, 2542.2222222222, 254.22222222222, 'Aktif', 1546, 'JAGOSOSMED', 'Sosial Media'),
(659, 659, 'TikTok View', 'TIKTOK View Server 4 Emergency', 'waktu mulai 0-12 jam', 10, 25000000, 2245.4545454545, 2195.5555555556, 219.55555555556, 'Aktif', 2323, 'JAGOSOSMED', 'Sosial Media'),
(660, 660, 'TikTok View', 'TIKTOK View Server 7  [ supercheap ] [ INSTANT ] BONUS++', 'no refill\nsuperfast\norder 1000 biasanya bisa dapat 1500-2000 view ( tapi kalo gk ada bonus no kompline )\njika pesanan lagi banyak, bisa lambat', 100, 300000000, 59.090909090909, 57.777777777778, 5.7777777777778, 'Aktif', 2087, 'JAGOSOSMED', 'Sosial Media'),
(661, 661, 'TikTok View', 'TIKTOK View Server 8 [ GUARANTED 30D ] [ 1M/Days ]  [ BEST - Speed, Quality]', '100k-1M/Days\norder kelipatan 100', 100, 10000000, 63.522727272727, 62.111111111111, 6.2111111111111, 'Aktif', 2375, 'JAGOSOSMED', 'Sosial Media'),
(662, 662, '- ? Promo 01 Oktober 2023 ?-', 'Tiktok Views PROMO 1 [ FASTT ] [ max 100k ] TERMURAH ⚡⚡ [ BACA NOTE ]', 'pesan dengan kelipatan 1000\n1000,2000,100000\njangan 1220,100300, 2100\n\nproses per 1k sekitar 10-50 detik\nstartcount gk jalan tapi tetap proses\n\nContoh target!\nhttps://www.tiktok.com/@mustakinnur.84/video/7281303143676153094\n\njangan pakai \nhttps://vt.tiktok.com/xxxxxxxx/', 1000, 100000, 1.4772727272727, 1.4444444444444, 0.14444444444444, 'Aktif', 3635, 'JAGOSOSMED', 'Sosial Media'),
(663, 663, 'Twitch', 'Twitch Followers Server 1 [ Max 150K ] [ Speed 1-5k ]  R30days', 'FAST', 100, 150000, 6677.2727272727, 6528.8888888889, 652.88888888889, 'Aktif', 2446, 'JAGOSOSMED', 'Sosial Media'),
(664, 664, 'Twitch', 'Twitch Followers Server 2 [ Max kK ] [ Speed 5K/D ] ', 'FAST', 20, 5000, 5022.7272727273, 4911.1111111111, 491.11111111111, 'Aktif', 2447, 'JAGOSOSMED', 'Sosial Media'),
(665, 665, 'Twitch', 'Twitch Followers Server 3 [ Max 50K ] [ Speed 5K/Day ] AUTO REFILL 15D ', 'AUTO REFILL 15 DAYS', 100, 50000, 19500, 19066.666666667, 1906.6666666667, 'Aktif', 2448, 'JAGOSOSMED', 'Sosial Media'),
(666, 666, 'Twitch Live Stream ', 'Twitch Live Views [FOR 10 MINUTES] [HQ] [Refill: No] [Max: 500] [Start Time: INSTANT] ', 'Instant start (can take up to 5 minutes sometime).\n\nNO REFILL / REFUND in case you stop your stream early even after 1 minute, please buy carefully.', 100, 500, 74750, 73088.888888889, 7308.8888888889, 'Aktif', 3151, 'JAGOSOSMED', 'Sosial Media'),
(667, 667, 'Twitch Live Stream ', 'Twitch Live Views [FOR 20 MINUTES] Fast ', 'Start: Instant\nTIDAK ADA REFILL / REFUND jika Anda menghentikan streaming lebih awal bahkan setelah 1 menit, harap beli dengan hati-hati.', 100, 2000, 191942.04545455, 187676.66666667, 18767.666666667, 'Aktif', 2360, 'JAGOSOSMED', 'Sosial Media'),
(668, 668, 'Twitch Live Stream ', 'Twitch Livestream Views 1 JAM', 'Start: Instant\nTIDAK ADA REFILL / REFUND jika Anda menghentikan streaming lebih awal bahkan setelah 1 menit, harap beli dengan hati-hati.', 20, 500, 422500, 413111.11111111, 41311.111111111, 'Aktif', 3152, 'JAGOSOSMED', 'Sosial Media'),
(669, 669, 'Twitch Live Stream ', 'Twitch Livestream Views 2 JAM ', 'Start: Instant\nTIDAK ADA REFILL / REFUND jika Anda menghentikan streaming lebih awal bahkan setelah 1 menit, harap beli dengan hati-hati.', 20, 500, 827272.72727273, 808888.88888889, 80888.888888889, 'Aktif', 3154, 'JAGOSOSMED', 'Sosial Media'),
(670, 670, 'Twitch Live Stream ', 'Twitch Livestream Views 3 JAM ', 'Start: Instant\nTIDAK ADA REFILL / REFUND jika Anda menghentikan streaming lebih awal bahkan setelah 1 menit, harap beli dengan hati-hati.', 20, 500, 1248295.4545455, 1220555.5555556, 122055.55555556, 'Aktif', 3155, 'JAGOSOSMED', 'Sosial Media'),
(671, 671, 'Twitch Live Stream ', 'Twitch Livestream Views 30 mins', 'Start: Instant\nTIDAK ADA REFILL / REFUND jika Anda menghentikan streaming lebih awal bahkan setelah 1 menit, harap beli dengan hati-hati.', 20, 500, 230809.09090909, 225680, 22568, 'Aktif', 2361, 'JAGOSOSMED', 'Sosial Media'),
(672, 672, 'Twitch Live Stream ', 'Twitch Livestream Views 5 JAM ', 'Start: Instant\nTIDAK ADA REFILL / REFUND jika Anda menghentikan streaming lebih awal bahkan setelah 1 menit, harap beli dengan hati-hati.', 20, 500, 2127272.7272727, 2080000, 208000, 'Aktif', 3156, 'JAGOSOSMED', 'Sosial Media'),
(673, 673, 'Twitch Live Stream ', 'Twitch Livestream Views 90 menit', 'Start: Instant\nTIDAK ADA REFILL / REFUND jika Anda menghentikan streaming lebih awal bahkan setelah 1 menit, harap beli dengan hati-hati.', 20, 500, 627840.90909091, 613888.88888889, 61388.888888889, 'Aktif', 3153, 'JAGOSOSMED', 'Sosial Media'),
(674, 674, 'Twitch Live Stream ', 'Twitch Online Streams | Min 100 | Max 2500 Viewers | 15 Minutes ', 'Start: Instant\nTIDAK ADA REFILL / REFUND jika Anda menghentikan streaming lebih awal bahkan setelah 1 menit, harap beli dengan hati-hati.', 100, 2500, 126454.54545455, 123644.44444444, 12364.444444444, 'Aktif', 3157, 'JAGOSOSMED', 'Sosial Media'),
(675, 675, 'Twitter Followers  No Refill ', 'Twitter Asia Followers Server 2 [ JAPAN / KOREA / HK ] [ No Refill] [ Max: 50K ] [ Start Time: 0 - 3 Hours ] [ Speed: 5K/Day ]', 'Speed: 5K/Day\nStart Time: 0 - 3 Hours\nMax: 50K', 5, 50000, 18318.181818182, 17911.111111111, 1791.1111111111, 'Aktif', 1085, 'JAGOSOSMED', 'Sosial Media'),
(676, 676, 'Twitter Followers  Bergaransi/garansi ', 'Twitter Asia Followers Server 3 [ JAPAN / KOREA / HK ] [ [ Refill 15D days ] [ Max: 50K ] [ Start Time: 0 - 3 Hours ] [ Speed: 5K/Day ] ', 'Speed: 5K/Day\nStart Time: 0 - 3 Hours\nRefill 15D days', 100, 50000, 21125, 20655.555555556, 2065.5555555556, 'Aktif', 1230, 'JAGOSOSMED', 'Sosial Media'),
(677, 677, 'Twitter Followers  Bergaransi/garansi ', 'Twitter Asia Followers Server 4 [ JAPAN / KOREA / HK ] [ [ Refill 30 days ] [ Max: 50K ] [ Start Time: 0 - 3 Hours ] [ Speed: 5K/Day ] ', '30 days refill\nSpeed: 5K/Day\nMax: 50K', 100, 50000, 24375, 23833.333333333, 2383.3333333333, 'Aktif', 1253, 'JAGOSOSMED', 'Sosial Media'),
(678, 678, 'Twitter Followers  No Refill ', 'Twitter Asia Followers Server 5 [ No refill ] [ [ No kompline ] [ Real - Chinese  ] ', 'Real\nChinese', 100, 100000, 6414.3181818182, 6271.7777777778, 627.17777777778, 'Aktif', 1413, 'JAGOSOSMED', 'Sosial Media'),
(679, 679, 'Twitter Followers  No Refill ', 'Twitter Asia Followers Server 6 [ No refill ] [ Japanese, Korea, Hong Kong ] [ Female Profile ] ', 'Start: 0-6Hour\nSpeed: 1K-3K/Day\nRefill: No Refill\nQuality: Hong Kong, Japan and Korea Female Profile', 5, 50000, 16545.454545455, 16177.777777778, 1617.7777777778, 'Aktif', 1427, 'JAGOSOSMED', 'Sosial Media'),
(680, 680, 'Twitter Followers  Bergaransi/garansi ', 'Twitter Asia Followers Versi 1 [ JAPAN / KOREA / HK ] [ Refill 15 days ] [ Max: 50K ]', 'Start Time: 0 - 3 Hours\nSpeed: 1K-3K/Day\nRefill 15 days', 100, 50000, 18982.954545455, 18561.111111111, 1856.1111111111, 'Aktif', 3561, 'JAGOSOSMED', 'Sosial Media'),
(681, 681, 'Twitter Followers  Bergaransi/garansi ', 'Twitter Asia Followers Versi 2 [ JAPAN / KOREA / HK ] [ Refill 30 days ] [ Max: 50K ] ', 'Start Time: 0 - 3 Hours\nSpeed: 1K-3K/Day\nRefill 30 days', 100, 50000, 21568.181818182, 21088.888888889, 2108.8888888889, 'Aktif', 3562, 'JAGOSOSMED', 'Sosial Media'),
(682, 682, 'Twitter Indonesia', 'Twitter Favorite/Likes REAL INDONESIA Fast', 'No garansi\nno kompline\nReal indo', 20, 200, 187613.63636364, 183444.44444444, 18344.444444444, 'Aktif', 1724, 'JAGOSOSMED', 'Sosial Media'),
(683, 683, 'Twitter Indonesia', 'Twitter Favorite/Likes REAL INDONESIA Fast s2', '1k/day\nkadang tidak sesuai\norder 100 dapat 85 like ( no kompline karna udah diinfokan )', 20, 1000, 87897.727272727, 85944.444444444, 8594.4444444444, 'Aktif', 3101, 'JAGOSOSMED', 'Sosial Media'),
(684, 684, 'Twitter Followers  No Refill ', 'Twitter Followers JS 1 [ Turkey ] [ Max 100K ]  [ HIGH DROP ]', 'waktu mulai 0-6 jam\nno refill\nbisa drop kapan aja', 100, 100000, 4963.6363636364, 4853.3333333333, 485.33333333333, 'Aktif', 3380, 'JAGOSOSMED', 'Sosial Media'),
(685, 685, 'Twitter Followers  Bergaransi/garansi ', 'Twitter Followers JS 3 [ Speed: 50K/Day ] [ Max 50K ] [ Refill: 30 Days ] [ HIGH DROP ]', 'Speed: 50K/Day\nRefill: 30 Days', 100, 500000, 16102.272727273, 15744.444444444, 1574.4444444444, 'Aktif', 3382, 'JAGOSOSMED', 'Sosial Media'),
(686, 686, 'Twitter Followers  Bergaransi/garansi ', 'Twitter Followers JS 4 [ Speed: 100K/Day ] [ Max 100K ] [ Refill: 30 Days ] [ HIGH DROP ]', 'Max 100K\n Refill: 30 Days', 100, 100000, 8863.6363636364, 8666.6666666667, 866.66666666667, 'Aktif', 3404, 'JAGOSOSMED', 'Sosial Media'),
(687, 687, 'Twitter Followers  Bergaransi/garansi ', 'Twitter Followers JS 5 [ Speed: 200K/Day ] [ Max: 2M ] [ Refill: 30 Days ] [ BEST SELLER ] [ HIGH DROP ]', 'Example Link: https://twitter.com/mustakinnur\n- Start: 0-1 Hours\n- Speed : 20K/day\n- Drop: \n- 30 Day Refill\n- Cancel button: Yes\n- Description: Different real accounts.', 100, 2000000, 14625, 14300, 1430, 'Aktif', 3405, 'JAGOSOSMED', 'Sosial Media'),
(688, 688, 'Twitter Followers  Bergaransi/garansi ', 'Twitter Followers JS 6 [ Max 100K ] [ 30 Day Refill ] [ HIGH DROP ]', 'Max 100K\n30 Day Refill', 100, 100000, 8272.7272727273, 8088.8888888889, 808.88888888889, 'Aktif', 3431, 'JAGOSOSMED', 'Sosial Media'),
(689, 689, 'Twitter Followers  Bergaransi/garansi ', 'Twitter Followers JS 7 [ Max 500K ] [ 30 Day Refill ] [ Super Fast - less drop ]', '30k-100k/day', 100, 500000, 56136.363636364, 54888.888888889, 5488.8888888889, 'Aktif', 3559, 'JAGOSOSMED', 'Sosial Media'),
(690, 690, 'Twitter Followers  No Refill ', 'Twitter Followers JS 7 [ Speed: 20K/Day ] [ No Refill ] [ Max: 100K ] [ HIGH DROP ]', 'Start: 0-15min\nSpeed: 10K/Day\nNo Refill\ntidak ada kompline apapun bisa aja drop kapan aja', 10, 100000, 4993.1818181818, 4882.2222222222, 488.22222222222, 'Aktif', 3516, 'JAGOSOSMED', 'Sosial Media'),
(691, 691, 'Twitter Indonesia', 'Twitter Followers REAL INDONESIA Fast S2', 'No garansi\nno kompline\nReal indo\nUSERNAME/AKUN YANG DI SUBMIT TIDAK BISA DI SUBMIT ULANG\nhanya bisa 200 per akun!', 10, 100, 184659.09090909, 180555.55555556, 18055.555555556, 'Aktif', 1722, 'JAGOSOSMED', 'Sosial Media'),
(692, 692, 'Twitter Followers  No Refill ', 'Twitter Followers Server 10 [ No refill ] ', '- Start 0-1 hour\n- Speed up to 400 / day (The average speed per day is 50-400!)', 50, 1000, 152720.45454545, 149326.66666667, 14932.666666667, 'Aktif', 2056, 'JAGOSOSMED', 'Sosial Media'),
(693, 693, 'Twitter Followers  Bergaransi/garansi ', 'Twitter Followers Server 12 [ 30 days refill ] USA', 'Start Time: 1 Hour\nREAL\nusername', 20, 10000, 225092.04545455, 220090, 22009, 'Aktif', 2193, 'JAGOSOSMED', 'Sosial Media'),
(694, 694, 'Twitter Followers  Bergaransi/garansi ', 'Twitter Followers Server 13 [ 30 days refill ] FAST⚡️⚡️', 'waktu mulai 0-6 jam', 10, 200000, 134180.68181818, 131198.88888889, 13119.888888889, 'Aktif', 2221, 'JAGOSOSMED', 'Sosial Media'),
(695, 695, 'Twitter Followers  Bergaransi/garansi ', 'Twitter Followers Server 16 [ 30 days refill ] FAST CHEAP⚡️ ', 'Instant\nR30 [ after requesting it may take 24-48h to start ]\n1K/Day\nQuality All profiles with profile pictures real looking', 20, 1000, 85681.818181818, 83777.777777778, 8377.7777777778, 'Aktif', 2276, 'JAGOSOSMED', 'Sosial Media'),
(696, 696, 'Twitter Followers  Bergaransi/garansi ', 'Twitter Followers Server 17 [ 30 days refill ] FAST CHEAPEAST⚡️  [ HIGH DROP ]', 'R30\nFAST', 100, 5000, 45012.5, 44012.222222222, 4401.2222222222, 'Aktif', 2336, 'JAGOSOSMED', 'Sosial Media');
INSERT INTO `layanan_sosmed` (`id`, `service_id`, `kategori`, `layanan`, `catatan`, `min`, `max`, `harga`, `harga_api`, `profit`, `status`, `provider_id`, `provider`, `tipe`) VALUES
(697, 697, 'Twitter Followers  No Refill ', 'Twitter Followers Server 19 [ No refill ] CHEAPEAST ', 'Instant\n2-3k/jam', 10, 10000, 37478.409090909, 36645.555555556, 3664.5555555556, 'Aktif', 2389, 'JAGOSOSMED', 'Sosial Media'),
(698, 698, 'Twitter Followers  No Refill ', 'Twitter Followers Server 20 [ No refill ] SuperInstant ', 'Instant, tapi bisa aja lambat saat overload atau ada update twitter\nSpeed: 20K/Day', 10, 20000, 18672.727272727, 18257.777777778, 1825.7777777778, 'Aktif', 2467, 'JAGOSOSMED', 'Sosial Media'),
(699, 699, 'Twitter Followers  Bergaransi/garansi ', 'Twitter Followers Server 21 [ Refill 30D ] SuperInstant ', 'Instant, tapi bisa aja lambat saat overload atau ada update twitter\nSpeed: 20K/Day', 100, 300000, 22986.363636364, 22475.555555556, 2247.5555555556, 'Aktif', 2468, 'JAGOSOSMED', 'Sosial Media'),
(700, 700, 'Twitter Followers  Bergaransi/garansi ', 'Twitter Followers Server 22 [ Refill 30D ] [Non Drop] 20k/days', '20k/days\nRefill 30 days', 100, 20000, 57465.909090909, 56188.888888889, 5618.8888888889, 'Aktif', 2658, 'JAGOSOSMED', 'Sosial Media'),
(701, 701, 'Twitter Followers  Bergaransi/garansi ', 'Twitter Followers Server 26 [ REFILL 30 DAYS ] [ 25k/day ] [ HIGH DROP ]', 'Instant\n20k-50k/day\nREFILL 30 DAYS', 200, 50000, 43106.818181818, 42148.888888889, 4214.8888888889, 'Aktif', 2739, 'JAGOSOSMED', 'Sosial Media'),
(702, 702, 'Twitter Followers  No Refill ', 'Twitter Followers Server 27 [ NO REFILL ] [ Max 250K ] ', 'NO REFILL', 200, 250000, 34139.772727273, 33381.111111111, 3338.1111111111, 'Aktif', 3018, 'JAGOSOSMED', 'Sosial Media'),
(703, 703, 'Twitter Followers  Bergaransi/garansi ', 'Twitter Followers Server 28 [ Refill 30days ] [ Max 50K ] [ Less Drop ]', 'Less Drop\nRefill 30days', 10, 50000, 17904.545454545, 17506.666666667, 1750.6666666667, 'Aktif', 3143, 'JAGOSOSMED', 'Sosial Media'),
(704, 704, 'Twitter Followers  Bergaransi/garansi ', 'Twitter Followers Server 29 [ Refill 30days ] [ Max 500K ] [ 50K/Day ] ', 'Link: Profile Link or USERNAME\nSpeed: 50-100K/Hours\nStart: Instant\nRefill: Refill 30 days.\nQuality: Global Bot Followers', 10, 500000, 16013.636363636, 15657.777777778, 1565.7777777778, 'Aktif', 3147, 'JAGOSOSMED', 'Sosial Media'),
(705, 705, 'Twitter Followers  Bergaransi/garansi ', 'Twitter Followers Server 30 [ Refill 30days ] [ Max 500K ] [ SUPERFAST ]  [ HIGH DROP ]', '30k-100k/days', 200, 500000, 54659.090909091, 53444.444444444, 5344.4444444444, 'Aktif', 3148, 'JAGOSOSMED', 'Sosial Media'),
(706, 706, 'Twitter Followers  Bergaransi/garansi ', 'Twitter Followers Server 6 [ refill 30days ] [ [ No kompline ] [ Real - Turkey ] ', '30 days refill', 100, 100000, 9750, 9533.3333333333, 953.33333333333, 'Aktif', 1414, 'JAGOSOSMED', 'Sosial Media'),
(707, 707, 'Twitter Followers  Bergaransi/garansi ', 'Twitter Followers Server 7 [ refill 30days ] [ No kompline ] [ Real - Chinese ] ', 'refill 30days', 100, 100000, 10181.363636364, 9955.1111111111, 995.51111111111, 'Aktif', 1426, 'JAGOSOSMED', 'Sosial Media'),
(708, 708, 'Twitter Favorites/Like', 'Twitter Likes JS 1 [ No Refill ] Max 5K ', 'No Refill\nSped - 5k/day', 10, 5000, 27979.545454545, 27357.777777778, 2735.7777777778, 'Aktif', 2250, 'JAGOSOSMED', 'Sosial Media'),
(709, 709, 'Twitter Favorites/Like', 'Twitter Likes JS 10 [ Speed 10k/days ] [ Non Drop ] [ Real Accounts ] ', 'no refill ( misal ada drop tetap no refill )\nspeed 300/day', 10, 10000, 41511.363636364, 40588.888888889, 4058.8888888889, 'Aktif', 3517, 'JAGOSOSMED', 'Sosial Media'),
(710, 710, 'Twitter Favorites/Like', 'Twitter Likes JS 11 [ Max 100K ] [ 30k/days ] [ NO REFILL ] ', 'Low Drop\ntapi bisa langsung drop ( no kompline )', 50, 100000, 4284.0909090909, 4188.8888888889, 418.88888888889, 'Aktif', 3518, 'JAGOSOSMED', 'Sosial Media'),
(711, 711, 'Twitter Favorites/Like', 'Twitter Likes JS 2 [ 30days Refill ] Max 5K USA', 'slow', 20, 5000, 37729.545454545, 36891.111111111, 3689.1111111111, 'Aktif', 2251, 'JAGOSOSMED', 'Sosial Media'),
(712, 712, 'Twitter Favorites/Like', 'Twitter Likes JS 3 [ NO Refill ] FAST [HQ]', 'selesai 1000\nkemungkinan tidak sampai 6 jam an\ntetap tunggu 1x24 jam', 10, 2500, 67275, 65780, 6578, 'Aktif', 2252, 'JAGOSOSMED', 'Sosial Media'),
(713, 713, 'Twitter Favorites/Like', 'Twitter Likes JS 4 [ NO Refill ] FAST [HQ] [ 20/10k ]', 'waktu mulai 0-1 jam', 20, 10000, 101695.45454545, 99435.555555556, 9943.5555555555, 'Aktif', 2397, 'JAGOSOSMED', 'Sosial Media'),
(714, 714, 'Twitter Favorites/Like', 'Twitter Likes JS 5 [ NO Refill ] FAST [ 5K/Day ] [HIGH DROP]', '0 - 1 Hour\n5K/Day', 100, 10000000, 15245.454545455, 14906.666666667, 1490.6666666667, 'Aktif', 2952, 'JAGOSOSMED', 'Sosial Media'),
(715, 715, 'Twitter Favorites/Like', 'Twitter Likes JS 7 [ 30 Days Refill ] [ LOW DROP ] [ Speed: 10K/Day ]', 'Max: 10M\nSpeed: 10K/Day\n30 Days Refill', 100, 10000000, 66477.272727273, 65000, 6500, 'Aktif', 3208, 'JAGOSOSMED', 'Sosial Media'),
(716, 716, 'Twitter Favorites/Like', 'Twitter Likes JS 8 [ 30 Days Refill ] [ NON DROP ] [ HQ ]', '30 Days Refill\nNON DROP\nHQ \nwaktu mulai 0-6 jam', 20, 10000, 73863.636363636, 72222.222222222, 7222.2222222222, 'Aktif', 3209, 'JAGOSOSMED', 'Sosial Media'),
(717, 717, 'Twitter Favorites/Like', 'Twitter Likes JS 9 [ 30 Days Refill ] [ Best speed ] [ REAL ] ', '10k/days', 10, 10000, 52413.636363636, 51248.888888889, 5124.8888888889, 'Aktif', 3498, 'JAGOSOSMED', 'Sosial Media'),
(718, 718, 'Twitter Indonesia', 'Twitter Retweet REAL INDONESIA Fast', 'No garansi\nno kompline\nReal indo', 15, 100, 472727.27272727, 462222.22222222, 46222.222222222, 'Aktif', 1723, 'JAGOSOSMED', 'Sosial Media'),
(719, 719, 'Twitter Retweets', 'Twitter Retweets Server 1 [ Max 2K ]⚡️⚡️', '2k/days\nno refill', 50, 10000, 44613.636363636, 43622.222222222, 4362.2222222222, 'Aktif', 1562, 'JAGOSOSMED', 'Sosial Media'),
(720, 720, 'Twitter Retweets', 'Twitter Retweets Server 2 [ Max 1K ]', 'no refill\n', 50, 1000, 18909.090909091, 18488.888888889, 1848.8888888889, 'Aktif', 3110, 'JAGOSOSMED', 'Sosial Media'),
(721, 721, 'Twitter Retweets', 'Twitter Retweets Server 3 [ Max 50K ] ', 'No Refill\n1k-10k/day\nLink: https://twitter.com/user/status/1382928752842137602', 10, 50000, 18140.909090909, 17737.777777778, 1773.7777777778, 'Aktif', 3111, 'JAGOSOSMED', 'Sosial Media'),
(722, 722, 'Twitter Tweet view', 'Twitter Tweet Views Server 1 [ Max 500K ] FAST', 'Max 500K\nwaktu mulai 0-30 menit', 50, 500000, 88.636363636364, 86.666666666667, 8.6666666666667, 'Aktif', 2904, 'JAGOSOSMED', 'Sosial Media'),
(723, 723, 'Twitter Tweet view', 'Twitter Tweet Views Server 2 [ Max 1M ] FAST', 'Max 1M \nwaktu mulai 0-30 menit', 100, 1000000, 310.22727272727, 303.33333333333, 30.333333333333, 'Aktif', 2905, 'JAGOSOSMED', 'Sosial Media'),
(724, 724, 'Twitter Tweet view', 'Twitter Tweet Views Server 3 [ Max 20M ] FAST', 'FAST\nwaktu mulai 0-60 menit', 10, 20000000, 650, 635.55555555556, 63.555555555556, 'Aktif', 2906, 'JAGOSOSMED', 'Sosial Media'),
(725, 725, 'Twitter Tweet view', 'Twitter Tweet Views Server 4 [ Max 1M ] ', 'waktu mulai  0-2 jam', 100, 1000000, 47.272727272727, 46.222222222222, 4.6222222222222, 'Aktif', 3144, 'JAGOSOSMED', 'Sosial Media'),
(726, 726, 'Twitter Tweet view', 'Twitter Tweet Views Server 5 [ Max 50M ]', 'Super INSTANT', 100, 2147483647, 29.545454545455, 28.888888888889, 2.8888888888889, 'Aktif', 3181, 'JAGOSOSMED', 'Sosial Media'),
(727, 727, 'Twitter Tweet view', 'Twitter Tweet Views Server 6 [ Max 100M ] [ CHEAP ]', 'Start: 0-30min\nSpeed: Fast\nRefill: No Refill', 10, 100000000, 2.9545454545455, 2.8888888888889, 0.28888888888889, 'Aktif', 3576, 'JAGOSOSMED', 'Sosial Media'),
(728, 728, 'Twitter Views & Impressions', 'Twitter Views Server 1 [1M]', 'Refill (30 Days Maximum) \n0-1 Hour Start! \n10K - 100K/Day \nMinimum 100', 100, 1000000, 14285.227272727, 13967.777777778, 1396.7777777778, 'Aktif', 138, 'JAGOSOSMED', 'Sosial Media'),
(729, 729, 'Twitter Views & Impressions', 'Twitter Views Server 3 [ FAST - Max 1M ] ', '100k-200k/hour', 100, 10000000, 1654.5454545455, 1617.7777777778, 161.77777777778, 'Aktif', 1811, 'JAGOSOSMED', 'Sosial Media'),
(730, 730, 'Twitter Views & Impressions', 'Twitter Views Server 4 [ SUPERFAST - Max 100M ] ', '1Juta/hour', 100, 100000000, 1861.3636363636, 1820, 182, 'Aktif', 1870, 'JAGOSOSMED', 'Sosial Media'),
(731, 731, 'Twitter Views & Impressions', 'Twitter Views Server 5 [ Cheap - Max 100k ] ', 'No REFILL\n100k/hour', 100, 150000, 723.86363636364, 707.77777777778, 70.777777777778, 'Aktif', 1960, 'JAGOSOSMED', 'Sosial Media'),
(732, 732, 'Twitter Views & Impressions', 'Twitter Views Video Server 6 [ HARGA MURAH - Max: Unlimited ] BONUS+', 'HARGA MURAH \nKemungkinan besar dapat bonus hampir  50%\njika tidak dapat bonus jangan kompline!', 10, 50000000, 2.9545454545455, 2.8888888888889, 0.28888888888889, 'Aktif', 3393, 'JAGOSOSMED', 'Sosial Media'),
(733, 733, 'Website Traffic', 'Website Traffic From Blogger.com [Speed 50K/Day] [ No refill ] ', 'Start Time: Instant - 12 hours\nSpeed: Up to 50K/ day\nSpecs:\n100% Real & Unique Traffic\nDesktop Traffic - Direct Visits\nGoogle Analytics Supported\nYou can use bit.ly to track results\nNo Adult, Drugs or other harmful websites allowed\nLink Format: Full Website URL', 100, 10000000, 576.13636363636, 563.33333333333, 56.333333333333, 'Aktif', 2990, 'JAGOSOSMED', 'Sosial Media'),
(734, 734, 'Website Traffic', 'Website Traffic From Facebook [Speed 50K/Day] [ No refill ]', 'Start Time: Instant - 12 hours\nSpeed: Up to 50K/ day\nSpecs:\n100% Real & Unique Traffic\nDesktop Traffic - Direct Visits\nGoogle Analytics Supported\nYou can use bit.ly to track results\nNo Adult, Drugs or other harmful websites allowed\nLink Format: Full Website URL', 100, 10000000, 576.13636363636, 563.33333333333, 56.333333333333, 'Aktif', 2985, 'JAGOSOSMED', 'Sosial Media'),
(735, 735, 'Website Traffic', 'Website Traffic From Google [Speed 50K/Day] [ No refill ] ', 'Start Time: Instant - 12 hours\nSpeed: Up to 50K/ day\nSpecs:\n100% Real & Unique Traffic\nDesktop Traffic - Direct Visits\nGoogle Analytics Supported\nYou can use bit.ly to track results\nNo Adult, Drugs or other harmful websites allowed\nLink Format: Full Website URL', 100, 10000000, 576.13636363636, 563.33333333333, 56.333333333333, 'Aktif', 2989, 'JAGOSOSMED', 'Sosial Media'),
(736, 736, 'Website Traffic', 'Website Traffic From Instagram [Speed 50K/Day] [ No refill ] ', 'Start Time: Instant - 12 hours\nSpeed: Up to 50K/ day\nSpecs:\n100% Real & Unique Traffic\nDesktop Traffic - Direct Visits\nGoogle Analytics Supported\nYou can use bit.ly to track results\nNo Adult, Drugs or other harmful websites allowed\nLink Format: Full Website URL', 100, 10000000, 576.13636363636, 563.33333333333, 56.333333333333, 'Aktif', 2987, 'JAGOSOSMED', 'Sosial Media'),
(737, 737, 'Website Traffic', 'Website Traffic From Twitter [Speed 50K/Day] [ No refill ] ', 'Start Time: Instant - 12 hours\nSpeed: Up to 50K/ day\nSpecs:\n100% Real & Unique Traffic\nDesktop Traffic - Direct Visits\nGoogle Analytics Supported\nYou can use bit.ly to track results\nNo Adult, Drugs or other harmful websites allowed\nLink Format: Full Website URL', 100, 10000000, 576.13636363636, 563.33333333333, 56.333333333333, 'Aktif', 2986, 'JAGOSOSMED', 'Sosial Media'),
(738, 738, 'Website Traffic', 'Website Traffic From Youtube [Speed 50K/Day] [ No refill ] ', 'Start Time: Instant - 12 hours\nSpeed: Up to 50K/ day\nSpecs:\n100% Real & Unique Traffic\nDesktop Traffic - Direct Visits\nGoogle Analytics Supported\nYou can use bit.ly to track results\nNo Adult, Drugs or other harmful websites allowed\nLink Format: Full Website URL', 100, 10000000, 576.13636363636, 563.33333333333, 56.333333333333, 'Aktif', 2988, 'JAGOSOSMED', 'Sosial Media'),
(739, 739, 'Website Traffic', 'Website Traffic Server 2 [10M]', 'Super Cepat', 100, 10000000, 635.22727272727, 621.11111111111, 62.111111111111, 'Aktif', 143, 'JAGOSOSMED', 'Sosial Media'),
(740, 740, 'Website Traffic', 'Website Traffic Server 3 [10M] Direct URL Redirection [No Referrer]', 'Link Format:\nhttps://yourwebsite.com', 10000, 10000000, 472.72727272727, 462.22222222222, 46.222222222222, 'Aktif', 2984, 'JAGOSOSMED', 'Sosial Media'),
(741, 741, 'Youtube Views  BIG ORDER ', 'Youtube ADS Views [ REAL - Life Time Guaranteed ] [ Minimum 20K ] [Start Time: 0-48 Hour] ', '10K - 500K Views Per Day\nMIN 10K - MAX 5M\nMax Video Time 5 Min.\nStart: in 24 hours (for ADS approval)\n Stable NON-DROP Refill Guarantee\nhttps://prnt.sc/VJCAHekXgJ40\n\nNotes:\n* Can process videos with double pre-roll ads\n* Note that ADS views may include real user engagements - your video may get some daily likes/dislikes, comments, shares, subscribers\nall made by real YouTube users that we do not control!\n** If views added from external non-organic sources your guarantee may be revoked!', 20000, 1000000000, 23784.090909091, 23255.555555556, 2325.5555555556, 'Aktif', 3375, 'JAGOSOSMED', 'Sosial Media'),
(742, 742, 'Youtube Views  BIG ORDER ', 'Youtube ADS Views Server 1 [ Minimum 1M ] 24hr Complete [ Speed 2M-5M/day ]', 'Kami akan menyetujui iklan Anda dan menyelesaikan pesanan secepatnya\nUkuran Video Di Bawah: 5 Menit\nWaktu Mulai: 0-6 Jam (Persetujuan Instan)\nKecepatan Hingga 10 Juta Sehari\n\nHanya menambah view. tidak menambah adsense\nsumber view asli dari adwords google\n\n( Tampilan Iklan Nyata Lebih Murah daripada Tampilan Palsu )', 1000000, 10000000, 13975, 13664.444444444, 1366.4444444444, 'Aktif', 3093, 'JAGOSOSMED', 'Sosial Media'),
(743, 743, 'Youtube Views  BIG ORDER ', 'Youtube ADS Views Server 2 [ Minimum 1M ] [Start Time: 72 Hours] ', '48-72 Hours start and complete\nReport will be Provided After complete\nVideo Lenght max 5 Minutes', 1000000, 10000000, 13339.772727273, 13043.333333333, 1304.3333333333, 'Aktif', 3094, 'JAGOSOSMED', 'Sosial Media'),
(744, 744, 'Youtube Views  BIG ORDER ', 'Youtube ADS Views Server 3 [Start Time: 72 Hours] [Speed: 100K/Day] ', 'Ads Views\n100K/Day', 300000, 100000000, 20888.636363636, 20424.444444444, 2042.4444444444, 'Aktif', 3095, 'JAGOSOSMED', 'Sosial Media'),
(745, 745, 'Youtube Views  BIG ORDER ', 'Youtube ADS Views Server 4 [ Real Views + 4-6% Likes [ Minimum 500k ] [ 24hr Complete ]]', 'Bonus 4-6% Likes', 500000, 10000000, 14181.818181818, 13866.666666667, 1386.6666666667, 'Aktif', 3164, 'JAGOSOSMED', 'Sosial Media'),
(746, 746, 'Youtube Views  BIG ORDER ', 'Youtube Adwords Views [ Minimum 1M ] [ 48-72 start and  Complete ]', '48-72 Hours start and complete\nReport will be Provided After complete\nVideo Lenght max 5 Minutes', 1000000, 10000000, 13369.318181818, 13072.222222222, 1307.2222222222, 'Aktif', 3563, 'JAGOSOSMED', 'Sosial Media'),
(747, 747, 'Youtube Likes / Dislikes / Shares / Comment', 'Youtube Like [ S6 ] [ TERMURAH Instant  ][ R30 ] FAST', '- Instant\n- 30 days refill\nStart Time 0-1 hours', 50, 100000, 19042.045454545, 18618.888888889, 1861.8888888889, 'Aktif', 1250, 'JAGOSOSMED', 'Sosial Media'),
(748, 748, 'Youtube Likes / Dislikes / Shares / Comment', 'Youtube Like JS 10 Cheapest [ No refill ] ', 'Best Price\nNO REFILL\nno garansi', 50, 50000, 21287.5, 20814.444444444, 2081.4444444444, 'Aktif', 2169, 'JAGOSOSMED', 'Sosial Media'),
(749, 749, 'Youtube Likes / Dislikes / Shares / Comment', 'Youtube Like JS 12 Cheapest [ No refill ] [ No Drop ] ', 'Instan dan Cepat ( Kualitas Tinggi )\nMin 100 dan Max 100k\n( Tidak Ada Drop Sejak 90 Hari )\nIni Layanan no refill jika suatu saat drop tidak ada garansi!\n\nMedanpedia Tujuannya adalah Memberikan Harga Paling Terjangkau di Pasar', 10, 100000, 21523.863636364, 21045.555555556, 2104.5555555556, 'Aktif', 2381, 'JAGOSOSMED', 'Sosial Media'),
(750, 750, 'Youtube Likes / Dislikes / Shares / Comment', 'Youtube Like JS 13 Cheapest [ 30 Days Refill ]', 'Instant and Fast ( High Quality )\n30 Days Refill', 10, 100000, 20031.818181818, 19586.666666667, 1958.6666666667, 'Aktif', 2382, 'JAGOSOSMED', 'Sosial Media'),
(751, 751, 'Youtube Likes / Dislikes / Shares / Comment', 'Youtube Like JS 14 Cheapest Indonesian [ 30 Days Refill ] Instant ', 'Instant Start\nBest Quality with World Cheapest Price )\n30 Days Free Refill if You Found Single Likes Drop', 10, 1000000, 22085.227272727, 21594.444444444, 2159.4444444444, 'Aktif', 2514, 'JAGOSOSMED', 'Sosial Media'),
(752, 752, 'Youtube Likes / Dislikes / Shares / Comment', 'Youtube Like JS 15 Cheapest Indonesian [ No Refill ] Instant ', '0-15 Minutes', 10, 50000, 13605.681818182, 13303.333333333, 1330.3333333333, 'Aktif', 2642, 'JAGOSOSMED', 'Sosial Media'),
(753, 753, 'Youtube Likes / Dislikes / Shares / Comment', 'Youtube Like JS 16 [  INDONESIA ][ LIFETIME GUARANTEE ] Instant ', 'Max 20k', 10, 20000, 38763.636363636, 37902.222222222, 3790.2222222222, 'Aktif', 2707, 'JAGOSOSMED', 'Sosial Media'),
(754, 754, 'Youtube Likes / Dislikes / Shares / Comment', 'Youtube Like JS 17 [ R30 ][ 2-3k/day ]  LESSDROP', '0-6h Start\nR30\nSpeed - 2-3k/d\nDrop 1-3%', 50, 100000, 26428.409090909, 25841.111111111, 2584.1111111111, 'Aktif', 2766, 'JAGOSOSMED', 'Sosial Media'),
(755, 755, 'Youtube Likes / Dislikes / Shares / Comment', 'Youtube Like JS 18 [ R30 ][ 40k/day ] Nondrop', '30D refill\nfast server', 20, 100000, 25379.545454545, 24815.555555556, 2481.5555555556, 'Aktif', 2767, 'JAGOSOSMED', 'Sosial Media'),
(756, 756, 'Youtube Likes / Dislikes / Shares / Comment', 'Youtube Like JS 20 [ NO refill ] [ 5k/day ]', 'Instan\n5k/days', 50, 500000, 20977.272727273, 20511.111111111, 2051.1111111111, 'Aktif', 2803, 'JAGOSOSMED', 'Sosial Media'),
(757, 757, 'Youtube Likes / Dislikes / Shares / Comment', 'Youtube Like JS 21 [ INDONESIA ][ R30 ] Instant ', '20k/days\n', 10, 50000, 25734.090909091, 25162.222222222, 2516.2222222222, 'Aktif', 2823, 'JAGOSOSMED', 'Sosial Media'),
(758, 758, 'Youtube Likes / Dislikes / Shares / Comment', 'Youtube Like JS 22 [ CHEAP ][ R30 ] ', 'waktu mulai 0-6 jam', 10, 50000, 12778.409090909, 12494.444444444, 1249.4444444444, 'Aktif', 2875, 'JAGOSOSMED', 'Sosial Media'),
(759, 759, 'Youtube Likes / Dislikes / Shares / Comment', 'Youtube Like JS 23 [ CHEAP ][ R30 ] [ 50k-100k/day ]', '0-1Hr Start', 10, 100000, 16250, 15888.888888889, 1588.8888888889, 'Aktif', 3023, 'JAGOSOSMED', 'Sosial Media'),
(760, 760, 'Youtube Likes / Dislikes / Shares / Comment', 'Youtube Like JS 24 [Refill: No Refill] [Max: 3K] [Start Time: 0-1 Hour] [Speed: 3K/Day]', 'No refill\nNorefund\n\nOrder with your own risk', 10, 3000, 3900, 3813.3333333333, 381.33333333333, 'Aktif', 3160, 'JAGOSOSMED', 'Sosial Media'),
(761, 761, 'Youtube Likes / Dislikes / Shares / Comment', 'Youtube Like JS 3 [ 30 Days Refill - Max 5K ] [ Speed 100+/D ]', '- Start : 0 - 24 hours\n- Min: 50 - Max: 5K\n- Daily speed 50 - 200 ( Speed can slower if server overload, in this care must wait )\n- NON DROP so far - 30 days Refill Guarantee\n\nNOTE :\n- No Refund after order placed\n- No Refill if Old Likes Drop Below Start Count .', 50, 10000, 40772.727272727, 39866.666666667, 3986.6666666667, 'Aktif', 1453, 'JAGOSOSMED', 'Sosial Media'),
(762, 762, 'Youtube Likes / Dislikes / Shares / Comment', 'Youtube Like JS 4 [ TERMURAH ][ R30 - 10K ][ 200+/D ]♻️', '- Instant\n- Non drop -\n- Guarantee: 30 days refill if any drop\n- Speed 200+/D', 20, 10000, 53329.545454545, 52144.444444444, 5214.4444444444, 'Aktif', 1454, 'JAGOSOSMED', 'Sosial Media'),
(763, 763, 'Youtube Likes / Dislikes / Shares / Comment', 'Youtube Like JS 5 [ Best Price in Market ][ 30 Days refill ]', 'Speed 200-400 Per Day\nRefill: 30 Days\nStart Time 0-2 hours', 50, 15000, 22351.136363636, 21854.444444444, 2185.4444444444, 'Aktif', 1489, 'JAGOSOSMED', 'Sosial Media'),
(764, 764, 'Youtube Likes / Dislikes / Shares / Comment', 'Youtube Like JS 5 [ TERMURAH ][ NO REFILL- 10K ][ 10K+/D ]', '- Instant Start\n- Speed for now about 10K/D\n- No refill / No refund with any reason .', 20, 10000, 66846.590909091, 65361.111111111, 6536.1111111111, 'Aktif', 1455, 'JAGOSOSMED', 'Sosial Media'),
(765, 765, 'Youtube Likes / Dislikes / Shares / Comment', 'Youtube Like JS 6 [ Best Seller ][ AUTO Refill ]♻️', 'Instant\n30 days refill\nSpeed 200+/hari', 20, 10000, 51350, 50208.888888889, 5020.8888888889, 'Aktif', 1518, 'JAGOSOSMED', 'Sosial Media'),
(766, 766, 'Youtube Likes / Dislikes / Shares / Comment', 'Youtube Like JS 7 [ No Refill and Cheapest ] ', 'Real Youtube Likes\nInstant Start', 30, 50000, 17948.863636364, 17550, 1755, 'Aktif', 1621, 'JAGOSOSMED', 'Sosial Media'),
(767, 767, 'Youtube Likes / Dislikes / Shares / Comment', 'Youtube Like Server 1 [ No Refill ] [ Max: 2K ] [ Speed: 2K/Day ] ', 'No refill\nno kompline\nkemungkinan bisa drop kapan aja', 10, 2000, 2464.0909090909, 2409.3333333333, 240.93333333333, 'Aktif', 3463, 'JAGOSOSMED', 'Sosial Media'),
(768, 768, 'Youtube Likes / Dislikes / Shares / Comment', 'Youtube Like Server 2 [ No Refill ] [ Max 50K ] [ Speed: 10K/Day ]', 'Start: 30 Munites\nDROP bisa kapan aja\nno refill\nno refund apapun itu alasannya', 10, 50000, 5909.0909090909, 5777.7777777778, 577.77777777778, 'Aktif', 3464, 'JAGOSOSMED', 'Sosial Media'),
(769, 769, 'Youtube Likes / Dislikes / Shares / Comment', 'Youtube Like Server 3 [ Refill 7 days ] [ Max 50K ] [ Speed: 50K/Day ]', 'Start: 1 Hour\n50K/Per Day', 10, 100000, 6352.2727272727, 6211.1111111111, 621.11111111111, 'Aktif', 3465, 'JAGOSOSMED', 'Sosial Media'),
(770, 770, 'Youtube Likes / Dislikes / Shares / Comment', 'Youtube Like Server 4 [ Refill 15 days ] [ Max 50K ] [ Speed: 50K/Day ]', 'Start: 1 Hour\n50K/Per Day', 10, 100000, 6647.7272727273, 6500, 650, 'Aktif', 3466, 'JAGOSOSMED', 'Sosial Media'),
(771, 771, 'Youtube Likes / Dislikes / Shares / Comment', 'Youtube Like Server 5 [ Refill 30 days ] [ Max 50K ] [ Speed: 50K/Day ]', 'Start: 1 Hour\n50K/Per Day', 10, 100000, 7534.0909090909, 7366.6666666667, 736.66666666667, 'Aktif', 3467, 'JAGOSOSMED', 'Sosial Media'),
(772, 772, 'Youtube Likes / Dislikes / Shares / Comment', 'Youtube Like Server 6 [Lifetime Guaranteed] [ 0-15 Min ] [ 80K/Day ]⚡♻️??? ????', '80K/Day\n0-15 Min', 10, 500000, 8642.0454545455, 8450, 845, 'Aktif', 3636, 'JAGOSOSMED', 'Sosial Media'),
(773, 773, 'YouTube Live Stream  Harga Murah   30 Minutes to 2', 'YouTube Live Stream [ 12 Hours Live CONCURRENT ] [ Latest Service ]', 'Views will start Updating within 2-3 Minutes of Order\nNo refund while Order is running', 100, 20000, 960165.81818182, 938828.8, 93882.88, 'Aktif', 3486, 'JAGOSOSMED', 'Sosial Media'),
(774, 774, 'YouTube Live Stream  Harga Murah   30 Minutes to 2', 'YouTube Live Stream [ 12 hours Live CONCURRENT ] [ Latest Service ] WORK ', '12 Hours Live CONCURRENT', 100, 20000, 1270454.5454545, 1242222.2222222, 124222.22222222, 'Aktif', 2733, 'JAGOSOSMED', 'Sosial Media'),
(775, 775, 'Youtube Live Stream / Youtube Premiered Waiting', 'YouTube Live Stream [ 12 jam Live CONCURRENT ] [ Latest Service ] P1 ', 'YouTube Live Stream [ 12 jam Live CONCURRENT ] [ Latest Service ] P1', 100, 50000, 5247184.0909091, 5130580, 513058, 'Aktif', 2869, 'JAGOSOSMED', 'Sosial Media'),
(776, 776, 'YouTube Live Stream  Harga Murah   30 Minutes to 2', 'YouTube Live Stream [ 120 Minutes ( 2 Hours ) Live CONCURRENT ] [ Latest Service ]', 'Views will start Updating within 2-3 Minutes of Order\nNo refund while Order is running', 100, 20000, 160027.63636364, 156471.46666667, 15647.146666667, 'Aktif', 3483, 'JAGOSOSMED', 'Sosial Media'),
(777, 777, 'Youtube Live Stream / Youtube Premiered Waiting', 'YouTube Live Stream [ 120 Minutes Live CONCURRENT ] [ Latest Service ] P1 ', 'YouTube Live Stream [ 120 Minutes Live CONCURRENT ] [ Latest Service ] P1', 100, 50000, 877071.59090909, 857581.11111111, 85758.111111111, 'Aktif', 2866, 'JAGOSOSMED', 'Sosial Media'),
(778, 778, 'YouTube Live Stream  Harga Murah   30 Minutes to 2', 'YouTube Live Stream [ 15 Minutes Live CONCURRENT ] [ Latest Service ]', 'Views will start Updating within 2-3 Minutes of Order\nNo refund while Order is running', 100, 20000, 19874.4, 19432.746666667, 1943.2746666667, 'Aktif', 3480, 'JAGOSOSMED', 'Sosial Media'),
(779, 779, 'Youtube Live Stream / Youtube Premiered Waiting', 'YouTube Live Stream [ 15 Minutes Live CONCURRENT ] [ Latest Service ] P1', 'YouTube Live Stream [ 15 Minutes Live CONCURRENT ] [ Latest Service ] P1', 100, 50000, 116867.04545455, 114270, 11427, 'Aktif', 2862, 'JAGOSOSMED', 'Sosial Media'),
(780, 780, 'YouTube Live Stream  Harga Murah   30 Minutes to 2', 'YouTube Live Stream [ 15 Minutes Live CONCURRENT ] [ Latest Service ] WORK', '15 Minutes Live CONCURRENT', 100, 20000, 50271.590909091, 49154.444444444, 4915.4444444444, 'Aktif', 2726, 'JAGOSOSMED', 'Sosial Media'),
(781, 781, 'YouTube Live Stream  Harga Murah   30 Minutes to 2', 'YouTube Live Stream [ 180 Minutes ( 3 hours ) Live CONCURRENT ] [ Latest Service ]', 'Views will start Updating within 2-3 Minutes of Order\nNo refund while Order is running', 100, 20000, 240041.45454545, 234707.2, 23470.72, 'Aktif', 3484, 'JAGOSOSMED', 'Sosial Media'),
(782, 782, 'YouTube Live Stream  Harga Murah   30 Minutes to 2', 'YouTube Live Stream [ 2 hours Live CONCURRENT ] [ Latest Service ] WORK ', '2 hours Live CONCURRENT', 100, 20000, 384622.72727273, 376075.55555556, 37607.555555556, 'Aktif', 2730, 'JAGOSOSMED', 'Sosial Media'),
(783, 783, 'YouTube Live Stream  Harga Murah   30 Minutes to 2', 'YouTube Live Stream [ 24 Hours Live CONCURRENT ] [ Latest Service ]', 'Views will start Updating within 2-3 Minutes of Order\nNo refund while Order is running', 100, 20000, 1920331.6363636, 1877657.6, 187765.76, 'Aktif', 3487, 'JAGOSOSMED', 'Sosial Media'),
(784, 784, 'YouTube Live Stream  Harga Murah   30 Minutes to 2', 'YouTube Live Stream [ 24 hours Live CONCURRENT ] [ Latest Service ] WORK ', '24 hours Live CONCURRENT', 100, 20000, 2363636.3636364, 2311111.1111111, 231111.11111111, 'Aktif', 2734, 'JAGOSOSMED', 'Sosial Media'),
(785, 785, 'Youtube Live Stream / Youtube Premiered Waiting', 'YouTube Live Stream [ 24 jam Live CONCURRENT ] [ Latest Service ] P1', 'YouTube Live Stream [ 24 jam Live CONCURRENT ] [ Latest Service ] P1', 100, 50000, 10464586.363636, 10232040, 1023204, 'Aktif', 2870, 'JAGOSOSMED', 'Sosial Media'),
(786, 786, 'YouTube Live Stream  Harga Murah   30 Minutes to 2', 'YouTube Live Stream [ 3 hours Live CONCURRENT ] [ Latest Service ] WORK ', '3 hours Live CONCURRENT', 100, 20000, 567523.86363636, 554912.22222222, 55491.222222222, 'Aktif', 2731, 'JAGOSOSMED', 'Sosial Media'),
(787, 787, 'Youtube Live Stream / Youtube Premiered Waiting', 'YouTube Live Stream [ 3 jam Live CONCURRENT ] [ Latest Service ] P1 ', 'YouTube Live Stream [ 3 jam Live CONCURRENT ] [ Latest Service ] P1', 100, 50000, 1309794.3181818, 1280687.7777778, 128068.77777778, 'Aktif', 2867, 'JAGOSOSMED', 'Sosial Media'),
(788, 788, 'YouTube Live Stream  Harga Murah   30 Minutes to 2', 'YouTube Live Stream [ 30 Minutes Live CONCURRENT ] [ Latest Service ]', 'Views will start Updating within 2-3 Minutes of Order\nNo refund while Order is running', 100, 20000, 78487.5, 76743.333333333, 7674.3333333333, 'Aktif', 3481, 'JAGOSOSMED', 'Sosial Media'),
(789, 789, 'Youtube Live Stream / Youtube Premiered Waiting', 'YouTube Live Stream [ 30 Minutes Live CONCURRENT ] [ Latest Service ] P1', 'YouTube Live Stream [ 30 Minutes Live CONCURRENT ] [ Latest Service ] P1', 100, 50000, 233290.90909091, 228106.66666667, 22810.666666667, 'Aktif', 2863, 'JAGOSOSMED', 'Sosial Media'),
(790, 790, 'YouTube Live Stream  Harga Murah   30 Minutes to 2', 'YouTube Live Stream [ 30 Minutes Live CONCURRENT ] [ Latest Service ] WORK ', '30 Minutes Live CONCURRENT', 100, 20000, 97632.954545455, 95463.333333333, 9546.3333333333, 'Aktif', 2727, 'JAGOSOSMED', 'Sosial Media'),
(791, 791, 'YouTube Live Stream  Harga Murah   30 Minutes to 2', 'YouTube Live Stream [ 6 Hours Live CONCURRENT ] [ Latest Service ]', 'Views will start Updating within 2-3 Minutes of Order\nNo refund while Order is running', 100, 20000, 480082.90909091, 469414.4, 46941.44, 'Aktif', 3485, 'JAGOSOSMED', 'Sosial Media'),
(792, 792, 'YouTube Live Stream  Harga Murah   30 Minutes to 2', 'YouTube Live Stream [ 6 hours Live CONCURRENT ] [ Latest Service ] WORK ', '6 Hours Live CONCURRENT', 100, 20000, 751902.27272727, 735193.33333333, 73519.333333333, 'Aktif', 2732, 'JAGOSOSMED', 'Sosial Media'),
(793, 793, 'Youtube Live Stream / Youtube Premiered Waiting', 'YouTube Live Stream [ 6 jam Live CONCURRENT ] [ Latest Service ] P1 ', 'YouTube Live Stream [ 6 jam Live CONCURRENT ] [ Latest Service ] P1', 1000, 50000, 2622587.5, 2564307.7777778, 256430.77777778, 'Aktif', 2868, 'JAGOSOSMED', 'Sosial Media'),
(794, 794, 'YouTube Live Stream  Harga Murah   30 Minutes to 2', 'YouTube Live Stream [ 60 Minutes Live CONCURRENT ] [ Latest Service ]', 'Views will start Updating within 2-3 Minutes of Order\nNo refund while Order is running', 100, 20000, 80013.818181818, 78235.733333333, 7823.5733333333, 'Aktif', 3482, 'JAGOSOSMED', 'Sosial Media'),
(795, 795, 'Youtube Live Stream / Youtube Premiered Waiting', 'YouTube Live Stream [ 60 Minutes Live CONCURRENT ] [ Latest Service ] P1 ', 'YouTube Live Stream [ 60 Minutes Live CONCURRENT ] [ Latest Service ] P1', 100, 50000, 437420.45454545, 427700, 42770, 'Aktif', 2864, 'JAGOSOSMED', 'Sosial Media'),
(796, 796, 'YouTube Live Stream  Harga Murah   30 Minutes to 2', 'YouTube Live Stream [ 60 Minutes Live CONCURRENT ] [ Latest Service ] WORK ', '60 Minutes Live CONCURRENT', 100, 20000, 193788.63636364, 189482.22222222, 18948.222222222, 'Aktif', 2728, 'JAGOSOSMED', 'Sosial Media'),
(797, 797, 'Youtube Live Stream / Youtube Premiered Waiting', 'YouTube Live Stream [ 90 Minutes Live CONCURRENT ] [ Latest Service ] P1 ', 'YouTube Live Stream [ 90 Minutes Live CONCURRENT ] [ Latest Service ] P1', 100, 50000, 654904.54545455, 640351.11111111, 64035.111111111, 'Aktif', 2865, 'JAGOSOSMED', 'Sosial Media'),
(798, 798, 'YouTube Live Stream  Harga Murah   30 Minutes to 2', 'YouTube Live Stream [ 90 Minutes Live CONCURRENT ] [ Latest Service ] WORK ', '90 Minutes Live CONCURRENT', 100, 20000, 288467.04545455, 282056.66666667, 28205.666666667, 'Aktif', 2729, 'JAGOSOSMED', 'Sosial Media'),
(799, 799, 'YouTube Live Stream  Harga Murah   Premium Quality', 'YouTube Live Stream [ High Quality ] ( 12 hour Live CONCURRENT ) ( Super Cheap )', 'High Quality\nSuper Cheap', 100, 40000, 1096136.3636364, 1071777.7777778, 107177.77777778, 'Aktif', 3512, 'JAGOSOSMED', 'Sosial Media'),
(800, 800, 'YouTube Live Stream  Harga Murah   Premium Quality', 'YouTube Live Stream [ High Quality ] ( 120 Minutes Live CONCURRENT ) ( Super Cheap )', 'High Quality\nSuper Cheap', 100, 40000, 277875, 271700, 27170, 'Aktif', 3508, 'JAGOSOSMED', 'Sosial Media'),
(801, 801, 'YouTube Live Stream  Harga Murah   Premium Quality', 'YouTube Live Stream [ High Quality ] ( 150 Minutes Live CONCURRENT ) ( Super Cheap )', 'High Quality\nSuper Cheap', 100, 40000, 242568.18181818, 237177.77777778, 23717.777777778, 'Aktif', 3509, 'JAGOSOSMED', 'Sosial Media'),
(802, 802, 'YouTube Live Stream  Harga Murah   Premium Quality', 'YouTube Live Stream [ High Quality ] ( 24 hour Live CONCURRENT ) ( Super Cheap )', 'High Quality\nSuper Cheap', 100, 40000, 2037159.0909091, 1991888.8888889, 199188.88888889, 'Aktif', 3513, 'JAGOSOSMED', 'Sosial Media'),
(803, 803, 'YouTube Live Stream  Harga Murah   Premium Quality', 'YouTube Live Stream [ High Quality ] ( 3 hour Live CONCURRENT ) ( Super Cheap )', 'High Quality\nSuper Cheap', 100, 40000, 292500, 286000, 28600, 'Aktif', 3510, 'JAGOSOSMED', 'Sosial Media'),
(804, 804, 'YouTube Live Stream  Harga Murah   Premium Quality', 'YouTube Live Stream [ High Quality ] ( 30 Minutes Live CONCURRENT ) ( Super Cheap )', 'High Quality\nSuper Cheap', 100, 40000, 54659.090909091, 53444.444444444, 5344.4444444444, 'Aktif', 3505, 'JAGOSOSMED', 'Sosial Media'),
(805, 805, 'YouTube Live Stream  Harga Murah   Premium Quality', 'YouTube Live Stream [ High Quality ] ( 6 hour Live CONCURRENT ) ( Super Cheap )', 'High Quality\nSuper Cheap', 100, 40000, 585000, 572000, 57200, 'Aktif', 3511, 'JAGOSOSMED', 'Sosial Media'),
(806, 806, 'YouTube Live Stream  Harga Murah   Premium Quality', 'YouTube Live Stream [ High Quality ] ( 60 Minutes Live CONCURRENT ) ( Super Cheap )', 'High Quality\nSuper Cheap', 100, 40000, 97500, 95333.333333333, 9533.3333333333, 'Aktif', 3506, 'JAGOSOSMED', 'Sosial Media'),
(807, 807, 'YouTube Live Stream  Harga Murah   Premium Quality', 'YouTube Live Stream [ High Quality ] ( 90 Minutes Live CONCURRENT ) ( Super Cheap )', 'High Quality\nSuper Cheap', 100, 40000, 209463.97727273, 204809.22222222, 20480.922222222, 'Aktif', 3507, 'JAGOSOSMED', 'Sosial Media'),
(808, 808, 'YouTube Live Stream  Harga Murah   Premium Quality', 'YouTube Live Stream [ High Quality ] [ 12 hour Live CONCURRENT ] [ Super Cheap ] ', 'Youtube Live Stream Super Cheap Price\nStart Time 0-2 Minutes\n1000 Views Increase / Minutes\n10000 Views will Take 10 Minutes To Increase\nAfter all Views Up It will be stabled For mentioned Timing', 100, 40000, 1171477.2727273, 1145444.4444444, 114544.44444444, 'Aktif', 3085, 'JAGOSOSMED', 'Sosial Media'),
(809, 809, 'YouTube Live Stream  Harga Murah   Premium Quality', 'YouTube Live Stream [ High Quality ] [ 120 Minutes Live CONCURRENT ] [ Super Cheap ] ', 'Youtube Live Stream Super Cheap Price\nStart Time 0-2 Minutes\n1000 Views Increase / Minutes\n10000 Views will Take 10 Minutes To Increase\nAfter all Views Up It will be stabled For mentioned Timing', 100, 40000, 298409.09090909, 291777.77777778, 29177.777777778, 'Aktif', 3081, 'JAGOSOSMED', 'Sosial Media'),
(810, 810, 'YouTube Live Stream  Harga Murah   Premium Quality', 'YouTube Live Stream [ High Quality ] [ 150 Minutes Live CONCURRENT ] [ Super Cheap ] ', 'Youtube Live Stream Super Cheap Price\nStart Time 0-2 Minutes\n1000 Views Increase / Minutes\n10000 Views will Take 10 Minutes To Increase\nAfter all Views Up It will be stabled For mentioned Timing', 100, 40000, 260000, 254222.22222222, 25422.222222222, 'Aktif', 3082, 'JAGOSOSMED', 'Sosial Media'),
(811, 811, 'YouTube Live Stream  Harga Murah   Premium Quality', 'YouTube Live Stream [ High Quality ] [ 180 Minutes Live CONCURRENT ] [ Super Cheap ] ', 'Youtube Live Stream Super Cheap Price\nStart Time 0-2 Minutes\n1000 Views Increase / Minutes\n10000 Views will Take 10 Minutes To Increase\nAfter all Views Up It will be stabled For mentioned Timing', 100, 40000, 313181.81818182, 306222.22222222, 30622.222222222, 'Aktif', 3083, 'JAGOSOSMED', 'Sosial Media'),
(812, 812, 'YouTube Live Stream  Harga Murah   Premium Quality', 'YouTube Live Stream [ High Quality ] [ 24 hour Live CONCURRENT ] [ Super Cheap ] ', 'Youtube Live Stream Super Cheap Price\nStart Time 0-2 Minutes\n1000 Views Increase / Minutes\n10000 Views will Take 10 Minutes To Increase\nAfter all Views Up It will be stabled For mentioned Timing', 100, 40000, 2227727.2727273, 2178222.2222222, 217822.22222222, 'Aktif', 3086, 'JAGOSOSMED', 'Sosial Media'),
(813, 813, 'YouTube Live Stream  Harga Murah   Premium Quality', 'YouTube Live Stream [ High Quality ] [ 30 Minutes Live CONCURRENT ] [ Super Cheap ]', 'Youtube Live Stream Super Cheap Price\nStart Time 0-2 Minutes\n1000 Views Increase / Minutes\n10000 Views will Take 10 Minutes To Increase\nAfter all Views Up It will be stabled For mentioned Timing', 100, 40000, 57318.181818182, 56044.444444444, 5604.4444444444, 'Aktif', 3078, 'JAGOSOSMED', 'Sosial Media'),
(814, 814, 'YouTube Live Stream  Harga Murah   Premium Quality', 'YouTube Live Stream [ High Quality ] [ 6 hour Live CONCURRENT ] [ Super Cheap ] ', 'Youtube Live Stream Super Cheap Price\nStart Time 0-2 Minutes\n1000 Views Increase / Minutes\n10000 Views will Take 10 Minutes To Increase\nAfter all Views Up It will be stabled For mentioned Timing', 100, 40000, 626363.63636364, 612444.44444444, 61244.444444444, 'Aktif', 3084, 'JAGOSOSMED', 'Sosial Media'),
(815, 815, 'YouTube Live Stream  Harga Murah   Premium Quality', 'YouTube Live Stream [ High Quality ] [ 60 Minutes Live CONCURRENT ] [ Super Cheap ] ', 'Youtube Live Stream Super Cheap Price\nStart Time 0-2 Minutes\n1000 Views Increase / Minutes\n10000 Views will Take 10 Minutes To Increase\nAfter all Views Up It will be stabled For mentioned Timing', 100, 40000, 104236.36363636, 101920, 10192, 'Aktif', 3079, 'JAGOSOSMED', 'Sosial Media'),
(816, 816, 'YouTube Live Stream  Harga Murah   Premium Quality', 'YouTube Live Stream [ High Quality ] [ 90 Minutes Live CONCURRENT ] [ Super Cheap ] ', 'Youtube Live Stream Super Cheap Price\nStart Time 0-2 Minutes\n1000 Views Increase / Minutes\n10000 Views will Take 10 Minutes To Increase\nAfter all Views Up It will be stabled For mentioned Timing', 100, 40000, 221590.90909091, 216666.66666667, 21666.666666667, 'Aktif', 3080, 'JAGOSOSMED', 'Sosial Media'),
(817, 817, 'YOUTUBE - Live Stream  Cheapest Price ', 'Youtube Live Stream [ Max 20k ] [ 15 Minutes 100% Concurrent ]', 'no refill\nno refund', 100, 20000, 12768.540909091, 12484.795555556, 1248.4795555556, 'Aktif', 3316, 'JAGOSOSMED', 'Sosial Media'),
(818, 818, 'YOUTUBE - Live Stream  Cheapest Price ', 'Youtube Live Stream [ Max 20k ] [ 30 Minutes 100% Concurrent ]', 'no refill\nno refund', 100, 30200000, 24494.895454545, 23950.564444444, 2395.0564444444, 'Aktif', 3317, 'JAGOSOSMED', 'Sosial Media'),
(819, 819, 'Youtube Live Stream  Comments/Likes  ', 'Youtube Live Stream Custom Comments [ 30 Days Refill ] [ Max 20k ] [ fast ]', 'waktu mulai : 0-30 Min\nSpeed : 50k - 100K\nRefill : 30 Day Refill\nQuality : High Quality (Non Drop)', 1, 20000, 140340.90909091, 137222.22222222, 13722.222222222, 'Aktif', 3437, 'JAGOSOSMED', 'Sosial Media'),
(820, 820, 'Youtube Live Stream  Comments/Likes  ', 'Youtube Live Stream Likes [ No refill ] [ Max 150k ] [ fast ] ', 'no Guarantee kalo drop\ndari pengetesan kami \nyang masuk hanya sekitar 60-90%\njadi kalo masuk gk full gk ada kompline\n', 50, 150000, 17727.272727273, 17333.333333333, 1733.3333333333, 'Aktif', 3438, 'JAGOSOSMED', 'Sosial Media'),
(821, 821, 'YouTube Live Stream  Harga Murah   30 Minutes to 2', 'YouTube Live Stream Views  [ High Quality ] [ 12 Hours Live CONCURRENT ] ', 'Start in 5 Minutes\n1000 Live Order will Get 900-1000 Live Stream Viewer', 100, 50000, 1563545.4545455, 1528800, 152880, 'Aktif', 2782, 'JAGOSOSMED', 'Sosial Media'),
(822, 822, 'Youtube Live Stream  BEST FOR RANKING LIVE ', 'YouTube Live Stream Views [ High Quality ] [ 120 Minutes ] [ BEST FOR RANKING LIVE ]', '1000 Quantity =1000 Live Concurrent Views\n(Sometimes Because of Network congestion Live will be 800-1200 )', 100, 50000, 225329.23636364, 220321.92, 22032.192, 'Aktif', 3550, 'JAGOSOSMED', 'Sosial Media'),
(823, 823, 'YouTube Live Stream  Harga Murah   30 Minutes to 2', 'YouTube Live Stream Views [ High Quality ] [ 120 Minutes Live CONCURRENT ] ', 'Start in 5 Minutes\n1000 Live Orders will Get 900-1000 Live Stream Viewers', 100, 60000, 258109.09090909, 252373.33333333, 25237.333333333, 'Aktif', 2779, 'JAGOSOSMED', 'Sosial Media'),
(824, 824, 'Youtube Live Stream  BEST FOR RANKING LIVE ', 'YouTube Live Stream Views [ High Quality ] [ 1440 Minutes ] [ BEST FOR RANKING LIVE ]', '1000 Quantity =1000 Live Concurrent Views\n(Sometimes Because of Network congestion Live will be 800-1200 )', 100, 50000, 2703950.8363636, 2643863.04, 264386.304, 'Aktif', 3555, 'JAGOSOSMED', 'Sosial Media'),
(825, 825, 'Youtube Live Stream  BEST FOR RANKING LIVE ', 'YouTube Live Stream Views [ High Quality ] [ 150 Minutes ] [ BEST FOR RANKING LIVE ]', '1000 Quantity =1000 Live Concurrent Views\n(Sometimes Because of Network congestion Live will be 800-1200 )', 100, 50000, 281661.54545455, 275402.4, 27540.24, 'Aktif', 3551, 'JAGOSOSMED', 'Sosial Media'),
(826, 826, 'Youtube Live Stream  BEST FOR RANKING LIVE ', 'YouTube Live Stream Views [ High Quality ] [ 180 Minutes ] [ BEST FOR RANKING LIVE ]', '1000 Quantity =1000 Live Concurrent Views\n(Sometimes Because of Network congestion Live will be 800-1200 )', 100, 50000, 337993.85454545, 330482.88, 33048.288, 'Aktif', 3552, 'JAGOSOSMED', 'Sosial Media'),
(827, 827, 'YouTube Live Stream  Harga Murah   30 Minutes to 2', 'YouTube Live Stream Views [ High Quality ] [ 24 Hours Live CONCURRENT ] ', '1000 Live Order will Get 900-1000 Live Stream Viewer\nStart in 5 Minutes', 100, 50000, 3102272.7272727, 3033333.3333333, 303333.33333333, 'Aktif', 2783, 'JAGOSOSMED', 'Sosial Media'),
(828, 828, 'YouTube Live Stream  Harga Murah   30 Minutes to 2', 'YouTube Live Stream Views [ High Quality ] [ 3 Hours Live CONCURRENT ] ', 'Start in 5 Minutes\n1000 Live Orders will Get 900-1000 Live Stream Viewers', 100, 10000, 539204.54545455, 527222.22222222, 52722.222222222, 'Aktif', 2780, 'JAGOSOSMED', 'Sosial Media'),
(829, 829, 'Youtube Live Stream  BEST FOR RANKING LIVE ', 'YouTube Live Stream Views [ High Quality ] [ 30 Minutes ] [ BEST FOR RANKING LIVE ]', '1000 Quantity =1000 Live Concurrent Views\n(Sometimes Because of Network congestion Live will be 800-1200 )', 100, 50000, 56332.309090909, 55080.48, 5508.048, 'Aktif', 3547, 'JAGOSOSMED', 'Sosial Media'),
(830, 830, 'YouTube Live Stream  Harga Murah   30 Minutes to 2', 'YouTube Live Stream Views [ High Quality ] [ 30 Minutes Live CONCURRENT ]', 'Start in 5 Minutes\n1000 Live Orders will Get 900-1000 Live Stream Viewers', 100, 60000, 63522.727272727, 62111.111111111, 6211.1111111111, 'Aktif', 2776, 'JAGOSOSMED', 'Sosial Media'),
(831, 831, 'Youtube Live Stream  BEST FOR RANKING LIVE ', 'YouTube Live Stream Views [ High Quality ] [ 360 Minutes ] [ BEST FOR RANKING LIVE ]', '1000 Quantity =1000 Live Concurrent Views\n(Sometimes Because of Network congestion Live will be 800-1200 )', 100, 50000, 675987.70909091, 660965.76, 66096.576, 'Aktif', 3553, 'JAGOSOSMED', 'Sosial Media'),
(832, 832, 'YouTube Live Stream  Harga Murah   30 Minutes to 2', 'YouTube Live Stream Views [ High Quality ] [ 6 Hours Live CONCURRENT ] ', 'Start in 10 Minutes\n1000 Live Orders will Get 900-1000 Live Stream Viewers', 100, 50000, 760795.45454545, 743888.88888889, 74388.888888889, 'Aktif', 2781, 'JAGOSOSMED', 'Sosial Media'),
(833, 833, 'Youtube Live Stream  BEST FOR RANKING LIVE ', 'YouTube Live Stream Views [ High Quality ] [ 60 Minutes ] [ BEST FOR RANKING LIVE ]', '1000 Quantity =1000 Live Concurrent Views\n(Sometimes Because of Network congestion Live will be 800-1200 )', 100, 50000, 112664.61818182, 110160.96, 11016.096, 'Aktif', 3548, 'JAGOSOSMED', 'Sosial Media'),
(834, 834, 'YouTube Live Stream  Harga Murah   30 Minutes to 2', 'YouTube Live Stream Views [ High Quality ] [ 60 Minutes Live CONCURRENT ] ', 'Start in 5 Minutes\n1000 Live Orders will Get 900-1000 Live Stream Viewers', 100, 60000, 127045.45454545, 124222.22222222, 12422.222222222, 'Aktif', 2777, 'JAGOSOSMED', 'Sosial Media'),
(835, 835, 'Youtube Live Stream  BEST FOR RANKING LIVE ', 'YouTube Live Stream Views [ High Quality ] [ 720 Minutes ] [ BEST FOR RANKING LIVE ]', '1000 Quantity =1000 Live Concurrent Views\n(Sometimes Because of Network congestion Live will be 800-1200 )', 100, 50000, 1351975.4181818, 1321931.52, 132193.152, 'Aktif', 3554, 'JAGOSOSMED', 'Sosial Media'),
(836, 836, 'Youtube Live Stream  BEST FOR RANKING LIVE ', 'YouTube Live Stream Views [ High Quality ] [ 90 Minutes ] [ BEST FOR RANKING LIVE ]', '1000 Quantity =1000 Live Concurrent Views\n(Sometimes Because of Network congestion Live will be 800-1200 )', 100, 50000, 168996.92727273, 165241.44, 16524.144, 'Aktif', 3549, 'JAGOSOSMED', 'Sosial Media'),
(837, 837, 'YouTube Live Stream  Harga Murah   30 Minutes to 2', 'YouTube Live Stream Views [ High Quality ] [ 90 Minutes Live CONCURRENT ] ', 'Start in 5 Minutes\n1000 Live Orders will Get 900-1000 Live Stream Viewers', 100, 60000, 203863.63636364, 199333.33333333, 19933.333333333, 'Aktif', 2778, 'JAGOSOSMED', 'Sosial Media'),
(838, 838, 'Youtube Live Stream / Youtube Premiered Waiting', 'Youtube Live Stream Views [ NEW service ] [REAL] INSTANT', 'Mulai: INSTAN\nKecepatan: Cepat\nIsi ulang: Tidak ada isi ulang\n\nRetensi: Random\nKualitas: 100% Nyata\nCatatan:\n- Jika Live End, Video Dihapus, Video Pribadi, atau Dihapus oleh youtube - Tidak Ada Pengembalian Dana/ Tidak Ada Partial.\n- Silakan memesan tautan yang sama / waktu yang sama ( per 1 - 3 kali ) , Interval (menit) 1-3) untuk mendapatkan kecepatan cepat.\n- Kami tidak dapat menjamin total waktu tonton atau jumlah penonton serentak hanya total penayangan unik yang dikirim selama kampanye. \nTampilan tersebar dari waktu ke waktu untuk menghadirkan pemirsa langsung sehingga mereka bertahan setidaknya selama 15 menit - 2 jam tergantung jumlah pesanan', 1000, 1000000, 43254.545454545, 42293.333333333, 4229.3333333333, 'Aktif', 2744, 'JAGOSOSMED', 'Sosial Media'),
(839, 839, 'Youtube Live Stream / Youtube Premiered Waiting', 'Youtube Live Stream Views [ REAL ][ BETA ]', 'Tampilan Aktif Nyata **\n MULAI INSTAN\n 100% Pemirsa Pengguna YouTube Manusia Nyata!\n Tampilan Halaman Desktop Windows & Mobile Watch\n 100% Lalu Lintas Unik dapat dimonetisasi!\n Pemirsa Seluruh Dunia\n Harus Tidak Terbatas & Terbuka untuk SEMUA negara\n Retensi Acak\n Rata-rata Bersamaan dan waktu tonton berdasarkan konten streaming langsung\n Pengiriman Lebih Dijamin\n penayangan dapat dikirim ke embed video streaming langsung yang dinonaktifkan\n Sumber Lalu Lintas: Iklan Langsung\n\nCATATAN :\n- Layanan Beta - itu berarti layanan yang ditawarkan apa adanya tanpa jaminan isi ulang!\n- Tampilan dapat mencakup keterlibatan pengguna nyata - video Anda mungkin mendapatkan suka / tidak suka setiap hari, komentar, bagikan, pelanggan ,,, semua dibuat oleh pengguna YouTube nyata yang tidak kami kontrol!', 5000, 100000, 74188.636363636, 72540, 7254, 'Aktif', 1560, 'JAGOSOSMED', 'Sosial Media'),
(840, 840, 'Youtube Live Stream / Youtube Premiered Waiting', 'Youtube Live Stream Views [ Working ] [ NEW service ] [ 15 - 60 MInutes ] ', '- START : Instant\n- MONETIZABLE | REAL\n- 100% Real Human YouTube Users Viewers\n- 100% Unique Traffic\n- World-Wide Viewers\n- Avg Concurrent and watch-time based on live stream content\n- Video must Unrestricted , embed must enabled\nNOTE :\n- To get fast speed, Please order same link/same times ( x5 ,x10 times )\n- Cant refund after order\n- Views are spread over the time to deliver live viewers so that they stay for atleast 15 mins - 1H\nEx : You order 1000 views, then ,1000 live viewers will spread over the time in 15 mins - 1H+.', 1000, 10000000, 60612.5, 59265.555555556, 5926.5555555556, 'Aktif', 2742, 'JAGOSOSMED', 'Sosial Media'),
(841, 841, 'Youtube Live Stream / Youtube Premiered Waiting', 'Youtube Live Stream Views [ Working ] [Fast service] [ 15 MInutes ]', 'Start in 3-5 minutes\nConcurrent Live will be ( 70-100% )\nNo Cancellation issue\n( If Video Deleted, Buyer Will Get Partial Refund )', 300, 2000, 61986.363636364, 60608.888888889, 6060.8888888889, 'Aktif', 2470, 'JAGOSOSMED', 'Sosial Media'),
(842, 842, 'Youtube Live Stream / Youtube Premiered Waiting', 'Youtube Live Stream Views [ Working ] [Fast service] [ 30 MInutes ] ', 'Start in 3-5 minutes\nConcurrent Live will be ( 70-100% )\nNo Cancellation issue\n( If Video Deleted, Buyer Will Get Partial Refund )', 300, 2000, 109200, 106773.33333333, 10677.333333333, 'Aktif', 2471, 'JAGOSOSMED', 'Sosial Media'),
(843, 843, 'Youtube Live Stream / Youtube Premiered Waiting', 'Youtube Live Stream Views [ Working ] [Fast service] [ 60 MInutes ] ', 'Start in 3-5 minutes\nConcurrent Live will be ( 70-100% )\nNo Cancellation issue\n( If Video Deleted, Buyer Will Get Partial Refund )', 300, 2000, 195310.22727273, 190970, 19097, 'Aktif', 2472, 'JAGOSOSMED', 'Sosial Media'),
(844, 844, 'Youtube Live Stream / Youtube Premiered Waiting', 'Youtube Live Stream Views Live Stable Upto 50 Minutes', 'Stable 40-50 Minutes\nLive Streaming Mulai Rata-rata dalam 5-7 Menit\nSetelah Streaming Mulai\nView Langsung Akan Meningkat Perlahan Dan Akan Stabil Selama Live Viewer Hingga 50+ Menit Akan Meningkat\n\nHingga 200+ Live Viewer pada 2000 Streaming Pesanan\n\nPembeli Akan Mendapatkan Hingga 10% Live Viewer Selama Hingga 50 Menit\n( SEMUA Catatan ada di Pengujian dan Estimasi Kami, ini dapat bertambah atau berkurang menurut Update Youtube )\n( pesan kelipatan 100, Jangan order 2150 atau 2650 Order Seperti ini )\n', 2000, 500000, 10104.545454545, 9880, 988, 'Aktif', 2342, 'JAGOSOSMED', 'Sosial Media'),
(845, 845, 'Youtube Live Stream / Youtube Premiered Waiting', 'Youtube Live Stream Views stay 12 jam', 'order = berani ambil resiko\ntidak ada alasan reffund apapun itu\ntidak bisa canceled\njangan order jika tidak mau jadi hal tidak dinginkan!\n- Start time : 0 - 10 mins\n- Traffic source : Almost suggested views\n- 10% viewers will stay and stay in 12h\n- Natural , real .', 500, 3000, 26443.181818182, 25855.555555556, 2585.5555555556, 'Aktif', 2205, 'JAGOSOSMED', 'Sosial Media'),
(846, 846, 'Youtube Live Stream / Youtube Premiered Waiting', 'Youtube Live Stream Views stay 120 menit ', 'order = berani ambil resiko\ntidak ada alasan reffund apapun itu\ntidak bisa canceled\njangan order jika tidak mau jadi hal tidak dinginkan!\n- Start time : 0 - 10 mins\n- Traffic source : Almost suggested views\n- 10% viewers will stay and stay in 120 mins\n- Natural , real .', 500, 3000, 11271.590909091, 11021.111111111, 1102.1111111111, 'Aktif', 2204, 'JAGOSOSMED', 'Sosial Media'),
(847, 847, 'Youtube Live Stream / Youtube Premiered Waiting', 'Youtube Live Stream Views stay 24jam', '- Order 1000 views kamu dapat 100 - 300 live views stay di live mu 24jam\n- Order 2000 views kamu dapat 200 - 600 live views stay di live mu 24jam\n- Order 3000 views kamu dapat 300 - 900 live views stay di live mu 24jam\n\nCatatan :\n- Harap teruskan siaran langsungmu, Jangan segera mengakhiri siaran langsung. Jika video dihapus atau segera berakhir maka kami tidak dapat reffund/cancel.\n- Setelah order, tidak ada reffund.\n- tidak bisa cancel apapun itu alasannya\n- tidak ada refund apapun itu alasannya\norder = ambil resiko', 1000, 3000, 80422.727272727, 78635.555555556, 7863.5555555555, 'Aktif', 2121, 'JAGOSOSMED', 'Sosial Media');
INSERT INTO `layanan_sosmed` (`id`, `service_id`, `kategori`, `layanan`, `catatan`, `min`, `max`, `harga`, `harga_api`, `profit`, `status`, `provider_id`, `provider`, `tipe`) VALUES
(848, 848, 'Youtube Live Stream / Youtube Premiered Waiting', 'Youtube Live Stream Views stay 24jam [ BETA 1 murah ]', '- Order 1000 views kamu dapat 75 - 300 live views stay di live mu 24jam\n- Order 2000 views kamu dapat 175 - 600 live views stay di live mu 24jam\n- Order 3000 views kamu dapat 275 - 900 live views stay di live mu 24jam\n\nCatatan :\n- Harap teruskan siaran langsungmu, Jangan segera mengakhiri siaran langsung. Jika video dihapus atau segera berakhir maka kami tidak dapat reffund/cancel.\n- Setelah order, tidak ada reffund.\n- tidak bisa cancel apapun itu alasannya\n- tidak ada refund apapun itu alasannya\norder = ambil resiko', 500, 4000, 30047.727272727, 29380, 2938, 'Aktif', 2352, 'JAGOSOSMED', 'Sosial Media'),
(849, 849, 'Youtube Live Stream / Youtube Premiered Waiting', 'Youtube Live Stream Views stay 24jam nonstop', 'order = berani ambil resiko\ntidak ada alasan reffund apapun itu\ntidak bisa canceled\njangan order jika tidak mau jadi hal tidak dinginkan!\n- Start time : 0 - 10 mins\n- Traffic source : Almost suggested views\n- 10% viewers will stay and stay in 24h\n- Natural , real .', 500, 3000, 32647.727272727, 31922.222222222, 3192.2222222222, 'Aktif', 2206, 'JAGOSOSMED', 'Sosial Media'),
(850, 850, 'Youtube Live Stream / Youtube Premiered Waiting', 'Youtube Live Stream Views stay 30 menit', 'order = berani ambil resiko\ntidak ada alasan reffund apapun itu\ntidak bisa canceled\njangan order jika tidak mau jadi hal tidak dinginkan!\n- Start time : 0 - 10 mins\n- Traffic source : Almost suggested views\n- 10% viewers will stay and stay in 30 mins\n- Natural , real .', 500, 3000, 3914.7727272727, 3827.7777777778, 382.77777777778, 'Aktif', 2202, 'JAGOSOSMED', 'Sosial Media'),
(851, 851, 'Youtube Live Stream / Youtube Premiered Waiting', 'Youtube Live Stream Views stay 60 menit', 'order = berani ambil resiko\ntidak ada alasan reffund apapun itu\ntidak bisa canceled\njangan order jika tidak mau jadi hal tidak dinginkan!\n- Start time : 0 - 10 mins\n- Traffic source : Almost suggested views\n- 10% viewers will stay and stay in 60 mins\n- Natural , real .', 500, 3000, 5643.1818181818, 5517.7777777778, 551.77777777778, 'Aktif', 2203, 'JAGOSOSMED', 'Sosial Media'),
(852, 852, 'Youtube Views', 'Youtube Ranking Desktop Views JS 2 [ Lifetime Guaranteed ]', '0-24 hour start time\n100k to 300k /day speed\nLifetime refill guarantee\n30-40 second watch time\nSafe to run with monetised videos\nWindows desktop watch page\nWorldwide viewers added in a non-stop natural pattern\nMust be unrestricted & open for all countries\nOK for VEVO\nIncremental Speed Based on Order Size\n500 Minimum order\n1 Million Maximum order', 100, 1000000, 23119.318181818, 22605.555555556, 2260.5555555556, 'Aktif', 1430, 'JAGOSOSMED', 'Sosial Media'),
(853, 853, 'Youtube Views', 'Youtube Ranking Views V10 [ Recommended ][ 0 - 1 Mint Retention]', '[ Lifetime Guarantee Views ]\n- Cheapest In Market\n- Start times : 0 - 1h ( Instant )\n- Non drop - Lifetime Guarantee Views\n- Speed 20k - 30k+ ( Some times will be Faster )\n- Retention : 0-1 Minutes +', 500, 10000000, 27196.590909091, 26592.222222222, 2659.2222222222, 'Aktif', 1124, 'JAGOSOSMED', 'Sosial Media'),
(854, 854, 'YouTube Shorts', 'Youtube Short Likes Server 1 [ refill 30 days ]', 'fast\nno drop\ngaransi refill 30 days', 10, 100000, 36562.5, 35750, 3575, 'Aktif', 2076, 'JAGOSOSMED', 'Sosial Media'),
(855, 855, 'YouTube Shorts', 'Youtube Short Likes Server 2 [ refill 30 days ] cheap', 'Instant Start\n30 Days Refill\nSuperfast\n20k-40k per day!', 10, 100000, 26679.545454545, 26086.666666667, 2608.6666666667, 'Aktif', 2095, 'JAGOSOSMED', 'Sosial Media'),
(856, 856, 'YouTube Shorts', 'Youtube Short Likes Server 3 [ no refill ] cheap ', 'Instant Start\nSuperfast\nNo Refill\n10k-20k per day!', 20, 50000, 18037.5, 17636.666666667, 1763.6666666667, 'Aktif', 2096, 'JAGOSOSMED', 'Sosial Media'),
(857, 857, 'YouTube Shorts', 'Youtube Short Likes Server 4 [ Life Time Guaranteed ] cheap ', 'FAST', 20, 200000, 51217.045454545, 50078.888888889, 5007.8888888889, 'Aktif', 2097, 'JAGOSOSMED', 'Sosial Media'),
(858, 858, 'YouTube Shorts', 'Youtube Short Likes Server 5 [ NO REFILL ] cheap ', '0-1 Hour\nSpeed 100k/Days', 10, 300000, 14817.045454545, 14487.777777778, 1448.7777777778, 'Aktif', 2950, 'JAGOSOSMED', 'Sosial Media'),
(859, 859, 'YouTube Shorts', 'Youtube Short Likes Server 6 [ 30 DAYS REFILL ] cheap ', 'Refill 30 Days\nInstant Start\nSpeed 200k/Days\n', 10, 300000, 15614.772727273, 15267.777777778, 1526.7777777778, 'Aktif', 2951, 'JAGOSOSMED', 'Sosial Media'),
(860, 860, 'YouTube Shorts', 'Youtube Short Views Server 2 [No refill ] ', 'Instant Start\n5k-20k/day\nNo Refill\nNo kompline', 100, 100000000, 16589.772727273, 16221.111111111, 1622.1111111111, 'Aktif', 2094, 'JAGOSOSMED', 'Sosial Media'),
(861, 861, 'YouTube Shorts', 'Youtube Short Views Server 4 [ 50k-100k/day ] [ Lifetime Guarantee ] cheap', 'Start time: 0-3 hours\nJika status selesai tetapi view tidak ter update\nsilahkan klik like', 100, 10000000, 15910.227272727, 15556.666666667, 1555.6666666667, 'Aktif', 768, 'JAGOSOSMED', 'Sosial Media'),
(862, 862, 'YouTube Shorts', 'Youtube Short Views Server 5  [Refill Lifetime] [Start Time:0 -24 Hours] [Speed: 60K/Day] ', 'Max 5M', 100, 50000000, 25867.045454545, 25292.222222222, 2529.2222222222, 'Aktif', 2762, 'JAGOSOSMED', 'Sosial Media'),
(863, 863, 'YouTube Shorts', 'Youtube Short Views Server 6 [Refill Lifetime] [Start Time: 0 - 6 Hours] [Speed: 400K/Day] ', 'Speed: 400K/Day', 25000, 2147483647, 31465.909090909, 30766.666666667, 3076.6666666667, 'Aktif', 2763, 'JAGOSOSMED', 'Sosial Media'),
(864, 864, 'Youtube Subscribers  No Refill ', 'Youtube Subscribe  No Refill 1  [ TERMURAH ]', 'min 10\nmax 20k', 10, 20000, 12660.227272727, 12378.888888889, 1237.8888888889, 'Aktif', 2796, 'JAGOSOSMED', 'Sosial Media'),
(865, 865, 'Youtube Subscribers Negara', 'Youtube Subscribe [ INDONESIA ] [ LIFETIME GUARANTEE ]', 'Max 20k', 50, 10000, 411848.86363636, 402696.66666667, 40269.666666667, 'Aktif', 2706, 'JAGOSOSMED', 'Sosial Media'),
(866, 866, 'Youtube Subscribers', 'Youtube Subscribe S10 [ 90 days refill ] [ 150-200/day ] [ Non drop ] ', '200/Day', 10, 10000, 94028.409090909, 91938.888888889, 9193.8888888889, 'Aktif', 2692, 'JAGOSOSMED', 'Sosial Media'),
(867, 867, 'Youtube Subscribers', 'Youtube Subscribe S11 [ 90 days refill ] [ 1500-2000/day ] [ Non drop ] ', '1500-2000/day', 20, 20000, 182132.95454545, 178085.55555556, 17808.555555556, 'Aktif', 2693, 'JAGOSOSMED', 'Sosial Media'),
(868, 868, 'Youtube Subscribers', 'Youtube Subscribe S12 [ 90 days refill ] [ 1000/day ] [ Non drop ] TERMURAH DIKELASNYA', '1000/day\n90 days refill', 50, 10000, 201056.81818182, 196588.88888889, 19658.888888889, 'Aktif', 2804, 'JAGOSOSMED', 'Sosial Media'),
(869, 869, 'Youtube Subscribers', 'Youtube Subscribe S13 [ 30 days refill ] [ 500-2k/days ] [ Layanan Best seller ]', 'Start: Instant - 0 hrs\nSpeed: 500-2k/day\nRefill: 30 days\n\nDrop: 0- 5% drop.', 100, 120000, 114813.63636364, 112262.22222222, 11226.222222222, 'Aktif', 2843, 'JAGOSOSMED', 'Sosial Media'),
(870, 870, 'Youtube Subscribers', 'Youtube Subscribe S14 [ 365 days refill ] [ 500/days ] ', '1K/Day\nStart Time 0 - 1 Hour', 100, 500, 403664.77272727, 394694.44444444, 39469.444444444, 'Aktif', 3073, 'JAGOSOSMED', 'Sosial Media'),
(871, 871, 'Youtube Subscribers', 'Youtube Subscribe S15 [ 60 days refill ] [ 200-300/days ] ', '60 Days Refill', 100, 10000, 73597.727272727, 71962.222222222, 7196.2222222222, 'Aktif', 3259, 'JAGOSOSMED', 'Sosial Media'),
(872, 872, 'Youtube Subscribers', 'Youtube Subscribe S17 [ Auto Refill 30 Days ] [ 300/days ]', 'Auto Refill 90 Days\nStart: 0 - 12 Hour', 100, 120000, 80703.409090909, 78910, 7891, 'Aktif', 3479, 'JAGOSOSMED', 'Sosial Media'),
(873, 873, 'Youtube Subscribers', 'Youtube Subscribe S18 [ Refill 60 Days ] [Max 10K] [Start Time: 1 Hour] [Speed: 200/Day]', 'Start: 0-1H\nSpeed: 200/Day\nRefill: 30 Days Refill/ Non Drop', 100, 10000, 64261.363636364, 62833.333333333, 6283.3333333333, 'Aktif', 3539, 'JAGOSOSMED', 'Sosial Media'),
(874, 874, 'Youtube Subscribers', 'Youtube Subscribe S2 [ Lifetime Guaranteed ] Best for Monetization', 'Target : Youtube Channel Link\nLokasi : Global\nWaktu Penyelesaian: 0-24 Jam, Dapat diperpanjang hingga 72 jam dalam Intensitas.\nkemungkinan 10k/days\n\nCatatan:\n Saat layanan Overload, kecepatan awal proses berubah.\n Jangan melakukan pemesanan kedua pada link yang sama sebelum pesanan Anda Sukses di sistem.\n Jika ada masalah dengan layanan, silakan hubungi Tiket.', 200, 1000000, 495831.81818182, 484813.33333333, 48481.333333333, 'Aktif', 2524, 'JAGOSOSMED', 'Sosial Media'),
(875, 875, 'Youtube Subscribers', 'Youtube Subscribe S3 [ Refill 30 days ] EXCLUSIVE', 'waktu mulai : 0-30min\nKecepatan : 100-200/day\nDrop : Non drop ( kalau terjadi drop kemungkinan hanya 5% )\nRefill : 30 days', 100, 5000, 105551.13636364, 103205.55555556, 10320.555555556, 'Aktif', 2527, 'JAGOSOSMED', 'Sosial Media'),
(876, 876, 'Youtube Subscribers', 'Youtube Subscribe S6 [ 90 days refill ] [ Speed Up to 100/Day ]', 'waktu mulai 0-6 jam', 50, 10000, 278451.13636364, 272263.33333333, 27226.333333333, 'Aktif', 2560, 'JAGOSOSMED', 'Sosial Media'),
(877, 877, 'Youtube Subscribers', 'Youtube Subscribe S7 [ 60 days refill ] [ Speed Up to 3000/Day ] ', '0 - 1 Hour', 100, 50000, 782467.04545455, 765078.88888889, 76507.888888889, 'Aktif', 2574, 'JAGOSOSMED', 'Sosial Media'),
(878, 878, 'Youtube Subscribers', 'Youtube Subscribe S8 [ LifeTime Refill ] [ 10k Per Day ] ', 'Lifetime Guarantee', 100, 100000, 229612.5, 224510, 22451, 'Aktif', 2637, 'JAGOSOSMED', 'Sosial Media'),
(879, 879, 'Youtube Subscribers', 'Youtube Subscribe S9  [ 30 days refill ] [ 150-200/day ] [ Non drop ]', '[ 30 days refill ] \n[ 150-200/day ] \n[ Non drop ]', 50, 15000, 105595.45454545, 103248.88888889, 10324.888888889, 'Aktif', 2662, 'JAGOSOSMED', 'Sosial Media'),
(880, 880, 'Youtube Subscribers', 'Youtube Subscribe SERVER 10 [ NON DROP ] [30d guaranted]♻️', '30d guaranted', 100, 50000, 116704.54545455, 114111.11111111, 11411.111111111, 'Aktif', 1920, 'JAGOSOSMED', 'Sosial Media'),
(881, 881, 'Youtube Subscribers  No Refill ', 'Youtube Subscribe SERVER 12 [ No Refill ]', 'No garansi\nTIDAK ADA KOJSLINAN APAPUN\nMAU TIDAK MASUK ATAU DROP LANGSUNG\nLAYANAN NO GARANSI!', 100, 20000, 15570.454545455, 15224.444444444, 1522.4444444444, 'Aktif', 1893, 'JAGOSOSMED', 'Sosial Media'),
(882, 882, 'Youtube Subscribers  No Refill ', 'Youtube Subscribe SERVER 13 [ NO refill ]', 'TIDAK ADA NGELUH SAMA SEKALI\ndalam kasus apapun\nORDER = BERANI AMBIL RESIKO\nInstant - 1 hours\n1k-10k/day\nbisa drop dalam hitungan jam', 100, 10000, 1773854.4318182, 1734435.4444444, 173443.54444444, 'Aktif', 2176, 'JAGOSOSMED', 'Sosial Media'),
(883, 883, 'Youtube Subscribers', 'Youtube Subscribe SERVER 16  [ Refill 30days ]', '1000 Subscriber /day\n30 days Guarantee\ndrop - 10-70%\nGampang drop!\nNo Refund, Only Refill', 50, 5000, 166178.40909091, 162485.55555556, 16248.555555556, 'Aktif', 2237, 'JAGOSOSMED', 'Sosial Media'),
(884, 884, 'Youtube Subscribers', 'Youtube Subscribe SERVER 17 [ Lifetime Guarantee ] 15-25/day', 'Instan\nCatatan - Kecepatan tinggi jika Anda memesan pelanggan dalam jumlah besar. Akun kecil atau hingga 500 pelanggan mungkin memerlukan waktu maksimal 24 jam untuk dikirimkan.\nTidak seperti jika kecepatan yang disebutkan adalah 1k/hari kecepatan per jam akan menjadi sekitar 50 , tetapi kecepatan akan dibagi rata pada semua pesanan tetapi untuk pesanan besar akan didedikasikan dan diselesaikan dengan cepat.\nPengguna Nyata\nLifetime Guarantee\nless Drop [20-30%]\n\nHarap Dicatat Saat ini pelanggan youtube tidak berfungsi seperti yang dijelaskan. jika Anda ingin membatalkan pesanan Anda, kami dapat melakukannya untuk Anda, tetapi kami tidak memiliki perkiraan kecepatan/waktu mulai yang TEPAT.', 10, 30000, 476907.95454545, 466310, 46631, 'Aktif', 2275, 'JAGOSOSMED', 'Sosial Media'),
(885, 885, 'Youtube Subscribers', 'Youtube Subscribe SERVER 18 [ No drop ] [ refill 30day ] 40/day ', 'Good subs- Start time : 0 - 2h\nSpeed : 30 - 60 / day\nNON DROP\nGuarantee: 30 days\nMin 20 - Max 6k', 20, 6000, 224545.45454545, 219555.55555556, 21955.555555556, 'Aktif', 2348, 'JAGOSOSMED', 'Sosial Media'),
(886, 886, 'Youtube Subscribers', 'Youtube Subscribe SERVER 19  [ 30 days guarantee ] [ Bonus Views ] RECOMMENDED', 'Speed - 300-500/day\n30 Days guarantee\nDrop 5%', 200, 5000, 103409.09090909, 101111.11111111, 10111.111111111, 'Aktif', 2451, 'JAGOSOSMED', 'Sosial Media'),
(887, 887, 'Youtube Subscribers', 'Youtube Subscribe SERVER 20 [ 30 days guarantee ] [ 300/day ]', '30 Days Refill\nSpeed 1k-5k/ Day\n0-1 hour Start\nRefill Button Enabled\nStart - 0-12 hours\nDrop Ratio: 10-20%', 400, 5000, 171363.63636364, 167555.55555556, 16755.555555556, 'Aktif', 2452, 'JAGOSOSMED', 'Sosial Media'),
(888, 888, 'Youtube Subscribers', 'Youtube Subscribe SERVER 21 [ 30 days guarantee ] [ 500/day ] ', '30 Days Guarantee\nMin 500 Max 5000\nSpeed 500-1k/day\n30 Days Guarantee\nStart - 0-24 hours [ Do not ask cancel before 24 hours]', 100, 5000, 110795.45454545, 108333.33333333, 10833.333333333, 'Aktif', 2453, 'JAGOSOSMED', 'Sosial Media'),
(889, 889, 'Youtube Subscribers', 'Youtube Subscribe SERVER 22 [ 30 days guarantee ] [ NON DROP ] Speed 150/D', '- Start time : 1 - 24h\n- Speed up to 100 / day (The average speed per day is 30-100!)\n- if the speed is less than 100 per day, partial is possible!\n- Real user\n- Guarantee: 30 days\n- Min 50 - Max 5k\n- Order channel url https://www.youtube.com/channel/xxxx , channel must show number of subs\n\nNOTE : if channel : Hide number of subs, restricted, changing username, old drop , channel delete, etc. The order will be completed due to reasons preventing shipping. In this case , take long time to cancel', 100, 5000, 284109.09090909, 277795.55555556, 27779.555555556, 'Aktif', 2484, 'JAGOSOSMED', 'Sosial Media'),
(890, 890, 'Youtube Subscribers', 'Youtube Subscribe SERVER 3 Best Monetization ', '30 Days Refill\nSpeed:200-300/day\nHigh Quality subs - Helps for Monetization Approval\nMax 50k [ Can order 25 times - 2K ]', 10, 2000, 555528.40909091, 543183.33333333, 54318.333333333, 'Aktif', 1816, 'JAGOSOSMED', 'Sosial Media'),
(891, 891, 'Youtube Subscribers', 'Youtube Subscribe SERVER 6 [ 30 days guarantee ] 20/day', 'Speed - 20/day\n30 Days guarantee\nrefill only no reffund', 10, 2000, 484456.81818182, 473691.11111111, 47369.111111111, 'Aktif', 1850, 'JAGOSOSMED', 'Sosial Media'),
(892, 892, 'Youtube Subscribers', 'Youtube Subscribe SERVER 7 [ 30 days refill ][ 100% real ] ', '20+/day\nNO stuck\nNO drop\nStart Time: 0-1hrs', 20, 55000, 543340.90909091, 531266.66666667, 53126.666666667, 'Aktif', 2011, 'JAGOSOSMED', 'Sosial Media'),
(893, 893, 'Youtube Subscribers', 'Youtube Subscribe SERVER 7 Real USA', '30-50days \nguaranted 30days', 5, 1500, 475770.45454545, 465197.77777778, 46519.777777778, 'Aktif', 1889, 'JAGOSOSMED', 'Sosial Media'),
(894, 894, 'Youtube Subscribers', 'Youtube Subscribe SERVER 8 Best Monetization ', '30 Days Refill\nSpeed:200-300/day\nHigh Quality subs - Helps for Monetization Approval\nMax 50k [ Can order 25 times - 2K ]', 10, 2000, 112272.72727273, 109777.77777778, 10977.777777778, 'Aktif', 1891, 'JAGOSOSMED', 'Sosial Media'),
(895, 895, 'Youtube Subscribers', 'Youtube Subscribe VIP 2 [ 30Days refill ][ REAL ] 500/days NON DROP ', '- Guarantee: 30 days\n- Speed : 500 - 2000+/D\n- 100 % real user\n- Almost NON DROP\n- jumlah subs harus di publik!\n- Use channel link or video link to order .\n- Channel harus mempunyai minimal 1 video', 100, 100000, 609729.54545455, 596180, 59618, 'Aktif', 2083, 'JAGOSOSMED', 'Sosial Media'),
(896, 896, 'Youtube Subscribers', 'Youtube Subscribe VIP 3 [ 30Days autorefill ][ REAL ] BEST SELLER', 'No stuck\nReal Subs\nBig orders more speed\n30D refill---- 2-3% drop auto refill in every 24hrs', 10, 50000, 620070.45454545, 606291.11111111, 60629.111111111, 'Aktif', 2088, 'JAGOSOSMED', 'Sosial Media'),
(897, 897, 'Youtube Subscribers', 'Youtube Subscribe VIP 7 [ 30Days refill ] [NO DROP] ', 'order 1000 subs kemungkinan siap dalam 9-12 hari\n- Waktu mulai: 0 - 1jam \n- refill: 30 hari\n- 100% pengguna nyata\n- Hampir NON DROP\n\nJika jumlah subs disembunyikan Anda tidak akan mendapatkan jumlah awal\ndan jika tidak masuk subs kami tidak bertanggung jawab\nGunakan tautan saluran atau video ( KEDUANYA DITERIMA)\n', 100, 5000, 199431.81818182, 195000, 19500, 'Aktif', 2235, 'JAGOSOSMED', 'Sosial Media'),
(898, 898, 'Youtube Subscribers', 'Youtube Subscribe VIP 8 [ 30Days refill ] [NO DROP] Speed 30+-/D', '- Start time : 0 - 2h\n- Speed : 30+ / day\n- NON DROP\n- Guarantee: 30 days\n- Min 100 - Max 6k\n- Good subs.', 20, 6000, 263855.68181818, 257992.22222222, 25799.222222222, 'Aktif', 2236, 'JAGOSOSMED', 'Sosial Media'),
(899, 899, 'Youtube Likes / Dislikes / Shares / Comment', 'Youtube Video Custom Comments JS 1 Cheapest ', 'Cheapest\nmulai proses 0-24jam', 10, 5000, 125568.18181818, 122777.77777778, 12277.777777778, 'Aktif', 1832, 'JAGOSOSMED', 'Sosial Media'),
(900, 900, 'Youtube Likes / Dislikes / Shares / Comment', 'Youtube Video Custom Comments JS 2 TERMURAH [ 30k/day Speed ]', '30k/day Speed', 10, 100000, 34509.090909091, 33742.222222222, 3374.2222222222, 'Aktif', 2679, 'JAGOSOSMED', 'Sosial Media'),
(901, 901, 'Youtube Live Stream / Youtube Premiered Waiting', 'Youtube View Premiere Waiting Server 1 [ cek note ]', '0-5 Minutes Starting time\n250-300 Viewers per 1000 Order\nNo Refill\nWatchtime - 30 minute to 90 Minute', 1000, 1000000, 50478.409090909, 49356.666666667, 4935.6666666667, 'Aktif', 2186, 'JAGOSOSMED', 'Sosial Media'),
(902, 902, 'Youtube Live Stream / Youtube Premiered Waiting', 'Youtube View Premiere Waiting Server 3 [ cek note ] Automated Passive Views', '- Automated Passive Views - Pre-Premiere Waiting Viewers\n- You will get 5000 Unique Automated Passive Waiting Pre-Premiere Viewers that will stay and wait for 1 Hour!\n- INSTANT Start\n- Windows Desktop & Mobile Watch Page Waiting Viewers\n- World-Wide Viewers\n- Avg Concurrent waiting on Pre-Premiere content 500-1000+ waiting viewers\n- Great for Ranking!\n- Video Must be Unrestricted & Open for ALL countries\n\nNOTE : Service offered as-is with no refill/refund guarantee!\n** note that the Pre-Premiere Waiting viewers will NOT turn into viewers if the premiere/live broadcast will start during the campaign time-frame. (those waiting viewers will not be registered as Livestream viewers or as YouTube views or anywhere on the YouTube studio analytics!)', 5000, 5000, 27403.409090909, 26794.444444444, 2679.4444444444, 'Aktif', 2188, 'JAGOSOSMED', 'Sosial Media'),
(903, 903, 'Youtube Views', 'Youtube Views JS 1 [ 50k-100k/day ] [ 30 Days Refill ] INSTANT [ GOOD SERVER NOW ]', 'Instant Start\n1-3mins Retention\n5k-10k/day\n30 Days Refill', 100, 100000000, 46223.863636364, 45196.666666667, 4519.6666666667, 'Aktif', 1705, 'JAGOSOSMED', 'Sosial Media'),
(904, 904, 'Youtube Views', 'Youtube Views JS 24 [ Non Drop ] Refill 30 days', '- Instant Start\n- Speed 10k - 20k /day For NOW\n- NON DROP', 100, 100000000, 45943.181818182, 44922.222222222, 4492.2222222222, 'Aktif', 1929, 'JAGOSOSMED', 'Sosial Media'),
(905, 905, 'Youtube Views', 'Youtube Views JS 25 [ Lifetime ] No Drop [ Best ]', 'working service\n10k-20k/day speed\n100% non-drop', 500, 10000000, 25556.818181818, 24988.888888889, 2498.8888888889, 'Aktif', 1969, 'JAGOSOSMED', 'Sosial Media'),
(906, 906, 'Youtube Views', 'Youtube Views JS 6 [ 20-50k/days ] [ 30 Days Refil ] ', 'fast', 100, 100000000, 44746.590909091, 43752.222222222, 4375.2222222222, 'Aktif', 1716, 'JAGOSOSMED', 'Sosial Media'),
(907, 907, 'Youtube Views', 'Youtube Views JUMBO 1 [ 30 days  AUTO REFILL ] FAST 250k/day BONUS LIKE+++', 'Layanan super cepat\nSebagian besar DISARANKAN dan EKSTERNAL\nDrop: jika drop dari view berlebih tidak ada refill\n\nTIDAK ADA PENGEMBALIAN DANA ATAU ISI ULANG UNTUK JUMLAH PENGIRIMAN TAMBAHAN', 15000, 10000000, 23798.863636364, 23270, 2327, 'Aktif', 2174, 'JAGOSOSMED', 'Sosial Media'),
(908, 908, '- ? Promo 01 Oktober 2023 ?-', 'Youtube Views PROMO [ PROMO 24 JAM - FREE ]', 'FREE \nNO NGELUH', 100, 1000, 59.090909090909, 57.777777777778, 5.7777777777778, 'Aktif', 1930, 'JAGOSOSMED', 'Sosial Media'),
(909, 909, 'Youtube View Target Negara', 'Youtube views Refill 30 days [ Indonesia ] [Speed: 10k/Day] ', 'waktu mulai 0-12 jam', 1000, 1000000, 46548.863636364, 45514.444444444, 4551.4444444444, 'Aktif', 2822, 'JAGOSOSMED', 'Sosial Media'),
(910, 910, 'Youtube View Target Negara', 'Youtube views Refill 90 days [ Francis ] [Speed: 200-1000/Day] ', 'Targeted RAV - Real Active Views*\n100% Real Human Active YouTube Watch Page Views\nINSTANT START - 200-1000 / Day\nWatch Page Views - Monetizable!\nRandom Retention\nStable NON-DROP Views with 90 Days Refill Guarantee**\nWorld-Wide Views Added in a NON-STOP Natural Pattern\nMust be Unrestricted & Open for ALL countries\nOK for VEVO\nCancel any Time with Full/Partial Refund\nviews can be send to embed disabled video (including videos that live-streamed or premiered in the past)\nTraffic Sources: Direct Advertisement\n\n* views may include real user engagements - your video may get some daily likes/dislikes, comments, shares, subscribers\nall made by real YouTube users that we do not control!\n** If views added from external non-organic sources your guarantee may be revoked!\n* daily speeds vary by country and load', 500, 100000, 86656.818181818, 84731.111111111, 8473.1111111111, 'Aktif', 2704, 'JAGOSOSMED', 'Sosial Media'),
(911, 911, 'Youtube View Target Negara', 'Youtube views Refill 90 days [ Indonesia ] [Speed: 200-1000/Day] ', 'Targeted RAV - Real Active Views*\n100% Real Human Active YouTube Watch Page Views\nINSTANT START - 200-1000 / Day\nWatch Page Views - Monetizable!\nRandom Retention\nStable NON-DROP Views with 90 Days Refill Guarantee**\nWorld-Wide Views Added in a NON-STOP Natural Pattern\nMust be Unrestricted & Open for ALL countries\nOK for VEVO\nCancel any Time with Full/Partial Refund\nviews can be send to embed disabled video (including videos that live-streamed or premiered in the past)\nTraffic Sources: Direct Advertisement\n\n* views may include real user engagements - your video may get some daily likes/dislikes, comments, shares, subscribers\nall made by real YouTube users that we do not control!\n** If views added from external non-organic sources your guarantee may be revoked!\n* daily speeds vary by country and load', 500, 100000, 86656.818181818, 84731.111111111, 8473.1111111111, 'Aktif', 2703, 'JAGOSOSMED', 'Sosial Media'),
(912, 912, 'Youtube View Target Negara', 'Youtube views Refill 90 days [ Spanyol ] [Speed: 200-1000/Day] ', 'Targeted RAV - Real Active Views*\n100% Real Human Active YouTube Watch Page Views\nINSTANT START - 200-1000 / Day\nWatch Page Views - Monetizable!\nRandom Retention\nStable NON-DROP Views with 90 Days Refill Guarantee**\nWorld-Wide Views Added in a NON-STOP Natural Pattern\nMust be Unrestricted & Open for ALL countries\nOK for VEVO\nCancel any Time with Full/Partial Refund\nviews can be send to embed disabled video (including videos that live-streamed or premiered in the past)\nTraffic Sources: Direct Advertisement\n\n* views may include real user engagements - your video may get some daily likes/dislikes, comments, shares, subscribers\nall made by real YouTube users that we do not control!\n** If views added from external non-organic sources your guarantee may be revoked!\n* daily speeds vary by country and load', 500, 100000, 86656.818181818, 84731.111111111, 8473.1111111111, 'Aktif', 2705, 'JAGOSOSMED', 'Sosial Media'),
(913, 913, 'Youtube Views', 'Youtube Views S10 ( Suggested Views ) [ Lifetime Guarantee ] [ 50-70K/day ] ', 'Instant Start\nMin 100\nRetention: 30 seconds to 60 Seconds\nNo Drop\nMax 1 Million\n\nSource: Suggested videos + Direct or unknown + Browse features\n( 30-35?ch Source )', 100, 1000000, 15171.590909091, 14834.444444444, 1483.4444444444, 'Aktif', 2672, 'JAGOSOSMED', 'Sosial Media'),
(914, 914, 'Youtube Views', 'Youtube Views S14 [ Life Time Guarantee ] 1K/Day ', 'Instant\n1k-2k/Day\n0-1min retention\nfrom internal YouTube source + 3-4?ditional likes]', 100, 500000, 15821.590909091, 15470, 1547, 'Aktif', 2795, 'JAGOSOSMED', 'Sosial Media'),
(915, 915, 'Youtube Views', 'Youtube Views S15 [ Good Service - Non Drop ] [ Refill 30days ] [ 50k/day ]', '50k/day\nNon Drop', 3000, 700000, 45913.636363636, 44893.333333333, 4489.3333333333, 'Aktif', 2820, 'JAGOSOSMED', 'Sosial Media'),
(916, 916, 'Youtube View Jam Tayang', 'Youtube Views S17 [ Jam Tayang ] [ Refill 30 days ] [ BACA Deskripsi ] [ durasi video 60menit lebih ]  ', '(800-1000Hr/day)\nRefill 30 Days\nStart time: 6-12 hours\nFinishes in: 3-7DAYS\n\n- Minimum 100Min+ Video Required.\n- Average Watchtime Will Be updated In 6 Hours after completing the order\nAnd the Exact Total Watchtime will be updated in 2-3 Days in Analytics', 1000, 1000000, 717127.27272727, 701191.11111111, 70119.111111111, 'Aktif', 3031, 'JAGOSOSMED', 'Sosial Media'),
(917, 917, 'Youtube Views', 'Youtube Views S18 [ HR ] [ 30 DAYS REFILL ]  Retention 2 - 5 Mins', '- Start Time : Instant\n- Speed : 50k/day\n- Retention : 2-5 minutes\n- Min/Max : 1000/10M\n- Guarantee: 30 days Refill\n- Source : External\n- Device : Mobile phone\n- Real user\n- Country : Global', 1000, 100000000, 45514.772727273, 44503.333333333, 4450.3333333333, 'Aktif', 2839, 'JAGOSOSMED', 'Sosial Media'),
(918, 918, 'Youtube View Jam Tayang', 'Youtube Views S19 [ Jam Tayang ] [ 1 Hour Video ] [ Auto Refill 30 Days ] [Finishes in 7 DAYS] ', 'Video length should be at least 1 hours+\nStarts in 1-2 Hours\nEmbed must be enabled\nup to 8 days to complete.\n30 Days Refill!\n\n1000 quantity - 1000 HOURS\n2000 quantity - 2000 HOURS\n3000 quantity - 3000 HOURS\n4000 quantity - 4000 HOURS', 100, 4000, 563875, 551344.44444444, 55134.444444444, 'Aktif', 3348, 'JAGOSOSMED', 'Sosial Media'),
(919, 919, 'Youtube Views', 'Youtube Views S2 [ 2-5k/day ] + bonus likes + Traffic Source- Mixed [R30]', 'Refill 30 days', 100, 160000, 9897.7272727273, 9677.7777777778, 967.77777777778, 'Aktif', 2497, 'JAGOSOSMED', 'Sosial Media'),
(920, 920, 'Youtube View Jam Tayang', 'Youtube Views S21 [ 4000 HOURS] [30/days refill Guarantee] [Fastest Watch-Time ] ( 60 minutes )', 'Start: 1-24 hours.\nSpeed: 500-1K / Day.\nQuality: Real.\n30 Days Guarantee.\n\nmake Video Unlist when Order\nWhen U Order 4000 watch time\nYou were Ordering 4000 Views ( 1Views = 60min retention )\n\nSo If Other Views Mix With It system mark The Order Complete At early stage\nAnd No refund Or refill Will be Provided', 100, 4000, 546590.90909091, 534444.44444444, 53444.444444444, 'Aktif', 3629, 'JAGOSOSMED', 'Sosial Media'),
(921, 921, 'Youtube View Jam Tayang', 'Youtube Views S22 [ 1 Hour Video ] [ speed 300-500/ day ] [ 30 Days Guaranteed ] [ Non Drop ]', 'durasi video minimal 1 jam lebih!\nStart Time: 1-5min\nUse 60 Min Lenght Video\nOrder 1000 You will Get 1000 Hours and 2500-3000 Views\n30 Days Guaranteed\nReal Source Views', 100, 4000, 564318.18181818, 551777.77777778, 55177.777777778, 'Aktif', 3630, 'JAGOSOSMED', 'Sosial Media'),
(922, 922, 'Youtube Views', 'Youtube Views S26  [ Speed 10k/day ] [ Ex­tern­a + Oher features  ] [ Lifetime Guaranteed ] ', 'Lifetime Guaranteed', 100, 1000000, 16176.136363636, 15816.666666667, 1581.6666666667, 'Aktif', 3007, 'JAGOSOSMED', 'Sosial Media'),
(923, 923, 'Youtube Views', 'Youtube Views S28 [ 500-2k Per Day ] [ BEST QUALITY ] [ Lifetime Guaranteed ] [ HR ]', 'Link: https://www.youtube.com/watch?v=zx-xxxxxxx\n500-2k Per Day \nRetention: 1 - 20 minutes\nDevice: Desktop\nSource: Mixed\n\nNote: If your old views drop, we will not refill.\nSource of views: Mixed', 100, 1000000, 38985.227272727, 38118.888888889, 3811.8888888889, 'Aktif', 3036, 'JAGOSOSMED', 'Sosial Media'),
(924, 924, 'Youtube Views', 'Youtube Views S3 [ 20K/day ] + Suggested [ Lifetime Guarantee ] ', '20K/day', 100, 500000, 24360.227272727, 23818.888888889, 2381.8888888889, 'Aktif', 2503, 'JAGOSOSMED', 'Sosial Media'),
(925, 925, 'Youtube Views', 'Youtube Views S4  [ Good For Ranking ] Life Time Guaranteed', 'Source : Mobile Devices - Android\nSpeed 50-100k Per Day\nRetention : 20-50 Second\nInstant Start', 1000, 100000000, 21730.681818182, 21247.777777778, 2124.7777777778, 'Aktif', 2512, 'JAGOSOSMED', 'Sosial Media'),
(926, 926, 'Youtube Views', 'Youtube Views S5  [ 60K/day - Suggested Views + 2-3% Bonus LIKES ]', 'Speed 40K/day\n60 Days FreeRefill IN case drop\nSource : Suggested Videos\n2-3% Bonus Likes ( Free with Views )\nInstant Start', 100, 9000000, 15171.590909091, 14834.444444444, 1483.4444444444, 'Aktif', 2513, 'JAGOSOSMED', 'Sosial Media'),
(927, 927, 'Youtube Views', 'Youtube Views S7 [ 5k/day speed ] + Suggested [ Lifetime Guarantee ] ', 'Source: Suggested + Direct + Browse Features ]\nSpeed 5k Per Day\nInstant Start\nLife Time Guarantee', 500, 55000, 13871.590909091, 13563.333333333, 1356.3333333333, 'Aktif', 2651, 'JAGOSOSMED', 'Sosial Media'),
(928, 928, 'Youtube Views', 'Youtube Views S8 [ 70K Per Day speed ] ( 100% Suggested Views ) [ Lifetime Guarantee ] BONUS LIKE', 'Guarantee:Lifetime\nSpeed : 50-70k/day\nSource:Suggested', 100, 1000000, 15171.590909091, 14834.444444444, 1483.4444444444, 'Aktif', 2653, 'JAGOSOSMED', 'Sosial Media'),
(929, 929, 'Youtube Views', 'Youtube Views S9 ( Suggested Views ) [ Lifetime Guarantee ] [ 5-7K/day ]', 'Min 100\nRetention: 30 seconds to 60 Seconds\nNo Drop\nMax 1 Million\n\nSource: Suggested videos + Direct or unknown + Browse features\n( 30-35?ch Source )', 100, 55000, 14019.318181818, 13707.777777778, 1370.7777777778, 'Aktif', 2671, 'JAGOSOSMED', 'Sosial Media'),
(930, 930, 'Youtube Views', 'Youtube Views server 10 [ LIFETIME ][ FASTEST IN THE MARKET ]', 'Speed 1 Million Per Day\nInstant Start\nNON-Drop\nLife Time Guarantee', 1000, 100000000, 28437.5, 27805.555555556, 2780.5555555556, 'Aktif', 1584, 'JAGOSOSMED', 'Sosial Media'),
(931, 931, 'Youtube Views', 'Youtube Views Server 4 ( No refill ) [Speed: 500K/Day] CHEAP', '- Start : 0 - 6 jam', 1000, 10000000, 10178.409090909, 9952.2222222222, 995.22222222222, 'Aktif', 1268, 'JAGOSOSMED', 'Sosial Media'),
(932, 932, 'Youtube Views', 'Youtube Views Spesial [ 60days Guaranted ] BONUS Likes', 'Instant start\nwaktu mulai 0-6jam\nkecepatan 7k-15k/days', 100, 5000000, 23326.136363636, 22807.777777778, 2280.7777777778, 'Aktif', 2080, 'JAGOSOSMED', 'Sosial Media'),
(933, 933, 'Youtube View   untuk monetisasi - penghasil duit ', 'Youtube views untuk penambah Adsense [NO DROP] [FULL ENGAGEMENT] [Speed: 50K/Day]', 'View Bisa Menghasilkan Pendapatan $9 dari 20k View yang kamu pesan. ( jika konten videonya bagus)\n\nKualitas Views :-\n. Retensi: Bergantung pada Konten\n. Sumber: Pengguna asli, Metode Organik - Iklan dari berbagai sumber\n. Negara: Seluruh Dunia\n. Istimewa: Penayangan Juga Akan Menghasilkan Pendapatan (Jika Berlaku).\n\nCatatan Layanan:-\n. Waktu mulai: 12 - 36 jam (untuk persetujuan Iklan)\n. Isi Ulang Hari: 30 Hari\n. Rasio Penurunan: Nol Penurunan\n. Kecepatan: 50K - 250K/Hari\n\nCATATAN:-\n1) Pengguna nyata (Anda akan mendapatkan keterlibatan)\n2) Zero Drop For Fresh Videos\n3) Suka/Tidak Suka + Tampilan + Komentar + Pelanggan (Tergantung pada Konten video dan jumlah yang dipesan)\n4) Tidak ada batasan panjang video (Semua Durasi Didukung)\n5) Tidak ada batasan untuk Konten video (Konten dewasa TIDAK Diizinkan)\n6) Tampilan Akan Menghasilkan Pendapatan.\n7) Waktu tonton akan dihitung untuk monetisasi', 10000, 100000000, 40492.045454545, 39592.222222222, 3959.2222222222, 'Aktif', 2759, 'JAGOSOSMED', 'Sosial Media'),
(934, 934, 'Youtube View   untuk monetisasi - penghasil duit ', 'Youtube views untuk penambah Adsense 1 ( 2 - 4$ )', '- Durasi Video : Harus 5 menit+\n- Pendapatan bergantung pada berbagai faktor seperti kata kunci, panjang, topik, dan lokasi, dll.\n- Kami Tidak Menjamin Berapa Banyak Pendapatan yang Akan Anda Dapatkan? (tetapi $ 2 - 4 diperkirakan untuk 1000 view)\n- Garansi: kami hanya akan isi ulang view bukan pendapatan anda!\ngaransi 30 hari\n\nNOTE: kami tidak menjamin untuk pendapatan akan dapat terus, Kami hanya menggaransikan view\nlebih baik untuk mencoba pesan 100 saja dlu untuk mencobanya', 100, 10000, 65975, 64508.888888889, 6450.8888888889, 'Aktif', 2081, 'JAGOSOSMED', 'Sosial Media'),
(935, 935, 'Youtube Views', 'Youtube Views Versi 1[ Suggested ] [ 1k-4k/days ] [ Lifetime Guaranteed ] ', 'Link: https://www.youtube.com/watch?v=zx-BAU4ezv8\nStart: INSTANT\nSpeed: 1k-4k/day\nRefill: Lifetime\n\nRetention Random\nSource: Mixed', 100, 25000, 20578.409090909, 20121.111111111, 2012.1111111111, 'Aktif', 3139, 'JAGOSOSMED', 'Sosial Media'),
(936, 936, 'Youtube Views', 'Youtube Views Versi 10 [ Only working service in the World ] [ Lifetime Guaranteed ] [ 3k-5k/Day ]', 'Start Time : 0 - 2 hours\nSpeed : 3k - 5k\nGurantee : lifetime Refill', 200, 1000000, 33238.636363636, 32500, 3250, 'Aktif', 3534, 'JAGOSOSMED', 'Sosial Media'),
(937, 937, 'Youtube Views', 'Youtube Views Versi 11 [  Max 100K | No Refill ] [ 5k-10k/days ]', 'no refill\nno refund apapun itu alasan anda\norder dengan resiko sendiri', 100, 100000, 1285.2272727273, 1256.6666666667, 125.66666666667, 'Aktif', 3535, 'JAGOSOSMED', 'Sosial Media'),
(938, 938, 'Youtube Views', 'Youtube Views Versi 13 [ Real Device ] [ Refill 30 days ] [ 70k/days ]', '30 Days Refill\n70K/Day\nStart: 0-6 Hour', 100, 1000000, 22306.818181818, 21811.111111111, 2181.1111111111, 'Aktif', 3537, 'JAGOSOSMED', 'Sosial Media'),
(939, 939, 'Youtube Views', 'Youtube Views Versi 14 [ 3k-5k/day ] [ Quality Views] [ Lifetime Guarantee ]', 'Youtube Views Fast\n0-1 Minutes Retention Views\nSpeed 20k-30k Per day\n( Life Time Guarantee )', 100, 100000000, 33167.727272727, 32430.666666667, 3243.0666666667, 'Aktif', 3567, 'JAGOSOSMED', 'Sosial Media'),
(940, 940, 'Youtube Views', 'Youtube Views Versi 15 [ MIN 10K ] [ ZERO DROP ] [Speed: 10M/Day ] [ Real Active Trending Views ]', 'Waktu mulai-6-12 jam\nSetiap kuantitas akan Complete dalam 12-24hour setelah start\nKecepatan-10M/hari\nTerbaik dari semua kualitas\nNondrop Guarenteed\n- Retensi-upto 60%\n- Best Recommended\n\nCatatan syarat:-\n-Panjang video harus kurang dari 5 menit\n-Kami tidak dapat menjamin akan 100?tang di bagian Trending tapi itu kesempatan 70-80% untuk tren karena tergantung pada saluran untuk saluran dan video ke video.\n-Tidak boleh copyright dan Konten harus bagus', 10000, 10000000, 38778.409090909, 37916.666666667, 3791.6666666667, 'Aktif', 3568, 'JAGOSOSMED', 'Sosial Media'),
(941, 941, 'Youtube Views', 'Youtube Views Versi 16  [Suggested] [Refill: Lifetime] [Speed: 1k/Day] [Start Time: 1Hour]', 'Start: 0-1H\nSpeed: 5K/Day\nRefill: Lifetime Refill\n', 100, 500000, 15511.363636364, 15166.666666667, 1516.6666666667, 'Aktif', 3575, 'JAGOSOSMED', 'Sosial Media'),
(942, 942, 'Youtube Views', 'Youtube Views Versi 17 [Refill: Lifetime] [Speed: 10k/Day] [Start Time: 1Hour]', 'Start: 0-1H\nSpeed: 1-2K/Day\nRefill: Lifetime Refill', 100, 1000000, 9159.0909090909, 8955.5555555556, 895.55555555555, 'Aktif', 3594, 'JAGOSOSMED', 'Sosial Media'),
(943, 943, 'Youtube Views', 'Youtube Views Versi 2 [ Suggested ] [ best speed - quality ] [ Lifetime Guaranteed ] ', '20k-40k/Days\nLink: https://www.youtube.com/watch?v=zx-BAU4ezv8\nStart: INSTANT\nSpeed: 1k-5k/day\nRefill: Lifetime\n\nMust be Unrestricted & Open for ALL countries\n Video Must be embed enable', 100, 100000000, 21863.636363636, 21377.777777778, 2137.7777777778, 'Aktif', 3140, 'JAGOSOSMED', 'Sosial Media'),
(944, 944, 'Youtube Views', 'Youtube Views Versi 3 [ Suggested ] [ best speed - quality ] [ Lifetime Guaranteed ] 10k-20k/Days', '10k-20k/Days', 500, 700000, 21863.636363636, 21377.777777778, 2137.7777777778, 'Aktif', 3141, 'JAGOSOSMED', 'Sosial Media'),
(945, 945, 'Youtube Views', 'Youtube Views Versi 4 [Refill: Lifetime] [Max: 10M] [Start Time: 0 - 2 Hours] [Speed: Up to 200K/Day]', '200K/Day', 500, 10000000, 59696.590909091, 58370, 5837, 'Aktif', 3192, 'JAGOSOSMED', 'Sosial Media'),
(946, 946, 'Youtube Views', 'Youtube Views Versi 6 [ Lifetime refill ] [ NEW ] [Start Time: 0 - 2 Hours] [50k-100k/day] [ Non drop ]', 'New server\nNon-drop For now', 100, 1000000, 46563.636363636, 45528.888888889, 4552.8888888889, 'Aktif', 3419, 'JAGOSOSMED', 'Sosial Media'),
(947, 947, 'Youtube Views', 'Youtube Views Versi 8 [ refill 30 days ] [ 40K/Day - HQ ] [ 500k-1M/day ]', 'Start : 0-3 hrs\nHigh Quality\nGuarantee : 30 Days\nViews from real account', 100, 20000000, 28806.818181818, 28166.666666667, 2816.6666666667, 'Aktif', 3490, 'JAGOSOSMED', 'Sosial Media'),
(948, 948, 'Youtube Views', 'Youtube Views Versi 9 [ 100K/Days ] [ Lifetime Guarantee - No drop ] [ working ]', 'Non Drop ( tapi jika drop no kompline, makanya kami berikan  Lifetime Guarantee  )\nLifetime Guarantee', 100, 100000, 23045.454545455, 22533.333333333, 2253.3333333333, 'Aktif', 3500, 'JAGOSOSMED', 'Sosial Media');

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE `log` (
  `id` int(4) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `aksi` enum('Login','Logout') NOT NULL,
  `ip` varchar(100) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `log`
--

INSERT INTO `log` (`id`, `username`, `aksi`, `ip`, `date`, `time`) VALUES
(1, 'admin', 'Login', '182.3.105.250', '2023-10-01', '12:31:12'),
(2, 'admin', 'Logout', '182.3.105.250', '2023-10-01', '13:40:59'),
(3, 'admin', 'Login', '182.3.105.250', '2023-10-01', '13:51:18');

-- --------------------------------------------------------

--
-- Table structure for table `metode_depo`
--

CREATE TABLE `metode_depo` (
  `id` int(255) NOT NULL,
  `provider` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `rate` varchar(255) NOT NULL,
  `tujuan` varchar(250) NOT NULL,
  `tipe` enum('Bank','Pulsa Transfer') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `metode_depo`
--

INSERT INTO `metode_depo` (`id`, `provider`, `nama`, `rate`, `tujuan`, `tipe`) VALUES
(1, 'OVO', '#1 OVO Transfer', '1', '088xxxxxx A/n AAA', 'Bank'),
(2, 'DANA', '#1 DANA Transfer', '1', '088xxxxxx A/n AAA', 'Bank'),
(3, 'GOPAY', '#1 GOPAY Transfer', '1', '088xxxxxx A/n AAA', 'Bank'),
(4, 'BNI', '#1 Bank BNI Transfer', '1', '088xxxxxx A/n AAA', 'Bank');

-- --------------------------------------------------------

--
-- Table structure for table `pembelian_sosmed`
--

CREATE TABLE `pembelian_sosmed` (
  `id` int(10) NOT NULL,
  `oid` varchar(50) NOT NULL,
  `provider_oid` varchar(50) NOT NULL,
  `user` varchar(100) NOT NULL,
  `layanan` varchar(100) NOT NULL,
  `target` text NOT NULL,
  `jumlah` int(10) NOT NULL,
  `remains` varchar(10) NOT NULL,
  `start_count` varchar(10) NOT NULL,
  `harga` double NOT NULL,
  `profit` double NOT NULL,
  `status` enum('Pending','Processing','Error','Partial','Success') NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `provider` varchar(100) NOT NULL,
  `place_from` enum('Website','API') NOT NULL,
  `refund` int(2) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_swedish_ci;

--
-- Dumping data for table `pembelian_sosmed`
--

INSERT INTO `pembelian_sosmed` (`id`, `oid`, `provider_oid`, `user`, `layanan`, `target`, `jumlah`, `remains`, `start_count`, `harga`, `profit`, `status`, `date`, `time`, `provider`, `place_from`, `refund`) VALUES
(1, '6078725', '10816608', 'admin', 'Instagram Followers Server 8 [ Refill 180days ] [ 30-50k/day] ( Recommended Service )', 'jagososmedofficialku', 10, '10', '0', 160.13636363636, 7.828888888889, 'Error', '2023-10-01', '13:06:22', 'JAGOSOSMED', 'Website', 0);

-- --------------------------------------------------------

--
-- Table structure for table `pesan_tiket`
--

CREATE TABLE `pesan_tiket` (
  `id` int(10) NOT NULL,
  `id_tiket` int(10) NOT NULL,
  `pengirim` enum('Member','team-support') NOT NULL,
  `user` varchar(50) NOT NULL,
  `pesan` text NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `update_terakhir` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pesan_tsel`
--

CREATE TABLE `pesan_tsel` (
  `id` int(11) NOT NULL,
  `isi` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_swedish_ci NOT NULL,
  `status` enum('UNREAD','READ') NOT NULL,
  `date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `provider`
--

CREATE TABLE `provider` (
  `id` int(10) NOT NULL,
  `code` varchar(50) NOT NULL,
  `link` varchar(100) NOT NULL,
  `api_key` varchar(100) NOT NULL,
  `api_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_swedish_ci;

--
-- Dumping data for table `provider`
--

INSERT INTO `provider` (`id`, `code`, `link`, `api_key`, `api_id`) VALUES
(4, 'MANUAL', 'MANUAL', 'MANUAL', 'MANUAL'),
(5, 'JAGOSOSMED', 'https://www.jagososmed.com/api/json.php', '44RuM1xFR7sV7mLmhIpnBHaW', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `riwayat_transfer`
--

CREATE TABLE `riwayat_transfer` (
  `id` int(10) NOT NULL,
  `pengirim` varchar(50) NOT NULL,
  `penerima` varchar(50) NOT NULL,
  `jumlah` double NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `setting_web`
--

CREATE TABLE `setting_web` (
  `id` int(11) NOT NULL,
  `short_title` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `deskripsi_web` text NOT NULL,
  `kontak_utama` text NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `setting_web`
--

INSERT INTO `setting_web` (`id`, `short_title`, `title`, `deskripsi_web`, `kontak_utama`, `date`, `time`) VALUES
(1, 'WEB KAMU', 'WEB KAMU', 'WEB KAMU SMM Adalah Sebuah platform bisnis yang menyediakan berbagai layanan multy media marketing yang bergerak terutama di Indonesia. Dengan bergabung bersama kami, Anda dapat menjadi penyedia jasa social media atau reseller social media seperti jasa penambah Followers, Likes, dll. Saat ini tersedia berbagai layanan untuk social media terpopuler seperti Instagram, Facebook, Twitter, Youtube, dll.', '', '2019-01-03', '16:06:10');

-- --------------------------------------------------------

--
-- Table structure for table `tiket`
--

CREATE TABLE `tiket` (
  `id` int(10) NOT NULL,
  `user` varchar(50) NOT NULL,
  `subjek` varchar(250) NOT NULL,
  `pesan` text NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `update_terakhir` datetime NOT NULL,
  `status` enum('Pending','Responded','Waiting','Closed') NOT NULL,
  `this_user` int(1) NOT NULL,
  `this_admin` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(20) NOT NULL,
  `nama` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `nomer` varchar(20) NOT NULL,
  `pin` varchar(6) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `saldo` int(10) NOT NULL,
  `pemakaian_saldo` double NOT NULL,
  `level` enum('Member','Agen','Admin','Developers','Reseller') NOT NULL,
  `status` enum('Aktif','Tidak Aktif') NOT NULL,
  `api_key` varchar(100) NOT NULL,
  `uplink` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `update_nama` int(1) NOT NULL,
  `random_kode` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nama`, `email`, `nomer`, `pin`, `username`, `password`, `saldo`, `pemakaian_saldo`, `level`, `status`, `api_key`, `uplink`, `date`, `time`, `update_nama`, `random_kode`) VALUES
(1, 'admin', 'admin@admin.com', '0811111111', '0', 'admin', '$2y$10$R4aw2JuNBNqpfBOp.TRMuep4Us66K9TEhihjljxxj9sbsVCf9nEnW', 99840, 160.13636363636, 'Developers', 'Aktif', '5N7usZCnMYPVva2kIJoZePImDNHrf9UduzX1fg52Mb', 'Pendaftaran Gratis', '2023-10-01', '12:30:51', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `voucher_deposit`
--

CREATE TABLE `voucher_deposit` (
  `id` int(10) NOT NULL,
  `voucher` varchar(50) NOT NULL,
  `saldo` varchar(250) NOT NULL,
  `status` enum('active','sudah di redeem') NOT NULL,
  `user` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deposit`
--
ALTER TABLE `deposit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `halaman`
--
ALTER TABLE `halaman`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `harga_pendaftaran`
--
ALTER TABLE `harga_pendaftaran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history_saldo`
--
ALTER TABLE `history_saldo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori_layanan`
--
ALTER TABLE `kategori_layanan`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nama` (`nama`);

--
-- Indexes for table `kontak_kami`
--
ALTER TABLE `kontak_kami`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `layanan_sosmed`
--
ALTER TABLE `layanan_sosmed`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `metode_depo`
--
ALTER TABLE `metode_depo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pembelian_sosmed`
--
ALTER TABLE `pembelian_sosmed`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pesan_tiket`
--
ALTER TABLE `pesan_tiket`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pesan_tsel`
--
ALTER TABLE `pesan_tsel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `provider`
--
ALTER TABLE `provider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `riwayat_transfer`
--
ALTER TABLE `riwayat_transfer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting_web`
--
ALTER TABLE `setting_web`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tiket`
--
ALTER TABLE `tiket`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `voucher_deposit`
--
ALTER TABLE `voucher_deposit`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deposit`
--
ALTER TABLE `deposit`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `halaman`
--
ALTER TABLE `halaman`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `harga_pendaftaran`
--
ALTER TABLE `harga_pendaftaran`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `history_saldo`
--
ALTER TABLE `history_saldo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kategori_layanan`
--
ALTER TABLE `kategori_layanan`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `kontak_kami`
--
ALTER TABLE `kontak_kami`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `layanan_sosmed`
--
ALTER TABLE `layanan_sosmed`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=949;

--
-- AUTO_INCREMENT for table `log`
--
ALTER TABLE `log`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `metode_depo`
--
ALTER TABLE `metode_depo`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pembelian_sosmed`
--
ALTER TABLE `pembelian_sosmed`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pesan_tiket`
--
ALTER TABLE `pesan_tiket`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pesan_tsel`
--
ALTER TABLE `pesan_tsel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `provider`
--
ALTER TABLE `provider`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `riwayat_transfer`
--
ALTER TABLE `riwayat_transfer`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `setting_web`
--
ALTER TABLE `setting_web`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tiket`
--
ALTER TABLE `tiket`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `voucher_deposit`
--
ALTER TABLE `voucher_deposit`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
