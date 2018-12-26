-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Inang: 127.0.0.1
-- Waktu pembuatan: 22 Jul 2014 pada 03.28
-- Versi Server: 5.5.27
-- Versi PHP: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Basis data: `info_bandung`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_call_center`
--

CREATE TABLE IF NOT EXISTS `t_call_center` (
  `id_call_center` int(20) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) NOT NULL,
  `no_tlp` varchar(20) NOT NULL,
  `gambar` varchar(250) NOT NULL,
  PRIMARY KEY (`id_call_center`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data untuk tabel `t_call_center`
--

INSERT INTO `t_call_center` (`id_call_center`, `nama`, `no_tlp`, `gambar`) VALUES
(1, 'Pemadam Kebakaran', '022113 ', '113441-pemadam.jpg'),
(2, 'Ambulance', '022118', '113739-Mobil-Ambulance-Travello.jpg'),
(3, 'Polda Jabar', '0227800166', '113944-polda.jpg'),
(4, 'PMI Kota Bandung', '0222500095', '114356-1469822.jpg'),
(5, 'RSUP Hasan Sadikin', '022203495355', '115753-rshs.jpg'),
(6, 'Info Jalan Tol', '2011251', '120008-tol.jpg'),
(7, 'Telkom Indonesia', '147', '120319-logo-telkom-baru.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_contoh`
--

CREATE TABLE IF NOT EXISTS `t_contoh` (
  `id_contoh` int(20) NOT NULL AUTO_INCREMENT,
  `id_jenis` int(20) NOT NULL,
  `contoh` varchar(50) NOT NULL,
  `gambar` varchar(250) NOT NULL,
  PRIMARY KEY (`id_contoh`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=36 ;

--
-- Dumping data untuk tabel `t_contoh`
--

INSERT INTO `t_contoh` (`id_contoh`, `id_jenis`, `contoh`, `gambar`) VALUES
(1, 1, 'Wisata Favorit', 'wisata_favorit.png'),
(2, 1, 'Museum', 'museum.png'),
(3, 1, 'Gedung Bersejarah', 'gedung_bersejarah.png'),
(4, 2, 'Distro/Clothing', 'distro.png'),
(5, 2, 'Factory Outlet', 'fo.png'),
(6, 2, 'Butik', 'butik.png'),
(7, 2, 'Mall/Pusat Perbelanjaan', 'mall.png'),
(8, 3, 'Restoran dan Cafe', 'resto.png'),
(9, 3, 'Cake''s &amp; Bakery', '131925-bakery.png'),
(10, 3, 'Kuliner Malam', 'kuliner_malam.png'),
(11, 3, 'Kaki Lima', 'kaki_lima.png'),
(12, 4, 'Angkot', 'angkot.png'),
(13, 4, 'Bus Damri', 'damri.png'),
(14, 4, 'Taxi', 'taxi.png'),
(15, 4, 'Travel', 'travel.png'),
(16, 4, 'Bandar Udara (Airport)', 'bandara.png'),
(17, 4, 'Stasiun Kereta Api', 'kereta_api.png'),
(18, 5, 'Rumah Sakit', 'rumah_sakit.png'),
(19, 5, 'Pemadam Kebakaran', 'pemadam.png'),
(20, 5, 'Polisi', 'polisi.png'),
(21, 6, 'Hotel', 'hotel.png'),
(22, 6, 'Apartemen', 'apartemen.png'),
(23, 6, 'Kos-kosan', 'kos.png'),
(24, 6, 'Kontrakan', 'kontrakan.png'),
(25, 7, 'Photo Studio', 'photo.png'),
(26, 7, 'Taman Kota', 'taman.png'),
(27, 8, 'TV', 'tv.png'),
(28, 8, 'Radio', 'radio.png'),
(29, 9, 'Fitness Center', 'fitness.png'),
(30, 9, 'Bowling', '074419-bowling.png'),
(31, 9, 'Sepak Bola', 'sepak_bola.png'),
(32, 9, 'Sarana Olahraga', 'tempat_olahraga.png'),
(33, 7, 'Barbershop', 'barber_shop.png'),
(34, 7, 'Karaoke', 'karaoke.png'),
(35, 70, 'Skate Park', 'skate.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_gambar`
--

CREATE TABLE IF NOT EXISTS `t_gambar` (
  `id_gambar` int(20) NOT NULL AUTO_INCREMENT,
  `id_informasi` int(20) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `gambar` varchar(250) NOT NULL,
  `deskripsi` text NOT NULL,
  PRIMARY KEY (`id_gambar`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=225 ;

--
-- Dumping data untuk tabel `t_gambar`
--

INSERT INTO `t_gambar` (`id_gambar`, `id_informasi`, `judul`, `gambar`, `deskripsi`) VALUES
(1, 1, 'Factory Outlet De Ranch', '124159-deranch3.jpg', 'Ini adalah foto factory outlet yang ada di De Ranch lembang'),
(2, 1, 'De''Ranch Bird View', '124239-deranch6.jpg', 'Beberapa aktifitas keluarga yang ada di De Ranch : menunggang kuda, delman, fun boat, panahan dan masih banyak lagi.'),
(3, 1, 'Kuda Tunggang', '124259-deranch2.jpg', 'Wahana permainan kuda tunggang'),
(4, 1, 'Rumah Indian', '124320-deranch5.jpg', 'Rumah indian De Ranch lembang bagus untuk foto-foto.'),
(5, 1, 'Delman', '124342-deranch4.jpg', 'Wahana permainan kuda delman yang ada di De Ranch lembang'),
(6, 2, 'Wahana Permainan', '134923-tsb2.jpg', 'Terdapat berbagai macam  permainan yang dapat anda nilmati di Trans Studio Bandung.'),
(7, 2, 'Yamaha Racing Coaster', '134950-tsb5.jpg', 'Wahan ini cocok untuk mereka yang ingin menguji derasnya adrenalin karena mampu melesat dengan kecepatan 120 kilo meter per jam dalam 3,5 detik'),
(8, 2, 'Jelajah', '135036-tsb6.jpg', 'Wahana ini memberikan pengalaman berpetualang di dalam hutan afrika, bertemu dengan binatang buas, dan melewati jurang air terjun setinggi 13 meter.'),
(9, 2, 'Giant Swing', '135103-tsb3.jpg', 'Ayunan pendulum raksasa yang pertama di Indonesia ini akan mengajak anda berputar-putar di ketinggian 18 meter.'),
(10, 2, 'Dunia Lain', '135126-tsb4.jpg', 'Wahana permainan yang menyeramkan untuk anda yang menyukai hal yang berbau horor ini pilihan yang tepat'),
(11, 3, 'Buggy Adventure', '140114-kg2.jpg', 'Para pencinta petualangan bisa mencoba wahana Buggy Adventure. Ini merupakan mobil buggy sesungguhnya yang dirancang tangguh untuk segala medan. Aspal yang rata maupun tanah becek dan berbatu bisa diatasi dengan mudah oleh mobil terbuka dengan kapasitas 4 orang tersebut.'),
(12, 3, 'Water Boom', '140142-kg4.jpg', 'Salah satu atraksi paling menarik yang dimiliki Water Boom Kampung Gajah adalah sebuah seluncuran besar yang terhubung dengan corong raksasa. Pengunjung yang menaiki wahana tersebut akan meluncur dengan kecepatan tinggi ke bagian bawah corong yang mengerucut dan terjatuh ke kolam jernih di bawahnya.'),
(13, 3, 'Futuristic Train ', '140211-kg6.jpg', 'Futuristic Train merupakan wahana berbentuk kereta yang berjalan mengelilingi kawasan Kampung Gajah di atas rel khusus. Para orang tua bisa mengajak buah hati mereka naik Futuristic Train sebelum mengenalkan mereka pada kereta yang sesungguhnya.'),
(14, 3, 'Horse Riding', '140241-kg5.jpg', 'Atraksi Horse Riding atau menunggang kuda akan membawa pengunjung berkeliling kawasan Kampung Gajah di atas punggung kuda. Anak-anak maupun dewasa bisa menunggang kuda dengan aman di Kampung Gajah karena mereka akan didampingi oleh seorang pawang yang berpengalaman. Kamu juga bisa berpose keren dan berfoto di atas kuda.'),
(15, 3, 'Sky Rider', '140309-kg3.jpg', 'Ingin wahana yang lebih menantang? Coba buktikan keberanianmu di atas ketinggian dengan naik wahana Sky Rider. Wahana mirip flying fox ini membawa peserta meluncur di udara dengan hanya disangga oleh tali-tali pengaman. Ingat, Sky Rider bukanlah wahana untuk mereka yang berhati lemah.'),
(16, 4, 'Angklung', '133239-angklung.jpg', 'Angklung adalah alat musik tradisional Jawa Barat yang terbuat dari bambu. Untuk mendengarkan keindahan suara Angklung, Anda hanya tinggal menggoyangkannya saja.\r\n\r\nSuara gemerincing Angklung dihasilkan oleh keharmonisan tabung bambu yang digetarkan. Terdapat dua sampai tiga tabung bambu dalam sebuah Angklung.'),
(17, 4, 'Arumba', '134233-arumba1.jpg', 'Arumba adalah kependekan dari Alunan Rumpun Bambu. Diciptakan dan dikembangkan oleh murid-murid Udjo Ngalagena di tahun 1971. Arumba bukan merupakan sebuah alat musik, namun terdiri dari beberapa alat musik bambu, yaitu : Angklung, bass Angklung dan Gambang.'),
(18, 4, 'Calung', '134310-calung.jpg', 'Alat musik yang juga terdiri dari beberapa tabung bambu yang disusun dari kecil ke besar dengan sebuah bambu di atasnya yang mengikat kesemua tabung bambu tersebut.'),
(19, 4, 'Awi (Interaktif Dan Orkestra)', '134437-awi.jpg', 'Paket ini berisikan Iwung dan Angklung orkestra. Permainan Angklung orkestra membawa filosofi Angklung sebagai alat pemersatu yang dipercaya dapat menumbuhkan semangat patriotik, sehingga terkadang dapat menggugah sisi emosional penonton'),
(20, 5, 'Kawah ', '150407-perahu2.jpg', 'Kawah di gunung tangkuban perahu'),
(21, 5, 'Gunung Tangkuban Perahu', '150435-perahu3.jpg', 'Gunung tangkuban perahu tampak dari kejauhan.'),
(22, 5, 'Area Parkir', '150458-perahu4.jpg', 'Area parkir di gunung tangkuban perahu.'),
(23, 6, 'Kawah Putih', '151301-kawah3.jpg', 'Kawah Putih'),
(24, 6, 'Pintu Masuk', '151323-kawah1.jpg', 'Pintu masuk kawah putih ciwidey.'),
(25, 6, 'Wisatwan', '151354-kawah4.jpg', 'Wsatawan yang berkunjung ke kawah putih ciwidey.'),
(26, 7, 'Bung Karno', '152534-kaa7.jpg', 'Bung Karno dan para pemimpin Indonesia yang mengumpulkan negara-negara Asia-Afrika tahun 1955 terdapat di Museum Konferensi Asia Afrika di Jl. Asia Afrika No 65 Bandung.'),
(27, 7, 'Maja Dan Kursi', '152559-kaa2.jpg', 'Meja dan Kursi yang digunakan pada Konferensi Asia Afrika Tahun 1955'),
(28, 7, 'Perpustakaan', '152701-kaa3.jpg', 'Perpustakaan Konferensi Asia Afrika yang menjadi salah satu fasilitas Museum KAA.'),
(29, 7, 'Tampak Depan', '152728-kaa5.jpg', 'Museum Konferensi Asia Afrika tampak dari depan Jl. Asia Afrika Bandung'),
(30, 7, 'Ruang Konferensi', '152754-kaa1.jpg', 'Museum Konferensi Asia Afrika Bandung'),
(31, 8, 'Perlit', '154229-sribaduga2.jpg', 'Termasuk batuan ubahan (alterasi) dari gelas gunung api (obsidian) terbentuk oleh lava riolit dengan warna abu-abu kehitaman atau abu-abu kehijau-hijauan. Mempunyai sifat yang khas yaitu dapat mengembang 20-40 kali, kegunaannya untuk bahan tahan getaran atau panas serta dapat digunakan sebagai bahan bangunan yang tidak menimbulkan beban berat '),
(32, 8, 'Telepon', '154252-sribaduga5.jpg', 'Terdiri dari tiga bagian kotak sebagai badan telepon, tempat penyangga dan gagang telepon. Kotak kayu berwarna coklat berfungsi sebagai wadah perangkat receiver penerima dan transever yang pendek terdapat engkol pemutar untuk mengirim tanda ke Telepon lain. Di atasnya kotak kayu terdapat dua tiang sejajar dilengkapi dudukan menyerupai tanduk kerbau yang bisa turun naik, bila ditekan untuk meletakan gagang Telepon. '),
(33, 8, 'Gintiran', '154311-sribaduga6.jpg', 'Gintiran adalah penggilingan padi bukan mekanik untuk melepaskan bulir padi dari kulitnya. Alat pengelupas kulit padi merupakan perkembangan dari alat tumbuk lesung dan alu. Gintiran terdiri dari tong/corong dan bak. Tong atau corong merupakan tempat gabah yang digiling berupa tabun silindrik mencuat ke atas tepat berada di bagian bak.'),
(34, 8, 'Arca Siwa', '154402-sribaduga3.jpg', 'Arca ini merupakan temuan dari pulau panaitan Kabupaten Pandeglang, terbuat dari batu andesit yang permukaannya kurang halus, bentuk pahatannya sederhana, penggambarannya berkesan kaku dan statis. Seluruh badan arca dipahatkan langsung pada sandaran (prabamandala). Kepala memakai mahkota kuncup bunga, mengenakan subang teratai, gelang dan kelat bahu, kedua tangannya memegang bunga padma, upawita berbentuk ular diselendangkan di badan.'),
(35, 8, 'Kereta Kencana Paksinagaliman', '154420-sribaduga4.jpg', 'Merupakan Kereta Kencana Kesultanan Cirebon, bentuk kereta memadukan 3 unsur binatang yakni: Paksi = Burung, Naga = Ular, dan Liman = Gajah. Badan kereta sebagai tempat duduk penunggangnya berbentuk badan gajah. Sisi kiri dan kanannya dihiasi sayap burung garuda, dibagian ekor, dan leher, naga sedangkan profil wajah mencerminkan naga dan gajah. Pada leher tertera angka tahun dalam huruf Jawa 1530 Saka ( 1608 M ).'),
(36, 9, 'Petugas Pos', '161807-pos5.jpg', 'Diorama petugas pos di dalam Museum Pos Indonesia'),
(37, 9, 'Pintu Masuk Pos', '161833-pos1.jpg', 'Pintu masuk menuju Museum Pos Indonesia'),
(38, 9, 'Perangko Bung Karno', '161852-pos3.jpg', 'Perangko edisi Bung Karno sebagai penghormatan untuk sang Proklamator'),
(39, 9, 'Interior Pos', '161922-pos2.jpg', 'Salah satu pemandangan interior Museum Pos Indonesia'),
(40, 9, 'Perangko Luar Negeri', '161937-pos7.jpg', 'Koleksi berbagai macam perangko luar negeri'),
(41, 10, 'Tirex', '164812-geologi7.jpg', 'Replika kerangka T-Rex di ruang sejarah alam museum geologi Bandung'),
(42, 10, 'Mamalia', '164832-geologi8.jpg', 'Lokasi Fosil-fosil Mamalia Purba di Museum Geologi Bandung. Gajah yang hidup sekitar 1 hingga 1,2 juta tahun lalu, dengan ukuran relatif besar dan gadingnya melengkung. Ada dua subspesies gajah ini yaitu florensis dan martin. Martin berasal dari Jawa dan florensis dari Flores. Subsepsies Martin ditemukan di Cisaat, Jawa Barat.'),
(43, 10, 'Kerbau', '165002-geologi10.jpg', 'Kerbau purba (Bubalus palaeokerbau hidup pada jaman tersier 6,5 juta-1,5 juta tahun yang lalu), ditemukan di pulau jawa 1891. Diduga spesies asli indonesia. Berat mencapai 1,2 ton, panjang 3m, dengan ekor 1m, panjang tanduknya 2m. '),
(44, 10, 'Kuda Nil', '165011-geologi3.jpg', 'Sebuah rekonstruksi kerangka fosil Kuda Nil primitif di Museum Geologi yang berukuran lebih kecil dari kerbau (Hexaprotodon simplex), yaitu binatang migran dari Asia pada jaman Pleistosen (1.808.000 hingga 11.500 tahun yang lalu), selain Mastodon (Sinomastodon bumiayuensis, sejenis gajah primitif), serta Kura-kura raksasa (Megalochelys sp). Fosil ketiga binatang purba itu ditemukan di Satir, Bumiayu, Jawa Tengah.'),
(45, 10, 'Python', '164857-geologi5.jpg', 'Fosil ular Phython reticulatus, yang berusia 30.000-40.000 tahub. Pada punggungnya terdapat lingkaran besar seperti jala berwarna hitam.'),
(46, 11, 'Backside Gedung Sate', '165540-sate2.jpg', 'Gedung sate bagian belakang.'),
(47, 11, 'Interior Dalam', '165731-sate5.jpg', 'Salah satu ruangan aula di dalam Gedung Sate Bandung.'),
(48, 11, '1950', '165740-sate3.jpg', 'Suasana Gedung Sate pada Tahun 1950 '),
(49, 11, '1920-1928', '165751-sate4.jpg', 'Suasana Gedung Sate Bandung pada tahun 1920-1928.'),
(50, 12, 'Menara Kembar', '170354-masjid3.jpg', 'Menara kembar yang mengapit masjid'),
(51, 12, 'Atas Menara', '170403-masjid2.jpg', 'Hiruk pikuk kota Bandung dilihat dari atas menara.'),
(52, 12, 'Bagian Dalam', '170413-masjid4.jpg', 'Bagian Dalam Masjid Raya Bandung.'),
(53, 12, '1929', '170424-masjid5.jpg', 'Masjid Raya Agung Bandung pada tahun 1929 dengan gaya corak khas sunda.'),
(54, 13, 'Bagian Dalam Gedung', '170927-landmaerk3.jpg', 'Suasana bagian dalam gedung landmark braga.'),
(55, 13, 'Tempo Dulu', '170937-landmaerk2.jpg', 'Landmark braga tempo dulu.'),
(56, 14, 'Truetype Suply', '115441-rsch2.jpg', 'Truetype Suply'),
(57, 14, 'Truetype', '115451-rsch3.jpg', 'Truetype '),
(58, 14, 'ER#2', '115505-rsch5.jpg', 'RSCH sultan agung'),
(59, 14, 'RSCH Label', '115519-rsch6.jpg', 'RSCH Label'),
(60, 15, 'Artist Series', '135116-cosmic4.jpg', 'Artist Series'),
(61, 15, 'Kaka Dan David', '135125-cosmic3.jpg', 'Kaka dan David'),
(62, 15, 'Cosmic', '135133-cosmic2.jpg', 'Cosmic'),
(63, 15, 'Finger Board', '135144-cosmic6.jpg', 'Finger Board'),
(64, 15, 'Cosmic Product', '135154-cosmic5.jpg', 'Cosmic Product'),
(65, 16, 'Evil', '141508-evil2.jpg', 'Evil'),
(66, 16, 'Evil Vespa', '141517-evil1.jpg', 'Evil Vespa'),
(67, 16, 'Evil Packaging', '141529-evil6.jpg', 'Evil Packaging'),
(68, 17, 'Store', '162134-wadezig9.jpg', 'Store'),
(69, 17, 'Elefun Crowds', '162515-wadezig1.jpg', 'Wadezig Elefun Crowds'),
(70, 17, 'Woods X Concrete', '162606-wadezig2.jpg', 'Wadezig Woods X Concrete'),
(71, 17, 'Play Fool', '162657-wadezig6.jpg', 'Wadezig Play Fool'),
(72, 17, 'May Morable', '162743-wadezig7.jpg', 'Wadezig May Morable'),
(73, 18, 'Shop', '164041-screamous.jpg', 'Screamous shop house'),
(74, 18, 'Screamous ', '164123-screamous1.jpg', 'Screamous logo'),
(75, 18, 'SCRMS', '164214-screamous7.jpg', 'SCRMS woods'),
(76, 18, 'South Africa', '164321-screamous4.jpg', 'Screamous South Africa'),
(77, 18, 'Spring/summer', '164420-screamous6.jpg', 'Screamous Spring/summer'),
(78, 18, 'Trademark', '164541-screamous5.jpg', 'Screamous Trademark'),
(79, 19, 'Unkl347', '170500-unkl2.jpg', 'unkl347'),
(80, 19, 'Unkl347-1', '170613-unkl3.jpg', 'unkl347-1'),
(81, 19, 'Unkl347-2', '170642-unkl1.jpg', 'unkl347-2'),
(82, 19, 'Unkl347-3', '170705-unkl2.jpg', 'unkl347-3'),
(83, 20, 'Kick-1', '014004-kick2.jpg', 'Kick-1'),
(84, 20, 'Kick-2', '014027-kick1.jpg', 'Kick-2'),
(85, 20, 'Kick-3', '014049-kick2.jpg', 'Kick-3'),
(86, 20, 'Kick-4', '014153-kick1.jpg', 'Kick-4'),
(87, 21, 'Macbeth Footwear', '015218-macbeth3.jpg', 'Macbeth Footwear'),
(88, 21, 'Concept Store Bandung', '015258-macbeth4.jpg', 'Macbeth Concept Store Bandung'),
(89, 21, 'Footwear ', '015346-macbeth2.jpg', 'Macbeth Footwear'),
(90, 21, 'Macbeth-1', '015414-macbeth5.jpg', 'Macbeth-1'),
(91, 21, 'Modern Classics', '015508-macbeth7.jpg', 'Macbeth Modern Classics'),
(92, 21, 'Skateboards', '015537-macbeth8.jpg', 'Macbeth Skateboards'),
(93, 22, 'Mode-1', '020302-mode2.jpg', 'Mode-1'),
(94, 22, 'Mode-2', '020331-mode1.jpg', 'Mode-2'),
(95, 23, 'Heritage-1', '020618-heritage2.jpg', 'Heritage-1'),
(96, 23, 'Heritage-2', '020640-heritage1.jpg', 'Heritage-2'),
(97, 24, 'Secret-1', '021050-secret-2.jpg', 'Secret-1'),
(98, 24, 'Secret-2', '021109-secret-1.jpg', 'Secret-2'),
(99, 25, 'Sugar-1', '021545-sugar1.jpg', 'Sugar-1'),
(100, 25, 'Sugar-2', '021637-sugar2.jpg', 'Sugar-2'),
(101, 26, 'Shafira-1', '021908-shfira1.jpg', 'Shafira-2'),
(102, 26, 'Shafira-2', '021932-shfira2.jpg', 'Shafira-2'),
(103, 26, 'Shafira-3', '022703-shfira3.jpg', 'Shafira-3'),
(104, 27, 'Interior TSM', '023130-tsm2.jpg', 'Interior  TSM'),
(105, 27, 'Kuliner TSM', '023209-tsm3.jpg', 'Kuliner TSM'),
(106, 27, 'Lift TSM', '023237-tsm4.jpg', 'Lift TSM'),
(107, 28, 'Accessories', '024223-pvj4.jpg', 'PVJ Accessories'),
(108, 28, 'Pedagang', '024300-pvj3.jpg', 'Pedagang PVJ'),
(109, 28, 'Interior PVJ', '024326-pvj2.jpg', 'Interior PVJ'),
(110, 29, 'Bagian Luar', '024922-ciwalk1.jpg', 'Bagian luar Ciwalk'),
(111, 29, 'Embassy', '024956-ciwalk2.jpg', 'Embassy ciwalk'),
(112, 29, 'Bagian Samping', '025038-ciwalk3.jpg', 'Bagian samping ciwalk'),
(113, 29, 'Bagian Dalam Ciwalk', '025105-ciwalk5.jpg', 'Bagian Dalam Ciwalk'),
(114, 30, 'BIP-1', '025517-bip2.jpg', 'BIP-1'),
(115, 30, 'BIP-2', '025540-bip1.jpg', 'BIP-2'),
(116, 30, 'BIP-3', '025602-bip2.jpg', 'BIP-3'),
(117, 31, 'Logo', '031102-old2.jpg', 'Logo Oldway'),
(118, 31, 'Meja Makan', '031134-old3.jpg', 'Meja makan oldway'),
(119, 31, 'Meja Makan 1', '031214-old4.jpg', 'Meja makan 1 oldway'),
(120, 31, 'Bagian Dalam Oldway', '031252-old5.jpg', 'Bagian Dalam Oldway'),
(121, 32, 'Tampak Atas Atmosphere', '031923-atmosphere.jpg', 'Tampak Atas Atmosphere'),
(122, 32, 'Tampak Depan Atmosphere', '032007-atmosphere3.jpg', 'Tampak Depan Atmosphere'),
(123, 32, 'Kolam Atmosphere', '032036-atmosphere4.jpg', 'Kolam Atmosphere'),
(124, 32, 'Outdoor Atmosphere', '032116-atmosphere5.jpg', 'Outdoor Atmosphere'),
(125, 32, 'Indoor Atmosphere', '032157-atmosphere6.jpg', 'Indoor Atmosphere'),
(126, 32, 'Indoor Atmosphere 1', '032227-atmosphere7.jpg', 'Indoor Atmosphere 1'),
(127, 33, 'Outdoor Stone Cafe', '074503-stone2.jpg', 'Suasana makan malam di bagian luar stone cafe sambil menikmati pemandangan'),
(128, 33, 'Tangga Stone Cafe', '074454-stone3.jpg', 'Tangga menuju ke lantai atas stone cafe terlihat sangat mewah dan indah'),
(129, 33, 'Tempat Duduk', '074444-stone4.jpg', 'Posisi tempat duduk yang ada di stone cafe terlihat rapih dan bersih dan sangat nyaman.'),
(130, 33, 'Desert', '074434-stone5.jpg', 'Salah satu menu makanan desert yang ada di stone cafe dengan harga yang cukup terjangkau.'),
(131, 34, 'Tampak Depan Bober Cafe', '075224-bober2.jpg', 'Ini adalah tampak depan bober cafe yang ada di jalan re martadinatabandung'),
(132, 34, 'Ayam Kentang Goreng', '075531-bober3.jpg', 'Salah satu menu makanan yang ada di bober yaitu ayam kentang goreng spesial'),
(133, 34, 'Interior Dalam Bober', '075717-bober4.jpg', 'Ini adalah suasana interior dalam bober cafe yang sungguh nyaman '),
(134, 34, 'Ayam Spicy', '075809-bober5.jpg', 'Menu makanan bober cafe ayam spicy yang extra pedas'),
(135, 35, 'Pintu Masuk Starbucks', '080831-starbucks7.jpg', 'Pintu masuk untuk masuk ke Starbucks cafe'),
(136, 35, 'Mocca Float', '080937-starbucks8.jpg', 'Minuman segar mocca float yang disajikan secara dingin membuat rasa dahaga hilang'),
(137, 35, 'Sandwitch', '081036-starbucks5.jpg', 'Menu sandwitch yang ada di sturbuck sangan cocok bagi anda yang akan sarapan pagi'),
(138, 35, 'Coffee Late', '081218-starbucks4.jpg', 'Coffee Late menu favorite di starbucks cafe dengan tampilan yang sangat menarik dan aromanya yang khas.'),
(139, 43, 'Aneka Kue', '081847-kartikasari2.jpg', 'Banyak sekali aneka kueyang di jual disini dengan harga yang sangat terjangkau'),
(140, 43, 'Tampak Depan Kartika Sari', '081930-kartikasari3.jpg', 'Ini adalah tampak depan kartika sari'),
(141, 43, 'Packaging', '082022-kartikasari4.jpg', 'Packaging kartika sari yang sangat simple'),
(142, 43, 'Office Store', '082128-kartikasari5.jpg', 'Office store kartika sari yang sangay nyaman'),
(143, 44, 'Kue Basah', '082715-bread5.jpg', 'Aneka kue basah yang enak dan murah dijajakan di bakery bread talk'),
(144, 44, 'Kue Bread Talk', '082821-bread4.jpg', 'Tidak hanya roti yang di jual yapi kue untuk pesta juga ada disini'),
(145, 44, 'Kue Imut', '082928-bread6.jpg', 'Aneka kue imut yang manis dan lucu kini hadir dengan harga murah'),
(146, 44, 'Strawberry Cake', '083057-bread3.jpg', 'Kue strawberry berlapis yang sangat enak kini hadir dalam berbagai ukuran '),
(147, 45, 'Menu', '091132-harvest2.jpg', 'Menu makanan minuman yang ada di harvest '),
(148, 45, 'Kue Nikahan', '092227-harvest4.jpg', 'Ini adalah contoh kue untuk pesta pernikahan'),
(149, 45, 'Ruang Tunggu', '092525-harvest7.jpg', 'Ruang tunggu di harvest yang sangat nyaman indah dan bersih'),
(150, 45, 'Aneka Kue Harvest', '092731-harvest6.jpg', 'Ini adalah aneka kue yang ada di harvest'),
(151, 46, 'Roti Boy 1', '095358-boy2.jpg', 'Roti Boy 1'),
(152, 46, 'Roti Boy 2', '095427-boy1.jpg', 'Roti boy 2'),
(153, 46, 'Roti Boy 3', '095505-boy2.jpg', 'Roti Boy 3'),
(154, 46, 'Roti Boy 4', '095559-boy1.jpg', 'Roti boy 4'),
(155, 36, 'BCN', '153155-bcn2.jpg', 'suasana saat malam di braga culinary night sangat ramai dan penuh sekali'),
(156, 36, 'Sosis Bakar BCN', '153422-bcn4.jpg', 'Pedagang penjual sosis bakar di BCN. Sosis bakar sangat laku untuk di jual di BCN karena ini jajanan favorit para pengunjung.'),
(157, 36, 'Jumpa Pers', '153700-bcn5.jpg', 'Jumpa pers Bapak Ridwan Kamil pada acara BCN sebelum acara dimulai. Antusias masyarakat sangat terasa sekali ketika ada bapak walikota'),
(158, 36, 'Mie Baso', '153956-bcn7.jpg', 'Jajanan mie baso yang ada di wisata malam BCN, masyarakat yang  berkunjung kesana sangat menikmati jajanan yang di jajakan BCN.'),
(159, 37, 'Pintu Masuk PCN', '155422-pcn2.jpg', 'Suasana di pintu masuk PCN sudah terlihat ramai oleh pengunjung yang datang.'),
(160, 37, 'Sambutan Walikota', '155534-pcn3.jpg', 'Ridwan Kamil selaku walikota Bandung memberikan sambutan dibukanya PCN pada malam itu. Disambut meriah oleh warga.'),
(161, 37, 'Sosis Bakar PCN', '155651-pcn4.jpg', 'Jajanan sosis bakar yang ada di PCN'),
(162, 37, 'Tema Bambu', '155854-pcn1.jpg', 'PCN malam itu bertema kampung bambu yang ornamennya di hisi oleh bambu-bambu'),
(163, 38, 'Sosis Bakar CCN', '161037-ccn2.jpg', 'Pedagang sosis bakar di wisata kuliner malam CCN Bandung'),
(164, 38, 'Rampak Kendang', '161134-ccn3.jpg', 'Hiburan rampak kendang di acara CCN yang sungguh meriah'),
(165, 38, 'Suasana Malam CCN', '161243-ccn4.jpg', 'Ini adalah suasana malam saat CCN dilaksanakan'),
(166, 38, 'Kue Basah CCN', '161359-ccn5.jpg', 'Aneka kue basahdi jual saat acara sudah dimulai di CCN'),
(167, 39, 'Tempat Makan ', '162051-kalong1.jpg', 'Ini adalah suasana pembeli sedang menyantap makanan nasi kalong'),
(168, 39, 'Nasi Kalong', '162206-kalong5.jpg', 'Nasi kalong dengan beras ungu enak dan gurih. Menu spesial nasi kalong'),
(169, 39, 'Prasmanan', '162412-kalong4.jpg', 'Disini juga tersedia nasi dan lauk pauk prasmanan yang murah mriah dan enak-enak'),
(170, 39, 'Owner Nasi Kalong', '162536-kalong3.jpg', 'Ini adalah foto owner nasi kalong yang mendirikan nasi kalong ini'),
(171, 40, 'Sandwitch Madtari', '163608-madtari2.jpg', 'Ini adalah contoh menu makanan sandwitch tambah keju diatasnya makin enak'),
(172, 40, 'Pintu Masuk CCN', '163710-madtari3.jpg', 'Ini adalah pintu masuk menuju madtari'),
(173, 40, 'Pisang Keju', '163842-madtari4.jpg', 'Pisang keju dengan keju di atasnya sangat enak sekali'),
(174, 40, 'Indomie + Keju', '164054-madtari5.jpg', 'Tidak hanya kue saja tetapi ada juga jajanan indomie keju dengan porsi keju di atasnya'),
(175, 40, 'Harga', '164259-madtari6.jpg', 'Beberapa harga menu yang ada di madtari semuanya cukup terjangkau'),
(176, 41, 'Makanan Khas Sunda', '232046-cmar1.jpg', 'Beraneka macam makanan khas sunda yang terdapat di warung nasi C''mar yang sangat murah'),
(177, 41, 'Tampak Luar', '232255-cmar3.jpg', 'Suasana di luar warung yang sungguh ramai ketika warung C''mar dibuka'),
(178, 41, 'Kasir', '232340-cmar4.jpg', 'Tempat bayar di warung C''mar'),
(179, 41, 'Sop Ayam', '232445-cmar5.jpg', 'Sop ayam khas warung C''mar yang sungguh enak sekali jika di santap malam hari'),
(180, 42, 'Saus Kacang', '233236-riri2.jpg', 'Batagor riri tersedia batagor dengan saus kacang yag manteuuup pisan'),
(181, 42, 'Saus Sambal', '233333-riri3.jpg', 'Batagor riri kini tersedia batagor dengan saus sambal yang pedasnya nendang abiiiiis'),
(182, 42, 'Batagor Riri', '233418-riri1.jpg', 'Batagor riri batagor favorit orang bandung'),
(183, 42, 'Batagor 1 Porsi', '233936-riri2.jpg', 'Batagor 1 porsi dengan harga yang murah dan terjangkau'),
(184, 87, 'Free Wifi', '042857-13918436801609096569.jpg', 'Free Wifi'),
(185, 87, 'Skate Park', '042937-IMG_9326.JPG', 'Skate park'),
(186, 88, 'Taman Lansia 1', '043503-TAMAN-LANSIA.jpg', 'Taman Lansia 1'),
(187, 88, 'Taman Lansia 2', '043539-baksil_blog.jpg', 'Taman Lansia 2'),
(188, 89, 'Taman Ganesha 1', '043615-69_big.jpg', 'Taman Ganesha 1'),
(189, 89, 'Taman Ganesha 2', '043642-Image2202-e1281341489305.jpg', 'Taman Ganesha 2'),
(190, 90, 'Taman Musik 1', '043742-m-_140302213651-759.jpg', 'Taman Musik 1'),
(191, 90, 'Taman Musik 2', '043843-IMG_0580-Copy.jpg', 'Taman Musik 2'),
(192, 83, 'Paxi', '044011-show_resize_image.php.jpg', 'Paxi'),
(193, 83, 'Paxi 1', '044038-IMG_786(947)3.JPG', 'Paxi 1'),
(194, 84, 'Headcore 1', '044122-Profile Pict.jpg', 'Headcore 1'),
(195, 84, 'Headcore 2', '044153-Showroom1.jpg', 'Headcore 2'),
(196, 85, 'Barber Pop 1', '044246-BpgROl8CYAE26t7.jpg large.jpg', 'Barber pop 1'),
(197, 86, 'RNR', '044403-Lanang-VIP-SCBD-Barbershop-pic2.jpg', 'RNR'),
(198, 80, 'Vizta 1', '044452-front desk at Inul Vista Sarinah.jpg', 'vizta 1'),
(199, 79, 'Nav', '044617-img_3693.jpg', 'Nav'),
(200, 81, 'Neo', '044740-Alamat Tempat Karaoke di Bandung.jpg', 'Neo'),
(201, 82, 'Diva', '044819-medium.jpg', 'Diva'),
(202, 71, 'TVRI', '044952-gedung.png', 'TVRI'),
(203, 72, 'STV', '045025-sp-l4-d_1.img_assist_custom-560x448.jpg', 'STV'),
(204, 72, 'PJTV', '045058-DSC_0098.JPG', 'PJTV'),
(205, 74, 'IMTV', '045134-Copy-of-IMG_1451.jpg', 'IMTV'),
(206, 75, 'Ardan', '045239-marcel_chandrawinata-20140227-006-agus.jpg', 'Ardan'),
(207, 76, '99ers', '045320-Bep8ny1CEAEcZE1.jpg', '99ers'),
(208, 77, 'Oz', '045354-hqdefault.jpg', 'Oz'),
(209, 78, 'Prambors', '045447-besarfoto-semarang.jpg', 'Prambors'),
(210, 91, 'Foto Kelas', '010725-004129A 8R.jpg', 'Sesi foto kelas'),
(211, 91, 'Pameran ', '010811-300505_247972105261113_1187841203_n.jpg', 'Pameran foto'),
(212, 91, 'Tampak Dalam', '010859-600627_378696338855355_1977882498_n.jpg', 'Suasana di dalam jonas photo'),
(213, 91, 'Tampak Luar Jonas', '010944-Bandung_fotografi_JonasPhoto_portrait03.jpg', 'Tampilan luar studio jonas'),
(214, 92, 'Wisuda', '011053-106598 eg (16).jpg', 'Sesi foto wisuda'),
(215, 92, 'Tampak Dalam Papyrus', '011146-DSC_1446_(Copy).JPG', 'Design interior papyrus foto'),
(216, 92, 'Studio Indoor', '011231-papyrus-indoor_studio.jpg', 'Studio indoor papyrus'),
(217, 92, 'Tampak Luar Papyrus', '011311-papyrus.jpg', 'Suasana di luar papyrus foto'),
(218, 93, 'Booth M Photo', '011430-73909_10151157280174481_1502320551_n.jpg', 'ini adalah booth dari m photo studio'),
(219, 93, 'Photo Box', '011511-1934480_135564919480_117631_n.jpg', 'Photo box di m photo studio'),
(220, 93, 'Promo', '011547-BkQ5lJ2CMAElWdr.jpg large.jpg', 'Beberapa promo yang ditawarkan'),
(221, 94, 'Foto Studio Seruni', '012041-10172801_759981747366739_7521502575519132911_n.jpg', 'Foto studio seruni'),
(222, 94, 'Sesi Wisuda', '011759-1558391_741740189190895_430437307_n.jpg', 'Sesi wisuda di seruni foto'),
(223, 94, 'Foto Kelas Seruni', '011853-10299183_762988307066083_8852371182781316095_n.jpg', 'Sesi foto kelas di seruni foto'),
(224, 94, 'Foto Tampak Luar Seruni', '012125-31_big.jpg', 'Foto Tampak luar Seruni');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_gambar_socmed`
--

CREATE TABLE IF NOT EXISTS `t_gambar_socmed` (
  `id_gambar_socmed` int(20) NOT NULL AUTO_INCREMENT,
  `nama_gambar_socmed` varchar(50) NOT NULL,
  `gambar` varchar(250) NOT NULL,
  PRIMARY KEY (`id_gambar_socmed`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data untuk tabel `t_gambar_socmed`
--

INSERT INTO `t_gambar_socmed` (`id_gambar_socmed`, `nama_gambar_socmed`, `gambar`) VALUES
(1, 'Facebook', 'facebook.png'),
(2, 'Twitter', 'twitter.png'),
(3, 'Instagram', 'instagram.png'),
(4, 'Path ', 'path.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_informasi`
--

CREATE TABLE IF NOT EXISTS `t_informasi` (
  `id_informasi` int(20) NOT NULL AUTO_INCREMENT,
  `id_contoh` int(20) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `no_tlp` varchar(20) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `website` varchar(50) DEFAULT NULL,
  `facebook` varchar(50) DEFAULT NULL,
  `twitter` varchar(50) DEFAULT NULL,
  `gambar` varchar(250) NOT NULL,
  `keterangan` text NOT NULL,
  `judul_info_harga` varchar(50) NOT NULL,
  `latlong` varchar(100) NOT NULL,
  PRIMARY KEY (`id_informasi`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=95 ;

--
-- Dumping data untuk tabel `t_informasi`
--

INSERT INTO `t_informasi` (`id_informasi`, `id_contoh`, `nama`, `alamat`, `no_tlp`, `email`, `website`, `facebook`, `twitter`, `gambar`, `keterangan`, `judul_info_harga`, `latlong`) VALUES
(1, 1, 'De Ranch Lembang', 'Jln. Maribaya No. 17 Lembang Bandung', '0222785865', 'info@deranchlembang.com ', 'www.deranchlembang.com', 'DeRanch Lembang', '@deranchlembang', '123927-deranch1.jpg', 'Berwisata ke de-ranch lembang dapat memberikan anda nuansa baru untuk wisata alam yang menyajikan nuansa peternakan dan kuda seperti pada jaman cowboy.', 'Wahana Permainan', '-6.815482,107.626471'),
(2, 1, 'Trans Studio Bandung', 'Jl. Gatot Subroto 289, Bandung 40273', '02291099999', 'tidak ada', 'www.transstudiobandung.com', 'Trans Studio Bandung', '@transstudiobdng', '134854-tsb1.jpg', 'Trans Studio Bandung merupakan sebuah taman bermain yang berada di dalam ruangan dan terbesar di dunia yang dikelola oleh Trans Corp\r\n', 'Tiket Masuk', '-6.9260992,107.6366032'),
(3, 1, 'Kampung Gajah Wonderland ', 'Jl. Sersan bajuri KM 3.8, Lembang Bandung, Jawa Barat 40559', '02288884011', 'info@kampunggajah.com atau reservation@kampunggaja', 'kampunggajah.com', 'Kampung Gajah Wonderland', '@kampunggajah', '140042-kg1.jpg', 'Salah Satu Tempat Wisata Di Bandung Yang Dapat Anda Jelajahi Dan Terletak Di Bagian Utara Bandung. Kawasan Bandung Utara Terkenal Memiliki Keindahan Alam Yang Masih Asri, Selain Itu Kawasan Bandung Utara Juga Mempunyai Banyak Tempat Wisata Yang Dapat Anda Jadikan Destinasi Yang Tepat Untuk Liburan Ke Bandung. Kampung Gajah Wonderland Hanyalah Salah Satu Wisata Bandung Yang Menarik Untuk Dikunjungi.\r\nWisata Kampung Gajah Menggunakan Konsep One Stop Recreation Untuk Anak-anak Dan Orang Dewasa. Dengan Harga Tiket Masuknya Rp 25 Ribu Dan Rp 15 Ribu Untuk Sepeda Motor, Dan Tiket Terusan Rp 150.000 Untuk Hari-hari Biasa Dan Rp 250.000 Pada Waktu Akhir Pekan, Wisatawan Bisa Menikmati Berbagai Macam Fasilitas Dan Juga Wahana Yang Berada Di Kampung Gajah.', 'Wahana Permainan', '-6.829529, 107.595023'),
(4, 1, 'Saung Angklung Udjo', 'Jl. Padasuka no 118 Jawa Barat 40192', '0227271714', 'info@angklung-udjo.co.id', 'www.angklung-udjo.co.id', 'Saung Angklung Udjo', '@angklungudjo', '144946-udjo1.jpg', 'Merupakan Sebuah Tempat Pertunjukan, Dan Pusat Kerajinan Tangan Yang Terbuat Dari Bambu, Serta Workshop Instrumen Musik Yang Berasal Dari Bambu. Selain Itu, SAU Memiliki Tujuan Sebagai Sebuah Laboratorium Pendidikan Dan Menjadi Pusat Belajar Untuk Memelihara Kebudayaan Khas Sunda, Khususnya Angklung.\r\n\r\nTempat Ini Didirikan Oleh Udjo Ngalagena Dan Istrinya Uum Sumiati Pada Tahun 1966, Dengan Maksud Dan Tujuan Untuk Melestarikan Serta Memelihara Seni Dan Kebudayaan Tradisional Khas Sunda. \r\nSuasana Yang Ada Di Tempat Ini Memiliki Udara Yang Segar Dan Dikelilingi Oleh Banyak Pohon-pohon Bambu, Kerajinan Yang Terbuat Dari Bambu Dan Interior Bambu Sampai Dengan Alat Musik Yang Terbuat Dari Bambu.\r\n**Buka Setiap Hari Dari Jam 08.00 WIB Sampai Jam 18.30 WIB. Untuk Kunjungan Perorangan Mulai Dari Jam 15.30 WIB. ', 'Tiket Masuk', '-6.896409,107.655255'),
(5, 1, 'Gunug Tangkuban Perahu', 'Jl. Raya Tangkuban Parahu No. 147 Lembang Bandung Utara', '085722287114', 'Maaf tidak tersedia', 'gunungtangkubanperahu.blogspot.com', 'Tangkuban Perahu', 'Maaf tidak tersedia', '150341-perahu1.jpg', 'Salah Satu Gunung Yang Menjadi Objek Wisata Alam Andalan Di Bandung Dan Termasuk Dalam Kategori Wisata Bandung Yang Banyak Diminati Para Wisatawan Baik Itu Lokal Maupun Asing Ini Juga Tidak Kalah Menariknya Dari Gunung Patuha Kawah Putih Ciwidey.\r\nBentuk Dari Gunung Tangkuban Perahu Adalah Stratovulcano Dengan Pusat Erupsi Yang Berpindah Dari Timur Menuju Ke Barat. Jenis Bebatuan Yang Dikeluarkan Dari Letusan-letusan Kebanyakan Adalah Lava Dan Sulfur, Dan Mineral Yang Dikeluarkan Ialah Sulfur Belerang, Sedangkan Mineral Yang Dikeluarkan Ketika Gunung Sudah Mulai Tidak Aktif Adalah Uap Belerang.Keberadaan Gunung Ini Tidak Lepas Dari Legenda Sangkuriang. Wisata Alam Ini Sudah Cukup Terkenal, Di Sini Pengunjung Dapat Melihat Kawah Dari Atas Tebing. Pengunjung Obyek Wisata Ini Berasal Dari Domestik Maupun Mancanegara.**Tempat Wisata Alam Tangkuban Perahu Ini Buka Mulai Pukul 08.00 -18.00 WIB. ', 'Tiket Masuk', '-6.7591327,107.6149346'),
(6, 1, 'Kawah Putih Bandung', 'Jl. Raya Soreang Ciwidey 25 km Kabupaten Bandung, Jawa Barat', '085798132466', 'info@kawah-putih.com', 'www.kawah-putih.com', 'kawah putih', '@kawahputih', '151231-kawah2.jpg', 'Tempat Wisata Kawah Putih Ciwidey Bandung Merupakan Sebuah Objek Wisata Bandung Yang Menjadi Salah Satu Tempat Terfavorit Dan Sudah Terkenal Di Kalangan Para Pelancong Yang Bertujuan Wisata Ke Bandung. Sebuah Objek Wisata Yang Mempunyai Keindahan Alam Yang Sangat Mempesona Dan Tidak Mudah Untuk Di Temukan Di Daerah Lain. Keindahan Dan Pesnona Alam Yang Dimiliki Kawah Putih Bandung Mampu Menarik Para Wisatawan Yang Brasal Dari Luar Bandung Sampai Touris Mancanegara. **Buka Dari Jam 7 Pagi Sampai 5 Sore.', 'Tiket Masuk', '-7.166303,107.402198'),
(7, 2, 'Museum Konferensi Asia Afrika', 'Jl. Asia Afrika 65 Bandung', '0224233564', 'asianafrican.museum@gmail.com', 'www.asianafricanmuseum.org', 'Museum Konferensi Asia Afrika', '@AsiAfricaMuseum', '152338-kaa6.jpg', 'Museum ini berkaitan erat dengan Konferensi Asia Afrika yang diselenggarakan di Bandung. Salah satu tujuan didirikan museum ini adalah untuk melestarikan semangat konferensi yang telah berhasil memperbesar volume kerja sama antar bangsa-bangsa di Asia Afrika.', 'Tiket Masuk', '-6.920963,107.608327'),
(8, 2, 'Museum Sribaduga', 'Jl. B.K.R. No. 185 Bandung 40243', '0225210976', 'admin@sribadugamuseum.com', 'www.sribadugamuseum.com', 'Museum Sribaduga Bandung', '@sribadugamuseum', '154108-sribaduga1.jpg', 'Museum ini memiliki beragam koleksi , mulai dari bidang geologika, biologika, etnografika, erkeologika, hingga historika. Museum ini tercatat memiliki 5.367 koleksi di mana sebagian besar berasal dari rumpun ilmu etnografi yang berhubungan dengan benda-benda budaya daerah.\r\nKoleksi-koleksi yang terdapat pada Museum Sri Baduga tak hanya dalam bentuk asli. Melainkan juga dilengkapi dengan miniatur, foto, replika, dan maket.\r\n', 'Tiket Masuk', '-6.93777,107.603424'),
(9, 2, 'Museum Pos', 'Jl. Cilaki Bandung 40115 Bandung', '0224206195', 'museum@posindonesia.co.id ', 'www.posindonesia.co.id ', 'posindonesia', '@posindonesia', '161714-pos8.jpg', 'Sesuai dengan namanya, Museum Pos Indonesia yang berada di kota Bandung menggambarkan sejarah perkembangan pos di Indonesia. Museum ini memamerkan perangko, foto-foto dokumentasi dan peralatan pos Indonesia dari masa ke masa. Museum Pos Indonesia juga telah dilengkapi dengan teknologi audio guide yang menerangkan benda-benda koleksi museum dalam bahasa Indonesia dan Inggris.', 'Tiket Masuk', '-6.903766,107.623164'),
(10, 2, 'Museum Geologi', 'Jl. Diponegoro 57 Bandung 40122', '022720320508', 'museumgeologi@grdc.esdm.go.id', 'www.museum.bgl.esdm.go.id', 'Museum Geologi', '@MGeologi', '164742-geologi4.jpg', 'Museum Geologi Bandung menampilkan berbagai koleksi material geologi seperti batu-batuan, mineral, dan fosil dari seluruh wilayah Indonesia. Koleksi material geologi di museum ini telah dikumpulkan sejak tahun 1850. Selain koleksi material geologi, museum ini juga memamerkan bilik-bilik informasi mengenai teori terbentuknya bumi, kondisi geologi di berbagai wilayah Indonesia, dan sejarah manusia berdasarkan teori Darwin. Museum Geologi Bandung telah berdiri sejak tahun 1928, namun sempat mengalami renovasi dan dibuka kembali pada 23 Agustus 2000', 'Tiket Masuk', '-6.902392,107.6214474'),
(11, 3, 'Gedung Sate', 'Jalan Diponegoro No. 22, Bandung, Jawa Barat, Indonesia ', '0227273209', 'webmaster@disparbud.jabarprov.go.id ', 'www.disparbud.jabarprov.go.id', 'Disparbud Provinsi Jawa Barat ', '@disparbud.jabar', '165526-sate1.jpg', 'Bagi yang sudah pernah datang ke Kota Bandung, Gedung Sate bukan yang asing lagi. Dinamakan Gedung Sate karena dibagian atas gedung memiliki ornamen menyerupai tusuk sate. Gedung ini mulai dibangun pada tahun 1920.\r\n\r\nGedung Sate bukanlah gedung biasa, tetapi merupakan gedung perkantoran pemerintah Provinsi Jawa Barat. Pada hari Minggu, halaman Gedung Sate dijadikan tempat sebagian masyarakat Bandung untuk bersantai. Seolah tahu gedung ini ramai dikunjungi warga, para pedagang pun banyak memenuhi lokasi ini.', 'Tidak Ada', '-6.902504,107.618799'),
(12, 3, 'Masjid Agung', 'jl. Asia Afrika Bandung 40251', '0224240275', 'Tidak ada', 'Tidak ada', 'Masjid Agung Bandung', 'Tidak ada', '170325-masjid1.jpg', 'Masjid yang dibangun pada tahun 1812 ini adalah masjid pertama di Bandung. Arsitektur Masjid Agung pada awalnya dirancang dalam gaya lokal (rumah panggung yang terbuat dari kayu dan atap rumbia) yang sangat sederhana. Selama sejarahnya yang hampir mencapai 200 tahun, masjid ini telah mengalami 8 kali renovasi. ', 'Tidak ada', '-6.9033101,107.642621'),
(13, 3, 'Landmark', 'Jl Braga No 129, Braga Bandung, Jawa Barat.', 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Tidak ada', '171006-landmaerk1.jpg', 'Bangunan cantik bergaya Art Deco ini pada awalnya merupakan Toko Buku dan Percetakan van Dorp yang didesain oleh C.P. Wolff Schoemaker. Konon keuntungan yang dihasilkan perusahaan ini mampu membangun 50 vila mewah pada masanya. Hiasan kala (pahatan seperti yang terdapat di candi-candi Hindu) serta kaca patrinya yang berwarna-warni merupakan ciri khas bangunan ini. Saat ini, Landmark digunakan sebagai pusat konvensi, tempat banyak pameran di Bandung berlangsung.  ', 'tidak ada', '-6.919572,107.6076721'),
(14, 4, 'RSCH', 'Jl. Buah Batu, Lengkong, Bandung, Jawa Barat 40262', '0227306697', 'info@rschtruetype.com', 'www.rschtruetype.com', 'ouvalresearch', '@ouvalresearch', '115325-rsch1.jpg', 'Distro clothing asal Bandung', 'Produk', '-6.933192,107.618948'),
(15, 4, 'Cosmic Clothes', 'Jl Trunojoyo No 23 40115 Bandung', '0227271427', 'info@cosmicclothes.net ', 'www.cosmicclothes.net ', 'cosmicclothing', '@cosmicclothes', '140815-cosmic1.jpg', 'Cosmic distro asal Bandung', 'Produk', '-6.9045375,107.6132499'),
(16, 4, 'Evil Army', 'Jl. Sultan Agung No. 5 Bandung', '0224265106', 'order@evilfact.com', 'www.evilfact.com', 'evilarmyfact', '@EvilArmyFact', '141418-evil5.jpg', 'Distro yang berasal dari Bandung', 'Produk', '-6.9048281,107.6118401'),
(17, 4, 'WADEZIG!', 'Jl. Sultan Agung No.7 Bandung', '0224265187', 'info@wadezig.com', 'www.wadezig.com', 'wadezig', '@WDZG', '162036-wadezig8.jpg', 'WADEZIG! adalah distro yang berasal dari Bandung', 'Produk', '-6.9048281,107.6118401'),
(18, 4, 'Screamous', 'Jl. Trunojoyo No. 23 Bandung 40115', '0224268116', 'info@screamous.com', 'www.screamous.com', 'screamousclothing', '@Screamous_55', '164806-screamous3.jpg', 'Screamous distro Bandung', 'Produk', '-6.9045375,107.6132499'),
(19, 4, 'Unkl347', 'Jl. Trunojoyo No. 4 Citarum Bandung Wetan Bandung Jawa Barat', '0224200515', 'info@unkl347.com', 'www.unkl347.com', '347unkl', '@unkl347', '170409-unkl1.jpg', 'UNKL347 asal Bandung', 'Produk', '-6.906003,107.612112'),
(20, 4, 'Kick Denim', 'Jl. Sultan Agung No.3C', '0817420574', 'info@kickdenim.com ', 'www.kickdenim.com', 'KickDenim', '@KICKDENIM', '013851-kick1.jpg', 'Kick denim distro Bandung', 'Produk', '-6.904721,107.611746'),
(21, 4, 'Macbeth', 'Jl. Sultan agung No 7 Bandung', '0224220419', 'info@macbeth.com', 'www.macbeth.com', 'Macbeth Concept Store Bandung', '@MacbethBandung', '015150-macbeth6.jpg', 'Macbeth distro Bandung', 'Produk', '-6.9048281,107.6118401'),
(22, 5, 'Rumah Mode', 'Jalan Setiabudi No 41f, Bandung', '0222035498', 'info@rumahmode.com', 'rumahmode.com', 'rumahmode', '@rumahmode', '020240-mode1.jpg', 'FO ini terletak di daerah Setiabudi. Pada hari libur dan akhir pekan, tempat ini sangat ramai dikunjungi para wisatawan yang hendak berbelanja. Rumah Mode merupakan salah satu factory outlet terbesar di Bandung. Disini Anda dapat menemukan banyak pilihan produk fashion yang sangat menarik. Anda tak akan kehabisan gaya jika berkunjung kesini. Berbagai trend fashon modern dan baru bisa Anda coba di tempat wisata belanja ini.', 'Produk', '-6.88222,107.599191'),
(23, 5, 'Heritage Factory Outlet', 'Jl. Riau No. 63 Bandung,  40115', '0224220545', 'customer_service@heritagefactoryoutlet.com', 'www.heritagefactoryoutlet.com/', 'Heritage', '@foheritage', '020554-heritage1.jpg', 'Fo ini merupakan salah satu tempat populer dengan pilihan produk pakaian yang trendi dan fashionable. Tempat ini sangat menarik dengan arsitektur bangunan klasik yang tampak seperti bangunan kuno Yunani. Selain itu di samping bangunan terdapat juga cafe dan tempat makan yang juga ramai dikunjungi.', 'Produk', '-6.905735,107.617113'),
(24, 5, 'The Secret Factory Outlet', 'Jl. Riau No. 47 Jl. RE. Martadinata Bandung , 40115', '0224260818', 'Tidak ada', 'Tidak ada', 'The Secret Factory Outlet', 'Tidak ada', '021031-secret-1.jpg', 'Sebuah tempat belanja yang sangat populer dan memiliki banyak pilihan produk bermerek. Factory outlet ini juga menyediakan akses WiFi gratis, sehingga Anda dapat bersantai sambil internet-an di halaman toko. Tempat ini ditata dengan baik dan dirancang dengan sentuhan arsitektur modern yang indah.', 'Produk', '-6.906361,107.61853'),
(25, 6, 'Sugar Boutique', 'Jl. Sukajadi No. 207 Bandung', '02292754657', 'Email. sugar.butik@yahoo.com', 'Tidak ada', 'Tidak ada', 'Tidak ada', '021525-sugar1.jpg', 'Sugar Boutique', 'Produk', '-6.886923,107.596474'),
(26, 6, 'Shafira', 'Jalan Rumah Sakit No. 139 Bandung, Jawa Barat 40613', '0224240275', 'cso@shafira.co.id', 'www.shafira.com', 'shafiramuslimfashion', '@ShafiraFashion', '021848-shfira2.jpg', 'Shafira muslim', 'Produk', '-6.8979856,107.599358'),
(27, 7, 'Trans Studio Mall', 'Jl. Jend. Gatot Subroto 28, Bandung, Jawa Barat 40274', '02291091020', 'bandung@transstudiomall.com', 'www.transstudiomall.com', 'TSMbandung', '@TSMbandung', '023041-tsm1.jpg', 'Dahulu bernama Bandung Super Mall, TSM kini menjelma menjadi salah satu destinasi wisata dan ikon kota Bandung. TSM kini adalah integrasi yang sempurna antara indoor theme park terbesar di Indonesia (Trans Studio Bandung), mall yang sangat ikonik dengan lebih dari 250 tenant dan sebagian besar adalah merek branded internasional dilengkapi dengan kompleks Hotel. Ada 2 Hotel di dalam komplek TSM : Trans Luxury Hotel dan Hotel Ibis. Trans Studio Mall Bandung wajib anda kunjungi ketika berkunjung ke kota Bandung.', 'Tidak ada', '-6.925011,107.636387'),
(28, 7, 'Paris Van Java Mall (PVJ)', 'Jl. Sukajadi no.131-139, Bandung, Jawa Barat 40162', '0222060800', 'info@paris-van-java.com', 'www.paris-van-java.com', 'Paris Van Java Mall', '@PVJbandung', '023656-pvj1.jpg', 'PVJ adalah mall yang keren berikutnya. Mall ini memang tidak seluas TSM, namun dari segi kelengkapan fasilitas, ambience, branded store dan keasyikan, tidak kalah dari TSM. Malah menurut pengamatan kami yang mengelola web HoteldiBandungmurah.com, PVJ lebih banyak menarik socialites dan orang-orang kaya Bandung untuk nongkrong dan hangout daripada di TSM. Terletak di Bandung Utara yang dingin dan sejuk, mall ini adalah destinasi yang tidak ingin anda lewatkan. Di jajaran depan mall ini ada deretan kafe yang benar-benar sangat asyik untuk dijadikan tempat berkumpul. Atmosfernya benar-benar perfect. Di PVJ ada jaringan bioskop Blitz Megaplex, satu-satunya di kota Bandung dan merupakan alternatif menonton film yang tepat jika anda bosan menonton di jaringan XXI. Di mall ini juga ada tempat main ice skating yang merupakan satu-satunya di Kota Bandung. Kelebihan lainnya dari PVJ adalah: mall ini nampaknya menjadi satu-satunya mall di Bandung yang mengijinkan para pet owner membawa petnya berjalan-jalan', 'Parkir', '-6.889066,107.59571'),
(29, 7, 'Cihampelas Walk (Ciwalk)', 'Jl. Cihampelas 160, Bandung, Jawa Barat 40131', '0222061122', 'info@cihampelaswalk.com', 'www.cihampelaswalk.com', 'Cihampelas Walk', '@CiwalkBandung', '024851-ciwalk4.jpg', 'Mall yang satu ini masuk dalam rekomendasi admin HoteldiBandungMurah.com karena keren abis. Memang tidak seluas dan sebesar TSM dan tenant brandednya tidak sebanyak PVJ dan TSM, namun jika anda mengunjungi Ciwalk, anda akan mengagumi ambience  tempat ini. Inilah tempat dimana anak muda Bandung terutama yang remajanya paling banyak hangout. Berlokasi di jalan Cihampelas yang merupakan sentra belanja Jins di Bandung, Ciwalk telah menjadi fenomena nongkrong anak muda Bandung yang tidak akan anda lewatkan. Banyak sekali anak-anak muda Bandung yang super modis akan anda temui di Ciwalk. Jajaran toko dan kafe yang apik, ruang terbuka yang dipenuhi pohon rimbun serta sywalk yang keren membuat anda betah berjalan-jalan di Ciwalk. Mall ini juga berada satu komplek dengan Hotel Sensa', 'Parkir', '-6.893297,107.605494'),
(30, 7, 'Bandung Indah Plaza (BIP)', 'Jl. Merdeka No. 56 Bandung', '0223456786', 'info@bip.com', 'www.bip.com', 'bipBandung', '@bipBandung', '025457-bip1.jpg', 'BIP Bandung mall yang paling tua di bandung', 'Parkir', '-6.8979856,107.599358'),
(31, 8, 'The Old Way Cafe', 'Jl. R.E. Martadinata no. 121, Jawa Barat 40114', '0227234174', 'Tidak ada', 'Tidak ada', 'The Old Way Cafe', '@TheOldwayCafe', '031024-old1.jpg', 'Old way cafe, Sebuah cafe terhitung baru di kawasan jalan riau, makanannya eropa dan indonesia , harga cukup.terjangkau namun yang membuat menarik adalah suasanan di dalam cafe yang bersih dan nyaman. Kekurangan hanya pada area parkir mobil yang kurang besar. Selamat mencoba', 'Menu', '-6.907176,107.623285'),
(32, 8, 'Atmosphere', 'Jalan Lengkong Besar 97, Bandung 40261', '0224262815', 'info@atmosphere.cafe', 'atmosphere.cafe', 'atmosphere.cafe', 'atmosphere.cafe', '031850-atmosphere1.jpg', 'Atmosphere\r\nAtmosphere adalah salah satu Cafe ternama di Bandung, yang terletak di jalan Lengkong Besar No. 97. Suasana yang disuguhkan di Cafe ini memang agak berbeda dari Cafe yang notabennya terletak di tengah kota. Hal yang menjadikan Cafe ini berbeda adalah adanya Gazebo yang di bagian belakang yang benar-benar bernuansakan Resort. Dimana selain Gazebo di bagian taman belakang ini terdapat kolam dan pepohonan yang benar-benar membuat pengunjung merasa nyaman.\r\nSunday-Friday :11.00 1m - 12.00 midnight\r\nSaturday &lt; 11,00 am - 01.00 am', 'Menu', '-6.92926,107.612983'),
(33, 8, 'The Stone Cafe', 'Gerbang Dago Resort, Dago Atas,Jawa Barat 40198', '0222500577', 'stonecafe_bandung@yahoo.com', 'www.thestonecafe.com', 'Stone Cafe Dago', '@thestonecafe', '074546-stone1.jpg', 'Bersantap di ketinggian Bukit Dago, seraya memandang Kota Bandung di bawah sana, menjadi sensasi yang ditawarkan The Stone Cafe. Kalau nasib sedang bagus, awan yang menutupi kota Bandung pun serasa berada di depan mata: meminta untuk disentuh. Memadukan gaya tradisional dan modern, The Stone Cafe menghadirkan ruang-ruang modern, gazebeo, dan aneka saung bagi para penikmat kuliner yang berdatangan.', 'Menu', '-6.865224,107.626538'),
(34, 8, 'Bober Cafe', 'Jl. R.E. Martadinata No. 123 Bandung ', '0227234295', 'info@bobercafe.com', 'www.bobercafe.com', 'bobercafe', '@BoberCafe', '075336-bober1.jpg', 'Bober cafe merupakan cafe anak muda, sebab kebayakan para pelanggannya dalah kumpulan anak muda yang nongkrong berlama-lama disini. Tetapi bukan berarti anak muda saja sih yang datang, melainkan dari berbagai kalangan. Saya sendiri cukup senang kok untuk makan ataupun sekadar jajan di bober cafe. Saat ini tempatnya semakin nyaman dan menyenangkan. Ruanganya bersih dan rapi. Dibeberapa sudut ruangan terdapat gerombolan anak muda yang ramai ngobrol sambil makan.', 'Menu', '-6.906433,107.618'),
(35, 8, 'Starbucks Cafe', 'Jl. Cihampelas No. 160, Cihampelas Walk, Jawa Barat', '0222061102', 'feedback@starbucks.co.id ', 'www.starbucks.co.id', 'StarbucksIndonesia', '@SbuxIndonesia', '080735-starbucks1.jpg', 'Starbucks menjual minuman panas dan dingin, biji kopi, salad, sandwich panas dan dingin, kue kering manis, camilan, dan barang-barang seperti gelas dan tumbler. Melalui divisi Starbucks Entertainment dan merek Hear Music, perusahaan ini juga memasarkan buku, musik, dan film. Banyak di antara produk perusahaan yang bersifat musiman atau spesifik terhadap daerah tempat kedai berdiri. Es krim dan kopi Starbucks juga dijual di toko grosir.', 'Menu', '-6.893369,107.604415'),
(36, 10, 'Braga Culinary Night', 'Jalan Braga Sumur Bandung Bandung, Jawa Barat, Indonesia', '081320115772', 'infoBCN@yahoo.com', 'housethehouse.com/bcn/', 'bragaculinary', '@bragaculinary', '153039-bcn1.jpg', 'BCN berlangsung di Jalan Braga, Kota Bandung, Sabtu (24/1/2014). Kegiatan rutin tiap Sabtu ini dimulai pukul 18.00 WIB hingga memasuki Minggu pukul 01.00 WIB.\r\n\r\nKali kedua BCN digelar di lokasi landmark Kota Bandung ini. Konsep wisata kuliner tersebut dihelat perdana pada 11 Januari lalu. Kawasan Braga panjang pun disulap menjadi ''pasar'' yang menghadirkan langsung pedagang.\r\n\r\n&quot;Sekarang warga Braga ikut berjualan,&quot; kata Wali Kota Bandung Ridwan Kamil di lokasi acara.\r\n\r\nBanyak tenan kuliner ikut bergabung dalam acara ini. Mulai dari jenis food truck , makanan kelas menengah hingga makanan mahal. Kudapan tradisional pun turut masuk daftar menu.\r\n\r\n&quot;Malam ini jenis makanannya lebih banyak. Memang masyarakat yang datang tak sebanyak pertama. Tapi yang pasti ribuan orang yang datang,&quot; ucap Emil, begitu biasa Ridwan disapa.\r\n\r\nBCN bisa menjadi daya tarik wisatawan yang sedang menghabiskan akhir pekan di Bandung. Pantauan di lokasi, ribuan orang beragam kalangan lalu lalang di area BCN. Mayoritas mereka kawula muda.\r\n\r\nDeretan meja makan disiapkan di lokasi acara. Pengunjung tampak asyik menyantap variasi menu makanan dan minuman. Sejumlah warga lainnya memanfaatkan momen tersebut sambil berfoto ria di deretan bangunan peninggalan zaman Belanda.\r\n\r\nPedagang bisa berinteraksi langsung dengan pembeli di lokasi terbuka ini. Bahkan terlihat pembeli antre memesan berbagai santapan siap saji. Gerobak pedagang berjejer di tengah lokasi kegiatan. Makanan yang dijual antara lain surabi, kacang rebus, baso tahu, sosis bakar, nasi goreng, kue.', 'Jajanan', '-6.9179019,107.6093606'),
(37, 10, 'Panyileukan Culinary Night', 'Jl Panyileukan Panyileukan Bandung, Jawa Barat 40614, Indonesia', '081312497992', 'infoPCN@yahoo.com', 'Tidak ada', 'Panyileukan Culinary Night', '@pcn_night', '155310-pcn1.jpg', 'Panyileukan Kuliner Night Bandung.pasar malam yang di adakan di setiap kecamatan di kota bandung secara bergilir setiap mlm minggu.&quot;program walikota bandung kang emil&quot; org bandung ga perlu keluar komplek utk jln2.biar orang luar bandung yang jalan2 di kota bandung.', 'Jajanan', '-6.9380487,107.7125723'),
(38, 10, 'Cibadak Culinary Night', 'Jl.Cibadak kec.Astana Anyar Bandung   ', '082218803005', 'CibadakCulinaryNight@gmail.com', 'www.cibadakculinary.wordpress.com', 'CibadakCulinaryNight', '@CibadakCulinary', '160940-ccn1.jpg', 'Nuansa Cina membalut kegiatan ''Cibadak Culinary Night'' di Bandung. Ribuan masyarakat datang bergelombang ke lokasi acara sambil memburu sajian ragam menu khas oriental dan tradisional.\r\n\r\nKonsep kuliner malam ini berlangsung di Jalan Cibadak, Kecamatan Astanaanyar, Kota Bandung, Sabtu (22/2/2014), mulai pukul 18.00 hingga pukul 24.00 WIB. Ruas jalan sepanjang 300 meter itu ditutup selama kegiatan.', 'Jajanan', '-6.921750,107.601257'),
(39, 10, 'Nasi Kalong', 'Jalan Riau No 102 Bandung', '0811205855', 'Tidak ada', 'Tidak ada', 'Nasi Kalong, Jl.Riau 102 Bandung', 'Tidak ada', '161853-kalong2.jpg', 'Nasi Kalong berwarna ungu kehitaman namun tetap enak dan pulen. Nasi ini dicampur dengan berbagai ramuan sepertu buah picung sehingga berwarna demikian. Nasi ini disebut dengan nama kalong (kelelawar), karena dinikmati oleh mereka yang lapar di malam hari. Tempat makan yang terletak di Jalan R.E. Martadinata, Cipaganti, ini buka dari jam 7 malam hingga dini hari. Kita bisa melengkapi nasi kalong dengan berbagai menu lain seperti ayam madu.\r\n\r\nItulah empat tempat makan yang sering dikunjungi orang yang kelaparan di malam hari. Tidak usah khawatir tersesat atau takut, lokasi-lokasi ini senantiasa ramai setiap harinya. Buka jam 19.00-02.00', 'Menu', '-6.909527,107.624906'),
(40, 10, 'Madtari', 'Jl. Rangga Gading No.12, Jawa Barat 40132', '0222006405', 'Tidak ada', 'Tidak ada', 'Cafe MadTari, Jln. Rangga Gading no.12', '@madtari', '163306-madtari1.jpg', 'Madtari merupakan tempat makan yang menyediakan aneka olahan mie instant, roti, dan pisang. Kita bisa menikmati kombinasi menu-menu itu dengan keju atau kornet. Cafe ini terletak di Jalan Rangga Gading, sebelah Universitas Islam Bandung. Madtari buka 24 jam dan hampir selalu ramai. Selain makanan-makanan di atas, kita bisa menikmati aneka jus dan berbagai minuman hangat.', 'Menu', '-6.902407,107.608793'),
(41, 10, 'C''Mar', 'Jl Terusan ABC no. 21, bandung', '0224240275', 'Tidak ada', 'Tidak ada', 'C''Mar', '@C''Mar', '231827-cmar2.jpg', 'C''mar kuliner malam yang ada di bandung, cocok untuk anda yang sedang mencari makanan di malamhari dan harganya cukup terjangkau', 'Menu', '-7.0144088,107.6179018'),
(42, 11, 'Batagor Riri', 'Jl. Burangrang No. 41, Burangrang Lengkong, Jawa Barat', '0227303349', 'Tidak ada', 'Tidak ada', 'batagorriri', '@batagorriri', '233150-riri1.jpg', 'Batagor ini disebut-sebut sebagai pelopor terkenalnya batagor sebagai makanan khas Bandung. Batagor ini terdiri dari dua jenis yaitu Batagor kuah dan kering. Batagor kuah terdiri dari satu batagor plus satu siomay, sementara batagor kering dibumbui dengan bumbu kacang dan kecap manis. Untuk Harga, batagor kuah &amp; kering Rp 27.000,- per porsi. Sedangkan harga batagor goreng per satuan Rp 7.000,-.s/d 8.000,-, cukup mahal memang, tapi kualitas dan cita rasa memang sesuai dengan harga yang di pasarkan. Nah Sebagai oleh-oleh, juga disediakan batagor setengah matang yang bisa bertahan selama tiga sampai empat hari di dalam kulkas. Batagor Riri juga menambah variasi makanannya dengan Bakso Malang.\r\nItulah salah satu Pusat oleh - oleh batagor paling populer di Bandung yaitu Batagor Riri. Ayo Segera beli batagor Riri oleh-oleh dari Bandung dan bawa pulang untuk keluarga dan teman anda !!\r\nSemoga informasi yang Ginzanbu uraikan semoga bermanfaat dan dapat menambah referensi anda ketika berwisata di Kota Bandung.', 'Menu', '-6.9254174,107.6196099'),
(43, 9, 'Kartika Sari', '	Jl. Haji Akbar No.4, Pasirkaliki Cicendo, Jawa Barat 40171', '0224231355', 'info@kartikasari.com', 'www.kartikasari.com', 'kartikasaribandung', '@KartikaSari_ID', '081638-kartikasari1.jpg', 'Oleh oleh Bandung identik dengan Kartika Sari. Rasanya belum ke Bandung kalau belum bawa oleh-oleh dari Kartika Sari. Jika ke Bandung, ya mampir ke Kartika Sari Setiap harinya Kartika Sari selalu dikunjungi oleh para wisatawan dari pelosok Nusantara bahkan dari wisatawan mancanegara.\r\n\r\nMengapa Kartika Sari menjadi pilihan favorit Oleh Oleh Bandung? Produk Kartika Sari sangat nikmat dan terjaga kualitasnya sehingga sangat cocok sebagai oleh-oleh untuk keluarga, teman, dan kolega Anda. KartikaSari.com hadir untuk memuaskan para pelanggan setia oleh-oleh Bandung yang kangen dengan citarasa Kartika Sari. Harapan kami, Oleh Oleh Bandung ini bisa menjadi oleh-oleh nusantara yang senantiasa hadir ditengah-tengah anda dimanapun anda berada.\r\n\r\nProduk Berkualitas dari Kartika Sari yang juga merupakan Pionir Oleh-Oleh Bandung diantaranya adalah...Pisang Bollen. Pisang Bollen (keju) adalah produk andalan utama Kartika Sari. Ada Pisang Bollen (keju) dan Pisang Bollen (Keju) Coklat. Varian Bollen lainnya ada Peuyeum (Tape) Bollen, Durian Bollen dan Kacang Hijau Bollen. Kami juga menyediakan Brownies Panggang dan Brownies Kukus dengan berbagai varian rasa juga. Bagi pencinta keju, ada Cheese Stick dan Cheese Roll yang special', 'Menu', '-6.911928,107.600806'),
(44, 9, 'Bread Talk', 'Istana Plaza, GF, Jl. Pasir Kaliki No. 121 - 123', '0226031000', 'delivery@btdelivery.com', 'www.btdelivery.com', 'BreadTalk bandung', '@BreadTalkBdg', '082623-bread1.jpg', 'Bread Talk adalah perusahaan yang menjual aneka kue dan roti yang bisa dipesan secara delivery yang tersebar di beberapa mall salah satunya ada di Bandung.', 'Menu', '-6.905701,107.596902'),
(45, 9, 'Harvest Cakes', 'JL. H.Djuanda No.15 - Dago, Bandung 40135', '0224200756', 'Tidak ada', 'www.harvestcakes.com', 'loveharvestcakes', '@theharvestcakes', '090155-harvest1.jpg', 'The Harvest lokasinya di Dago, tempatnya cukup luas dan elegan, interiornya didominasi warna coklat. Di dalamnya ada etalase yang memajang aneka cake, pastry, roti, dan ice cream. Disediakan kursi dan meja juga untuk dine in, nah kalo dine in nanti kita dikasih buku menunya, ternyata ada makanan beratnya juga disini didominasi aneka pasta. The Harvest memang asik buat nyantai sambil cemil kue, suasananya cozy dan tenang.', 'Menu', '-6.87426,107.619186'),
(46, 9, 'Roti Boy', 'Bandung Istana Plaza Lt. Dasar Jl. Merdeka No.56 Bandung, Jawa Barat', '0224224890', 'rotiboy_indonesia@yahoo.co.id', 'www.indonesia.rotiboy.com', 'RotiboyID', '@Rotiboy_ID', '095323-boy1.jpg', 'Roti boy merupakan bakery asal Malaysia didrikan pada bulan April 1998. Indonesia jadi negara pertama untuk memproduksi roti boy.', 'Menu', '-6.908598,107.610837'),
(47, 11, 'Kaki Lima 1', 'Kaki lima 1', '1', 'Kaki lima 1', 'Kaki lima 1', 'Kaki lima 1', 'Kaki lima 1', '234107-riri1.jpg', 'Kaki lima 1', 'Kaki lima 1', '1'),
(48, 11, 'Kaki Lima 2', 'Kaki lima 2', '2', 'Kaki lima 2', 'Kaki lima 2', 'Kaki lima 2', 'Kaki lima 2', '234146-riri2.jpg', 'Kaki lima 2', 'Kaki lima 2', '2'),
(49, 11, 'Kaki Lima 3', 'Kaki lima 3', '3', 'Kaki lima 3', 'Kaki lima 3', 'Kaki lima 3', 'Kaki lima 3', '234405-riri3.jpg', 'Kaki lima 3', 'Kaki lima 3', '3'),
(50, 12, 'Cibaduyut - Karang Setra', 'Cibaduyut Bojongloa Kidul Bandung, West Java', '0224240275', 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Tidak ada', '013629-cibaduyut-karangsetra.jpg', 'Kuning\r\n\r\nCIBADUYUT - KARANG SETRA (Cibaduyut - Kebon Kalapa)\r\n\r\nJl. Cibaduyut - Jl. Bojongloa - Jl. Peta - Jl. BKR - Jl. Moh. Toha - Jl. Pungkur - Terminal Kebon Kalapa\r\n\r\n \r\n\r\nCIBADUYUT - KARANG SETRA (Kebon Kalapa - Karang Setra)\r\n\r\nTerminal Kebon Kalapa - Jl. Pasir Koja - Jl. Pajagalan - Jl. Gardu Jati - Jl. Pasir Kaliki - Jl. Sukajadi - Karang Setra\r\n\r\n \r\n\r\nKARANG SETRA - CIBADUYUT (Karang Setra - Kebon Kalapa)\r\n\r\nKarang Setra - Jl. Sukajadi - Jl. Pasir Kaliki - Jl. Pajajaran - Jl. Cicendo - Jl. Pasir Kaliki - Jl. Kebon Jati - Jl. Dulatip - Jl. Sudirman - Jl. Astana Anyar - Jl. Pasir Koja - Terminal Kebon Kalapa\r\n\r\n \r\n\r\nKARANG SETRA - CIBADUYUT (Kebon Kalapa - Cibaduyut)\r\n\r\nTerminal Kebon Kalapa - Jl. Otto Iskandardinata - Jl. Peta - Jl. Bojongloa - Jl. Cibaduyut', 'Ongkos', '-6.953637,107.593336'),
(51, 12, 'Abdul Muis - Dago', 'Abdul Muis - Dago', '1', 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Tidak ada', '011715-abdulmuis-dago.jpg', 'Hijau - Oranye\r\n\r\nABDUL MUIS (Kebon Kelapa) - DAGO - 24 jam\r\n\r\nTerminal Kebon Kelapa - Jl. Dewi Sartika - Jl. Kautamaan Istri - Jl. Balong Gede - Jl. Pungkur - Jl. Karapitan - Jl. Sunda - Jl. Sumbawa - Jl. Belitung - Jl. Sumatera - Jl. Aceh - Jl. Sulawesi - Jl. Seram - Jl. RE Martadinata (Riau) - Jl. Ir. H. Juanda (Dago) - RS. Boromeus (Dago) - ITB (Jl. Ganesha, Dago) - Simpang Dago - Terminal Dago\r\n\r\n \r\n\r\nDAGO - ABDUL MUIS (Kebon Kelapa) - 24 jam\r\n\r\nTerminal Dago - Jl. H. Juanda (Dago) - Simpang Dago - ITB (Jl. Ganesha, Dago) - RS. Boromeus (Dago) - Jl. Sultan Agung - Jl. Trunojoyo - Jl. RE. Martadinata - BIP (Jl. Merdeka Dago) - Jl. Aceh - Jl. Kalimantan - Jl. Belitung - Jl. Sumatera - Jl. Tamblong - Jl. Lengkong Besar - Jl. Ciateul - Jl. Dewi Sartika - Terminal Kebon Kelapa', 'Ongkos', '1'),
(52, 12, 'Cicaheum - Ledeng', 'Cicaheum - Ledeng', '0224240275', 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Tidak ada', '011901-caheum-ledeng.jpg', 'Hijau - Hitam (06)\r\n\r\nCICAHEUM - LEDENG\r\n\r\nTerminal Cicaheum - Jl. PHH. Mustofa (Suci) - Jl. Katamso - Jl. WR. Supratman - Jl. Diponegoro - Jl. Sulanjana - Jl. Tamansari - Jl. Siliwangi - Jl. Cihampelas - Jl. Lamping - Jl. Cipaganti - Jl. Setiabudi - Jl. Karang Sari - Jl. Sukajadi - Jl. Setiabudi - Terminal Ledeng\r\n\r\n \r\n\r\nLEDENG - CICAHEUM\r\nTerminal Ledeng - Jl. Setiabudi - Jl. Cihampelas - Jl. Siliwangi - Jl. Sumur Bandung - Jl. Tamansari - Jl. Sulanjana - Jl. Diponegoro - Jl. WR. Supratman - Jl. Katamso - Jl. Pahlawan - Jl. Cikutra - Jl. PHH. Mustofa (Suci) - Terminal Cicaheum', 'Ongkos', '1'),
(53, 12, 'Cicadas - Elang', 'Cicadas - Elang', '0224224890', 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Tidak ada', '012028-cicadas-elang.jpg', 'Merah - Hijau\r\n\r\nCICADAS - ELANG\r\n\r\nCicadas - Jl. Kiara Condong - Jl. Gatot Subroto - Jl. Burangrang - Jl. Sadakeling - Jl. Buah Batu - Jl. Gurame - Jl. Karapitan - Jl. Lengkong Kecil - Jl. Lengkong Besar - Jl. Pungkur - Terminal Kebon Kelapa - Jl. Dewi Sartika - Alun-Alun - Jl. Banceuy - Jl. Suniaraja - Jl. Otista - Jl. Stasiun Timur - Viaduct - Jl. Kebon Jukut - Jl. Kebon Kawung - Stasiun Bandung (Kebon Kawung) - Jl. Pasir Kaliki - Jl. Pajajaran - Jl. Abdul Rahman Saleh - Jl. Garuda - Jl. Dadali -  Jl. Kasuari - Jl. Rajawali Barat - Elang\r\n\r\n \r\n\r\nELANG - CICADAS\r\n\r\nElang - Jl. Rajawali Timur - Jl. Kebon Jati - Jl. Otto Iskandardinata (Otista) - Jl. Ciateul - Jl. Moh. Toha - Jl. Pungkur - Terminal Kebon Kelapa - Jl. Dewi Sartika - Jl. Dalem Kaum - Jl. Lengkong Besar - Jl. Cikawao - Jl. Sadakeling - Jl. Burangrang - Jl. Gatot Subroto - Jl. Kiara Condong - Jl. Jakarta - Jl. Ahmad Yani - Cicadas', 'Ongkos', '1'),
(54, 12, 'Ciroyom - Cikudapateuh', 'Ciroyom - Cikudapateuh', '0227306697', 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Tidak ada', '012149-ciroyom-cikudapateuh.jpg', 'CIKUDAPATEUH - CIROYOM\r\n\r\nJl. Cikudapateuh - Jl. Kembang Sepatu - Jl. Tarate - Jl. Samboja - Jl. Laswi - Jl. Gatot Subroto - Jl. Malabar - Jl. Buah Batu - Jl. Gurame - Jl. Moh. Ramdan - Jl. BKR - Jl. Peta - Jl. Kopo - Jl. Pasir Koja - Jl. Astana Anyar - Jl. Cibadak - Jl. Sudirman - Jl. Guanan - Jl. Kebon Jati - Jl. Arjuna - Terminal Ciroyom\r\n\r\n \r\n\r\nCIROYOM - CIKUDAPATEUH\r\n\r\nTerminal Ciroyom - Jl. Arjuna - Jl. Kebon Jati - Jl. Gardu Jati - Jl. Astana Anyar - Jl. Kopo - Jl. Peta - Jl. BKR - Jl. Moh. Ramdan - Jl. Banteng - Jl. Ahmad Yani - Jl. Cikudapateuh', 'Ongkos', '1'),
(55, 12, 'Riung Bdg - Dago', 'Riung Bdg - Dago', '0224200756', 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Tidak ada', '012301-dago-riung.jpg', 'Putih - Hijau\r\n\r\nDAGO - RIUNG BANDUNG\r\n\r\nTerminal Dago - Jl. Ir. H. Juanda (Dago) - Simpang Dago - Jl. Dipati Ukur - Jl. Panatayuda - Jl. Surapati (Suci) - Jl. Sentot Alibasyah - Jl. Diponegoro - Jl. Citarum - Jl. RE. Martadinata - Jl. Laswi - Jl. Sukabumi - Jl. Ahmad Yani - Jl. Kiara Condong - Jl. Sukarno-Hatta - Margahayu Raya (Sukarno-Hatta) - Metro (Sukarno-Hatta) - Jl. Cipamolokan (Riung Bandung) - Jl. Riung Bandung - Terminal Riung Bandung\r\n\r\n \r\n\r\nRIUNG BANDUNG - DAGO\r\nTerminal Riung Bandung - Jl. Riung Bandung - Jl. Cipamolokan (Riung Bandung) - Jl. Sukarno-Hatta - Metro (Sukarno-Hatta) - Margahayu Raya (Sukarno-Hatta) - Jl. Kiara Condong - Jl. Jakarta - Jl. Sukabumi - Jl. Laswi - Jl. RE. Martadinata - Jl. Anggrek - Jl. Gudang Utara - Jl. Patra Komala - Jl. Belitung - Jl. Banda - Jl. Diponegoro - Jl. Aria Jipang - Jl. Surapati (Suci) - Jl. Panatayuda - Jl. Dipati Ukur - Simpang Dago - Jl. Ir. H. Juanda - Terminal Dago', 'Ongkos', '1'),
(56, 12, 'Panghegar - Dp Ukur', 'Terminal Dipatiukur, JL. Dipatiukur, Lebak Siliwangi, 40132 Bandung, Indonesia', 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Tidak ada', '012827-panghegar-dpukur.jpg', 'Putih - Kuning - Hijau\r\n\r\nDIPATI UKUR - PANGHEGAR\r\n\r\nTerminal Dipati Ukur - Jl. Hasanudin - Jl. Ir. H. Juanda - RS. Boromeus - Jl. Ganesha - ITB - Jl. Tamansari - Jl. Sawunggaling - UNISBA &amp; UNPAS (Tamansari) - Jl. Wastu Kencana - Jl. RE. Martadinata - Jl. Banda - Jl. Belitung - Jl. Sumatera - Jl. Veteran - Jl. Ahmad Yani - Pasar Kosambi (Ahmad Yani) - Cicadas (Ahmad Yani) - Terminal Cicaheum - Jl. AH. Nasution - Sindanglaya (Nasution) - Ujung Berung (Nasution) - Jl. Cicukang - Jl. Cisaranten - Panghegar\r\n\r\n \r\n\r\nPANGHEGAR - DIPATI UKUR\r\n\r\nTerminal Panghegar - Jl. Cisaranten - Jl. Cicukang - Jl. AH. Nasution (Raya Ujung Berung) - Sindanglaya (Nasution) - Terminal Cicaheum - Jl. Ahmad Yani - Cicadas (Ahmad Yani) - Jl. Kiara Condong - Jl. Jakarta - Jl. Sukabumi - Jl. Laswi - Jl. RE. Martadinata - Jl. Ambon - Masjid Istiqamah - Jl. Cisanggarung - Jl. Cimanuk - Jl. Cimandiri - Jl. Cimalaya - Jl. Diponegoro - Jl. Sulanjana - Jl. Tamansari - Jl. Ganesha - ITB - RS. Boromeus - Jl. Hasanudin - Jl. Dipati Ukur - Terminal Dipati Ukur', 'Ongkos', '-6.89219,107.6179'),
(57, 12, 'Sekemirung - Panyileukan', 'komplek bumi panyileukan blok I, Cileunyi, Jawa Barat 40614, Indonesia', '0227800166', 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Tidak ada', '012942-sekemirung-panyileukan.jpg', 'Pink - Hijau (23)\r\nPANYILEUKAN - SEKEMIRUNG (Gedebage - Simpang Dago) - 05.00-21.00\r\nPasar Induk Gede Bage (Sukarno-Hatta) - Jl. Rumah Sakit - Jl. AH. Nasution - Ujung Berung (Nasution) - Sindanglaya (Nasution) - Terminal Cicaheum - Jl. PHH. Mustofa (Suci) - Jl. Cikutra - Jl. Pahlawan - Jl. Surapati (Suci) - Lapangan Gasibu (Surapati) - Jl. Panatayuda - Jl. Dipati Ukur - Jl. Ki Gede Utama - Jl. Hasanudin - RS. Boromeus (Juanda) - Jl. Ir. H. Juanda - Simpang Dago - *Jl. TB. Ismail - *Jl. Sadang Serang - *Jl. Cikutra Barat - *Jl. Cikondang - *Jl. Cibeunying Kolot - *Jl. Cigadung Raya - *Terminal Awiligar\r\n \r\nSEKEMIRUNG - PANYILEUKAN (Simpang Dago - Gedebage) - 05.00-21.00\r\n*Terminal Awiligar - *Jl. Cigadung Raya - *Jl. Cibeunying Kolot - *Jl. Cikondang - *Jl. Cikutra Barat - *Jl. Sadang Serang - *Jl. TB. Ismail - Simpang Dago (Juanda) - Jl. Ir. H. Juanda - RS. Boromeus (Juanda) - Jl. Hasanudin - Jl. Pager Gunung - Jl. Dipati Ukur - Jl. Panatayuda - Jl. Surapati (Suci) - Lapangan Gasibu (Surapati) - Jl. PHH. Mustofa (Suci) - Terminal Cicaheum - Jl. AH. Nasution - Sindanglaya (Nasution) - Ujung Berung (Nasution) - Jl. Rumah Sakit - Pasar Induk Gede Bage (Sukarno-Hatta)\r\n \r\n*tidak selalu lewat\r\n', 'Ongkos', '-6.9381126,107.7120037'),
(58, 29, 'Golds Gym', 'JL Braga No 99 101 Braga City Walk Unit GF 02, 40111', '0224200756', 'info@goldsgym.co.id', 'www.goldsgym.co.id', 'goldsgymID', '@Golds_Indonesia', '104855-e8ea7bcf4bbe34790721d98ad7375485.png', 'Golds gym fitness center', 'HTM', '-6.9178,107.609303'),
(59, 29, 'Celebrity Fitness', 'Jl. Sukajadi No. 137 139 Cipedes Sukajadi Bandung Jawa Barat', '02282063888', 'info@celebrityfitness.co.id', 'www.celebrityfitness.co.id', 'CFofficial', '@CFofficial', '110023-ALL_NEW_CF_LOGO.jpg', 'Celebrity Fitness fitness center favorite orang bandung', 'HTM', '-6.888872,107.596343'),
(60, 29, 'Helios Fitness', 'Metro Trade Centre 2nd Floor, JL. Sukarno Hatta, No. 590', '02295859434', 'info@heliosfitness.com/', 'http://heliosfitness.com/', 'Helios-Fitness', '@Heliosfit_FCL', '111316-Lt.1-Helios.jpg', 'Helios Fitness  yang banyak di sukai anak mudaadalah fitness', 'HTM', '-6.941508,107.657905'),
(61, 29, 'Rebel Gym', 'Jalan Terusan Jakarta Bandung Kota Bandung, Jawa Barat 40281', '082117885666', 'info@rebelkombat.com', 'ww.rebelkombat.com', 'rebelgym', '@RebelGym', '112153-rebel.jpg', 'Rebel gym dengan harga yang terjangkau', 'HTM', '-6.913846,107.644062'),
(62, 31, 'Stadion Persib', 'JL. Jenderal Ahmad Yani 262, Kacang Piring 40271 , Bandung , West Jawa 40271', '0227218554', 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Tidak ada', '113040-dsc01371.jpg', 'Stadion Pertama persib untuk latihan', 'HTM', '-6.916672,107.629327'),
(63, 31, 'Stadion Si Jalak Harupat', 'Jalan Terusan Soreang - Cipatik', '0227218554', 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Tidak ada', '113432-Jalak-Harupat.jpg', 'Stadion Si jalak Harupat yang ada di kabupaten Bandung', 'HTM', '-6.972259,107.532762'),
(64, 31, 'Stadion Siliwangi', 'JL. Lombok, No. 10', '0224201825', 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Tidak ada', '114123-images.jpg', 'Stadion Siliwangi sering di gunakan untuk pertandingan persib', 'HTM', '-6.909951,107.618755'),
(65, 31, 'Stadion BLA', 'Bandung West Java', '085659333998', 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Tidak ada', '114813-Stadion Gelora Bandung Lautan Api (BLA).jpg', 'Stadion BLA adalah stadion baru kota Bandung yang menjadi kebanggaan bandung', 'HTM', '-6.957567,107.712063'),
(66, 32, 'Lap Sabuga', 'Jl. Taman Sari No. 73 Kota Bandung', '08122471427', 'Tidak ada', 'Tidak ada', 'Sarana Olah Raga Sabuga SORGA', 'Tidak ada', '115829-Sabuga Jogging Track.JPG', 'Sarana Olah Raga Sabuga SORGA tempat palingt enak untuk olah raga', 'HTM', '-6.894528,107.608819'),
(67, 32, 'Gor Saparua', 'Jl. Ambon No. 9 Bandung ', '0224200756', 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Tidak ada', '120609-sport-GOR-saparua.jpg', 'Gor saparua sangat digemari oleh anak muda yang suka berolahraga', 'HTM', '-6.901247,107.608215'),
(68, 32, 'Gor C-tra Arena', ' Jl. Cikutra No. 278  Bandung ', '0227206525', 'Tidak ada', 'www.c-traarena.blogspot.com', 'GOR C-TRA Arena', 'Tidak ada', '165948-sport-GOR-c-tra-arena.jpg', 'C-tra Arena merupakan salah satu fasilitas olah raga yang unik dengan penampilan yang berbeda dari fasilitas olahraga lainnya. Dengan konsep penuh warna yang terpadu dalam satu nuansa eksentrik memberikan suasana yang meriah dan nyaman bagi para pengunjungnya. Selain fungsi utamanya sebagai gedung event olahraga indoor seperti bola basket, bola voli, beladiri dan lain-lain, C-tra Arena juga memiliki beberapa fungsi lain seperti : acara wisuda, opspek, pagelaran musik ataupun acara lainnya', 'HTM', '-6.9033101,107.642621'),
(69, 32, 'Gor Pajajaran', 'JL Pajajaran No. 37, Bandung, 40171', '0224266317', 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Tidak ada', '172932-gor pajajaran_1.jpg', 'Gelanggang Olahraga Padjadjaran adalah sebuah gelanggang olahraga serbaguna di Kota Bandung, Jawa Barat, Indonesia. Gelanggang olahraga ini umumnya digunakan untuk olahraga basket dan bulu tangkis. Dibangun pada tahun 1974 dengan skala nasional dengan kapasitas 2.500 penonton, pada tahun 2010 (dalam kurun 36 tahun) kondisinya sudah tidak memungkinkan lagi untuk skala nasional yang standar kapasitasnya 6.000 penonton. Kondisi GOR Pajajaran hanya menampung 2.500 penonton saja, sehingga apabila digunakan untuk pertandingan tingkat nasional akan terjadi jajaran mobil parkir di luar lokasi di sepanjang jalan Pajajaran dan menimbulkan kemacetan.', 'HTM', '-6.906935,107.601404'),
(70, 30, 'Dago Bowling', 'Jl. Ir. H. Juanda No. 3 Tamansari Bandung Wetan Bandung Jawa Barat', '0222508464', 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Tidak ada', '174209-IMG00338-20120609-1640.jpg', 'Dago Bowling merupakan salah satu tempat bermain bowling di Bandung yang sangat nyaman, baik tempat maupun dalam pelayanannya. Hampir setiap hari arena bermain yang berada di kawasan Dago ini kerap dikunjungi para pecinta permainan yang menggunakan bola khusus dan pin sebagai targetnya. Alasan mereka rata-rata sama, yaitu karena dago bowling terletak diposisi yang sangat strategis dan sebagai tempat favorit berkumpulnya anak muda.', 'HTM', '-6.906276,107.610183'),
(71, 27, 'TVRI Jabar', 'Jalan Raya Cibaduyut No.269 Kota Bandung,Jawa Barat 40236', '0225404666', 'sekretariat@tvrijabar.co.id ', 'www.tvrijabar.co.id/', 'tvri.jawabarat', ' @tvri_jabar', '180310-41801_620.jpg', 'TVRI Jawa Barat merupakan stasiun televisi daerah yang didirikan oleh Televisi Republik Indonesia untuk wilayah Provinsi Jawa Barat. TVRI Jawa barat didirikan pada tanggal 11 Maret 1987 dan diresmikan oleh Walikota Bandung saat itu H.Ateng Wahyudi dengan nama TVRI Bandung. TVRI Bandung juga saat itu mulai mengudara selama 60 menit dengan program acara berita daerah khas TVRI.', 'Tidak ada', '-6.948814,107.594665'),
(72, 27, 'STV', 'Jalan Professor Doktor Surya Sumantri No.120 40163', '0224217633', 'Tidak ada', 'www.stv.co.id', 'stvbandung', '@stvbandung', '181726-stv_20logo[1].jpg', 'STV salah satu stasiun TV lokal Jawa Barat yang berpusat di Bandung. Mulai mengudara tanggal 18 Maret 2005, di Channel 34 UHF. STV tampil beda dengan selalu menghadirkan konsep-konsep baru, melalui tayangan program berkualitas yang mengedepankan budaya lokal Jawa Barat', 'Tidak ada', '-6.880774,107.582913'),
(73, 27, 'PJTV', 'JL. Soekarno Hatta, No. 633', '0227315438', 'info@pjtv.co.id', 'www.pjtv.co.id', 'PJTV', '@pjtvbdg', '232647-logo-pjtv-bandung-seratus-persen-lokal.jpg', 'Parijz Van Java TV(disingkat PJTV, dahulu Padjajaran TV) merupakan salah satu stasiun televisi lokal di Bandung. Berdiri pada tahun 2005 di Bandung dengan kekuatan pemancar 3Kw. Didukung dengan tenaga SDM yang muda dan kreatif serta mempunyai visi yang sama sampai saat ini PJTV menjadi stasiun televisi yang eksis di kota Bandung dan sekitarnya. Stasiun televisi ini merupakan anggota jaringan JPMC.\r\n\r\nDengan semangat untuk mencapai Visinya, selain telah banyaknya program program baru yang menarik, menghibur serta mendidik, PJTV adalah stasiun TV lokal pertama yang di bandung yang sudah mengudara kurang lebih 19 jam per hari dan saat ini telah menambah daya pancarnya menjadi 10kw yang tentunya akan menjangkau sebagian besar wilayah Jawa Barat.', 'Tidak ada', '-6.9033101,107.642621'),
(74, 27, 'IMTV', 'Setrasari Mall, Blok C3 no 9  35 Jln. Ters. Prof. Dr. Ir. Sutami Bandung', '0227271714', 'marketingimtv@yahoo.co.id', 'www.imtvbandung.blogspot.com', 'IMTV Bandung', '@IMTVBdg', '234413-20120721070450!Imtv_new.png', 'Parijz Van Java TV(disingkat PJTV, dahulu Padjajaran TV) merupakan salah satu stasiun televisi lokal di Bandung. Berdiri pada tahun 2005 di Bandung dengan kekuatan pemancar 3Kw. Didukung dengan tenaga SDM yang muda dan kreatif serta mempunyai visi yang sama sampai saat ini PJTV menjadi stasiun televisi yang eksis di kota Bandung dan sekitarnya. Stasiun televisi ini merupakan anggota jaringan JPMC.\r\n\r\nDengan semangat untuk mencapai Visinya, selain telah banyaknya program program baru yang menarik, menghibur serta mendidik, PJTV adalah stasiun TV lokal pertama yang di bandung yang sudah mengudara kurang lebih 19 jam per hari dan saat ini telah menambah daya pancarnya menjadi 10kw yang tentunya akan menjangkau sebagian besar wilayah Jawa Barat.\r\n22 UHF', 'Tidak ada', '-6.9296384,107.6131794'),
(75, 28, '105.9 ARDAN FM ', 'Jl. Cipaganti 159 Bandung 40161 Jawa Barat ', '0222033256', 'program@ardanradio.com', 'www.ardanradio.com', 'Ardan radio', '@ardanradio', '001023-sharp-ardan-radio.png', 'Radio ARDAN 105.9 FM Bandung berdiri berdasarkan Surat Keputusan Direktorat Jendral Hukum dan Perundangan-Undangan Departemen Kehakiman No. C2 HT.01.01-A . Sebelum berubah menjadi PT. Radio Ardan Swaratama, Radio ARDAN 105.9 FM Bandung berdiri dengan nama PT. Radio Bong-Kenks di Jalan Westhoff Nomor 18 dengan frekuensi AM 234 M.', 'Tidak ada', '-6.8914482,107.6024694'),
(76, 28, '99ERS 100 FM ', 'BRI Tower 4th floor, JL. Asia Afrika, No. 57-59, Bandung', '0224222666', 'contact@999.fm', 'www.999.fm', '99ers 100 FM Bandung', '@99ersRadio_Bdg', '004654-logo-99ers1.jpg', 'On-air pertama kali pada tanggal 09 September, 2000. Menduduki posisi ke 3 (tiga) untuk pendengar 15-24AB dan ke 7 (tujuh) untuk all segment pada survey AC Nielsen tahun 2001, yaitu pada saat 99ers baru berusia 9 bulan.\r\nTepat 99ers mengudara 1,5 tahun, 99ers berhasil mencapai posisi puncak untuk menjadi radio anak muda No.1, yaitu segment pendengar 15-24 &amp; 15-24AB dan posisi ke 5 (lima) untuk all segment di survey AC Nielsen 2002.', 'Tidak ada', '-6.921181,107.611572'),
(77, 28, 'OZ Radio 103.1 FM', 'JL. Setrasari II, No. 14 40152', '0224200756', 'info@ozradiobandung.com', 'www.ozradiobandung.com', 'ozradiobandung', '@ozradiobandung', '010232-Oz.jpg', 'Oz 103.1 FM adalah hiburan musik, info artis idola, lifestyle, technology, automotive, sport &amp; entertainment, gossips, quiz &amp; otf air activities, dengan kemasan yang menarik dan diperbaharui setiap waktu', 'Tidak ada', '-6.9033101,107.642621'),
(78, 28, 'Prambors Radio 98,4 FM', 'Paris Van Java - Resort and Lifestyle Place. Level 735 P 12. Jl. Sukajadi no 137-139, Bandung 40162', '02282063808', 'info@pramborsfm.com ', 'www.pramborsfm.com ', 'prambors', '@Prambors', '011715-984.fm.prambors.bandung.jpg', 'Awalnya Prambors merupakan radio buatan sekelompok anak muda yang cuma bisa didengarkan di sebuah daerah di Jakarta, yaitu Prambanan, Mendut, Borobudur, dan sekitarnya. Beberapa anggota Prambors, Imran Amir, Mursid Rustam, Malik Sjafei dan Bambang Wahyudi, serta Tri Tunggal, merasa perlu memberi Prambors sebuah pemancar radio.\r\n\r\nMereka pun merakit transmitter sederhana dan segala macam alat pendukungnya di kamar tidur Bambang Wahyudi. Karena dulu belum ada kaset ataupun tape player portable, maka dipakailah turn table untuk memutar lagu dari piringan hitam.', 'Tidak ada', '-6.889409,107.596095'),
(79, 34, 'Nav Karaoke', 'Pejuang 45 No. 115 Gedung ABG Lt. 3 Jawa Barat 40264', '0227321584', 'info@nav.co.id', 'www.nav.co.id', 'Nav karaoke', '@navKaraoke', '014016-NAV.jpg', 'NAV Karaoke Keluarga adalah tempat hiburan karaoke yang tepat dan lengkap untuk seluruh anggota keluarga Anda, mulai dari anak-anak hingga orang dewasa, bahkan para manula. Dengan suasana interior yang sangat menyenangkan dan dilengkapi dengan fasilitas sound system yang canggih serta menggunakan teknologi layar sentuh, NAV Karaoke Keluarga menyediakan puluhan ribu lagu sesuai pilihan Anda, mulai lagu indonesia, barat, mandarin, rohani, jepang, bahkan lagu-lagu daerah. Tiap kamar yang tersedia bisa menampung 4-30 orang, sangat cocok pula untuk digunakan sebagai tempat pesta atau acara khusus lainnya.', 'HTM', '-6.93509,107.624663');
INSERT INTO `t_informasi` (`id_informasi`, `id_contoh`, `nama`, `alamat`, `no_tlp`, `email`, `website`, `facebook`, `twitter`, `gambar`, `keterangan`, `judul_info_harga`, `latlong`) VALUES
(80, 34, 'Inul Vizta', 'Jl. Sukajadi No. 137-139 Mall Paris Van Java Jawa Barat 40162', '02282063511', 'info@vizta.co.id', 'vizta.co.id', 'inulviztaktv ', ' @inulvizta', '014734-1962672_713340208686193_218486860_n.jpg', 'VIZTA Karaoke memposisikan sebagai KARAOKE KELUARGA YANG TRENDY DAN SELEBIZZ. Karaoke ini memang ditargetkan untuk memenuhi selera masyarakat kelas menengah metropolis trendy yang menginginkan bernyanyi, hang out, maupun berpesta pada tempat dan suasana yang colourful, cozy, fun, nyaman, sopan , namun dengan biaya yang terjangkau.', 'HTM', '-6.888939,107.593419'),
(81, 34, 'Neo Karaoke', 'Bandung Indah Plaza, 3rd Floor, Unit 32 33, JL. Merdeka, No. 56, Bandung 40117', '02273400400', 'info@neo-karaoke.com', 'www.neo-karaoke.com', 'neokaraoke', '@Neofamilykaroke', '020101-404284_210881505674334_2074560142_n.jpg', 'Family Karaoke ', 'HTM', '-6.909661,107.6105095'),
(82, 34, 'Diva Family Karaoke', 'Jl. Sumatra No. 1 Kebon Pisang Sumurbandung Bandung Jawa Barat', '0224224666', 'info@divakaraoke.co.id', 'www.divakaraoke.co.id', 'www.divakaraoke.co.id', '@dfkbandung', '021126-v.png', 'Diva family karaoke ini tempat karaoke baru di Bandung. Pemilik tempat karaoke ini yaitu penyanyi, Rossa. Selain di Bandung juga, Diva ada di beberapa kota lain. Untuk di Bandung, letak nya Jalan Sumatera no 1. Masih sejajaran sama tempat-tempat seru di Jalan Sumatera. Semacam Brussel spring, Kopi Progo, Soleluna, atau belanja baju di EST. Diva family karaoke ini sama kaya tempat karaoke lain nya yang menyediakan happy hour, yaitu hari Senin sampai \r\nKamis diskon 50persen dari harga normal, happy hour nya dimulai jam 11.00 sampai17.00.', 'HTM', '-6.918444,107.61542'),
(83, 33, 'Paxi Barbershop', 'Paris Van Java CL-02B, JL. Sukajadi, No. 131-139', '02282063664', 'paxiofficial@gmail.com', 'www.paxibarbershop.com', 'Paxi Barbershop', '@PaxiOfficial', '022457-CITOS.jpg', 'Paxi Barbershop have focused on masculine tastes and needs and have clearly established ourselves as a premiere men''s barbershop in Indonesia. Since its founding in Jakarta in 1999, We have become the leading Barbershop in Indonesia. By the fact that we offer you the perfect combination of Elegant and Relaxing, we provide you the finest services from our well-experienced barbers. The store''s decoration was proposed to be more authentic than others, as we offered you with Premium Barber Equipment, and the finest barber chairs. The need for a special place in which guys can feel comfortable along with excellent grooming has now been met. Have a gentle-cut, experience the feeling of getting a straight-razorblade gently wielded to your face under our expert hands or take your relaxation time with our Reflexology Service, you can have it all at a great price, and yes, we makes you confident.', 'Model', '(022) 82063664'),
(84, 33, 'Headcore', 'Jl. Cikutra Raya No. 227a, Bandung', '02291507031', 'headcorebarbershop@mail.com', 'www.headcorebarbershop.blogspot.com', 'HEADCORE BARBERSHOP', '@headcorebarbershop', '024108-Profile Pict.jpg', 'HEADCORE BARBERSHOP disini dapat digunakan sebagai sarana dalam mengekspresikan semangat anak muda dalam berkreasi di bidang Fashion &amp; Style, khususnya rambut yang bersifat universal.\r\n\r\nUntuk memberikan kesan yang unik/lain daripada yang lain, HEADCORE BARBERSHOP tidak hanya menyediakan pelayanan potong rambut. HEADCORE BARBERSHOP juga menyediakan space untuk menjual kaos-kaos musik, merchandise musik, info/artikel yang berkembang mengenai perkembangan musik di seluruh dunia sesuai dengan konsep barbershop, sehingga dengan datangnya seseorang ke HEADCORE BARBERSHOP diharapkan image yang di inginkan oleh orang tersebut dapat terealisasi utuh tidak hanya dari segi hair style namun juga dari segi fashion, atau bahkan pengetahuan mereka tentang musik.', 'Model', '-6.9000408,107.6433347'),
(85, 33, 'Barber Pop', 'Jl. Cimanuk No. 11 Citarum Bandung Wetan Bandung Jawa Barat', '0227275449', 'info@barberpop.co.id', 'www.barberpop.co.id', 'barber.pop', '@BARBER_POP', '105623-logo.jpg', 'Barberpop adalah barbershop yang sangat favorit di daerah Bandung yang digandrungi kaula muda.', 'Model', '-6.903868,107.621244'),
(86, 33, 'Rock N Roll Haircutting', 'Jl Sulanjana 15 Bandung, Indonesia', '0224230541 ', 'info@rocknrollhaircutting.com ', 'www.rocknrollhaircutting.com ', 'rnrhaircutting', '@rnrhaircutting', '112525-rnr-haircutting.jpg', 'Rock N Roll Haircutting ini berdiri pada 2004 berawal dari kebiasaan pemiliknya, Ina dan Mega yang sering memotong rambut teman-teman mereka.\r\n\r\nDengan bermodal bakat memotong rambut tersebut, Ina dan Mega memulai usaha di sebuah tempat yang sangat sederhana, yaitu di gudang sebuah perusahaan clothing di Jalan Buahbatu.\r\n\r\nKedua memulai usaha gunting rambut dengan gaya para pemain band rock n roll. Setelah berjalan beberapa lama, tempat gunting rambut yang belum ada nama tersebut menjadi tempat nongkrong anak-anak muda, termasuk sejumlah pemain band. Bahkan tempat tersebut menjadi favorit para pemain band.', 'Model', '-6.8996407,107.6106315'),
(87, 26, 'Taman Jomblo', 'Jalan Layang Pasupati, Bandung, Jawa Barat', 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Tidak ada', '043016-q.jpg', 'Sebenarnya, taman ini cuman area imut banget di bawah jalan layang Taman Sari. Selama ini hanya jadi tempat kumuh, gelap dan rawan. Tetapi sekarang diubah jadi tempat nongkrong yang nyaman bagi anak muda yang jomblo atau yang ngaku jomblo? hehee. Apalagi ada wi fi nya. Jadi jomblowan dan jomblowati gak perlu bengong di kosan, melamun gak jelas, ya hehee. Bisa aja dateng ke sini. Duduk di kubus nya yang emang tempat sendiri. Nah sapa tau malah ketemu jodoh di sini kan bisa aja', 'Tidak ada', '-6.9002438,107.5971208'),
(88, 26, 'Taman Lansia', 'Jl. Cisangkuy Bandung samping gedung sate', 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Taman Lansia Bandung', 'Tidak ada', '000356-57taman lansia.jpg', 'Taman Lansia adalah sebuah taman kota yang terletak di sebelah kanan Gedung Sate Bandung. Taman Lansia merupakan singkatan dari Taman Lanjut Usia, sebuah sarana refreshing dan istirahat bagi warga kota Bandung maupun warga luar Bandung yang sedang berkunjung ke Bandung. Meski namanya Taman Lansia, taman ini banyak dikunjungi oleh Penduduk Bandung yang bukan lanjut usia, termasuk anak muda Bandung. Mereka berkumpul di sini baik untuk sekedar berjalan-jalan, rekreasi dan makan bersama keluarga hingga sekedar menikmati lingkungan yang asri. ', 'Tidak ada', '-6.9034367,107.623615'),
(89, 26, 'Taman Ganesha', 'Jl. Ganesha, Bandung  ', 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Tidak ada', '034432-taman-ganesha.jpg', 'Untuk tujuan rekreasi taman ini merupakan tempat yang banyak di minati pengunjung .  Terutama mereka yang hendak bersantai . Taman ini mempunyai sarana rekreasi berupa kuda tunggangan yang terletak di sepanjang jalan Ganesha ,ada juga sarana lainnya seperti kuda hela , kretek , delman . Taman Ganesha berada di terletak di Jalan Ganesha tepat di depan ITB , dan hanya beberapa meter dari kebun binatang  .Biasanya pada hari minggu di taman ini sering diadakan kegiatan - kegiatan dakwah islam yang diselenggarakan oleh para remaja Mesjid Salman ITB , suasanannya yang asri membuat setiap orang menjadi betah', 'Tidak ada', '-6.8936725,107.612392'),
(90, 26, 'Taman Musik', 'Jl. Belitung Bandung', 'Tidak ada', 'Tidak ada', 'Tidak ada', 'Tidak ada', '@tamanmusikbdg', '040320-musik.jpg', 'Kota Bandung adalah kota yang identik dengan kota seni, bagaimana tidak, kita banyak sekali mengenal seniman yang berasal dari kota ini, baik yang berada di bidang seni peran, seni tarik suara, atau bahkan ajang seni lainnya. Kita dapat mengambil contoh sederhana di dunia hiburan tanah air dimana kita akan menemukan begitu banyak musisi atau actor dan aktris yang berasal dari Kota Kembang ini. Anyway, dengan identiknya Bandung sebagai kota yang memiliki cita rasa seni yang tinggi, baru-baru ini pemerintah Kota Bandung membuat terobosan baru untuk memberikan wadah bagi para pecinta seni di Kota Bandung, yakni berupa didirikannya Taman Musik.', 'Tidak ada', '-6.912240,107.615891'),
(91, 25, 'Jonas Photo', 'Jl. Banda No. 38, Bandung, Jawa Barat 40115', '0224201010 ', 'infojonas@gmail.com', 'www.jonas-photo.blogspot.com', ' facebook.com/jonasphoto.id ', '@Jonas_Photo', '233928-454e5149d0fb0542b1e474155c0660b4.jpeg', 'Jonas Photo adalah perusahaan yang bergerak di bidang penyediaan pelayanan jasa fotografi seperti pemotretan studio (Anak, remaja, Group, Keluarga, Wisuda dll), Proses cetak foto (Lab foto &amp; Printing) dan penjualan frame album.', 'Photo', '-6.915921,107.620989'),
(92, 25, 'Papyrus Photo', 'Jalan Bengawan No.29 40114', '0227234596', ' info@papyrusphoto.com', 'www.papyrusphoto.com', 'papyrusphoto', '@papyrusphoto', '235733-592288_157699869691_1184628901_n.jpg', 'Foto Keluarga, Wisuda, Baby, Foto Grup dan Dokumentasi korporat hingga pernikahan merupakan spesialisasi kami. Selain itu, berbagai pilihan frame dan album tersedia untuk memenuhi kebutuhan fotografi Anda. Bahkan frame dapat dipesan dengan desain, ukuran, dan kuantiti sesuai yang diharapkan.\r\nKami juga menyediakan cetakan foto di dengan berbagai jenis ukuran dan material, baik kertas maupun kanvas.  Termasuk membuat album foto dengan konsep majalah atau Magazine photobook yang dapat memuat foto-foto dokumentasi pribadi lengkap dengan cerita yang Anda kreasikan sendiri dan dikemas persis seperti majalah pribadi.', 'Photo', '-6.911291,107.631395'),
(93, 25, 'M Photo Studio', 'Bandung Indah Plaza, JL. Merdeka, L3 Unit 18, No. 56', '0224204471', 'mstudiofoto@yahoo.com', 'www.mstudiofoto.com', 'M Photo Studio', '@mphotostudio', '003508-PHOTOSTUDIO.jpg', 'M photo studio melayani berbagai jenis foto untuk keperluan apapun', 'Photo', '-6.910366,107.610415'),
(94, 25, 'Seruni Photo ', 'Jl. Merdeka No. 49 Citarum Bandung Wetan Bandung Jawa Barat', '0224207780', 'info@seruni.com', 'www.seruni.com', 'Seruni.Photo', '@SeruniFoto', '005110-297649_502804783084438_339112745_n.jpg', 'New Concept Seruni Foto: studio foto terbesar dg kapasitas 200 orang dlm sekali foto, kendaraan (mobil) bisa masuk ke dalam studio utk difoto dan OAI technology', 'Photo', '-6.906855,107.611898');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_info_harga`
--

CREATE TABLE IF NOT EXISTS `t_info_harga` (
  `id_info_harga` int(20) NOT NULL AUTO_INCREMENT,
  `id_informasi` int(20) NOT NULL,
  `nama_judul` varchar(50) NOT NULL,
  `harga` varchar(50) NOT NULL,
  `ket` text NOT NULL,
  PRIMARY KEY (`id_info_harga`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=35 ;

--
-- Dumping data untuk tabel `t_info_harga`
--

INSERT INTO `t_info_harga` (`id_info_harga`, `id_informasi`, `nama_judul`, `harga`, `ket`) VALUES
(1, 1, 'Delman', 'Rp. 25.000', 'Per 1 Putaran Per 3 Orang'),
(2, 1, 'Trike 1', 'Rp. 25.000', 'Per 1 Putaran Per 15 Menit'),
(3, 1, 'Kuda Tunggang', 'Rp. 20.000', 'Per 1 Putaran Per 1 Orang'),
(4, 2, 'Senin-Jumat / 10.00 S.d 21.00 WIB', 'Rp. 150.000', 'Berlaku untuk semua wahana dan dapat menikmati sepuasnya sampai berkali-kali. '),
(5, 2, 'Sabtu - Minggu / Hari Libur / 09.00 S.d 22.00 WIB', 'Rp. 250.000', 'Berlaku untuk semua wahana dan dapat menikmati sepuasnya sampai berkali-kali '),
(6, 2, 'Tambahan', 'Rp. 250.000', 'Untuk VIP pass, jika anda ingin menjadi nomor satu pada setiap antrian.'),
(7, 3, 'Bumperboat', 'Rp. 40.000', 'Bumper Boat (perahu senggol) bisa digunakan untuk berperang di air secara aman'),
(8, 3, 'Child Playground  ', 'Rp. 20.000', 'Children Playground adalah arena bermain khusus anak-anak. Ayunan, perosotan, jungkat-jungkit, dan wahana panjat-panjatan tersedia di kawasan ini.'),
(9, 3, 'Mini Buggy   ', 'Rp. 30.000', 'Mini Buggy merupakan sejenis mobil buggy mainan dalam ukuran mini. '),
(10, 4, 'Turis Domestik', 'Rp. 60.000', 'Harga itu sudah termasuk souvenir berupa kalung berbandul angklung, brosur dan minuman gratis.'),
(11, 4, 'Turis Mancanegara', 'Rp. 100.000', 'Harga itu sudah termasuk souvenir berupa kalung berbandul angklung, brosur dan minuman gratis.'),
(12, 5, 'Per Orang', 'Rp. 13.000 ', 'untuk anak-anak biasanya digratiskan.'),
(13, 5, 'Kendaraan Roda Dua', 'Rp. 4.000 ', 'Hanya untuk kendaraan roda dua.'),
(14, 5, 'Kendaraan Roda Empat', 'Rp. 9.000', 'Hanya untuk kendaraan roda empat.'),
(15, 5, 'Bus/Truk', 'Rp. 17.500 ', 'Khusus untuk bus atau truk.'),
(16, 5, 'Turis Asing', 'Rp. 35.000', 'Khusus untuk turis asing.'),
(17, 6, 'Motor  ', 'Rp. 5000', 'Kendaraan roda dua / motor '),
(18, 6, 'Mobil', 'Rp. 6000', 'Kendaraan roda empat / mobil '),
(19, 7, 'Senin S/d Jumat', 'Gratis', '8:00 -16:00'),
(20, 7, 'Sabtu S/d Minggu', 'Gratis', '9:00-16:00'),
(21, 8, 'Dewasa', 'Rp. 2.500', 'Selasa - Jumat : 08.00-16.00 WIB'),
(22, 8, 'Anak-anak', 'Rp. 1.500', 'Sabtu - Minggu : 08.00-14.00 WIB\r\nSenin / Hari Raya / Libur Nasional : Tutup'),
(23, 9, 'Semua Orang', 'Gratis', 'Senin-Jumat pukul 09.00-16.00, Sabtu pukul 09.00-13.00 (Museum tutup setiap hari Minggu dan libur nasional)'),
(24, 10, 'Pelajar/Mahasiswa', 'Rp. 2.000', 'Senin-Kamis 08.00-16.00'),
(25, 10, 'Umum', 'Rp 3.000', 'Sabtu-Minggu 08.00-14.00'),
(26, 10, 'Asing/pelajar Asing', 'Rp 10.000', 'Jumat dan Libur Nasional Tutup'),
(27, 14, 'Celana Panjang Denim', 'Rp. 225.000', 'Available Size: 28, 30, 32, 34\r\n'),
(28, 14, 'Kemeja Panjang', 'Rp 175.000', 'Available Size: S, M, L, XL'),
(29, 14, 'Sepatu', 'Rp 335.000', 'Available Size: 40, 41, 42, 43, 44'),
(30, 14, 'T-Shirt', 'Rp 90.000', 'Available Size: S, M, L, XL'),
(31, 15, 'T-Shirt Cosmic', 'Rp 119.000', 'available size S till XL '),
(32, 15, 'Kemeja Panjang Cosmic', 'Rp 239.000', 'size S till XL '),
(33, 16, 'Kemeja Pendek', 'Rp 210.000', 'Size s-xl'),
(34, 16, 'Topi', 'Rp 95.000', 'Suede');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_jenis`
--

CREATE TABLE IF NOT EXISTS `t_jenis` (
  `id_jenis` int(20) NOT NULL AUTO_INCREMENT,
  `id_kategori` int(20) NOT NULL,
  `jenis` varchar(50) NOT NULL,
  `gambar` varchar(250) NOT NULL,
  PRIMARY KEY (`id_jenis`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data untuk tabel `t_jenis`
--

INSERT INTO `t_jenis` (`id_jenis`, `id_kategori`, `jenis`, `gambar`) VALUES
(1, 1, 'Wisata Rekreasi', 'wisata_rekreasi.png'),
(2, 1, 'Wisata Belanja/Fashion', '161942-wisata_belanja.png'),
(3, 1, 'Wisata Kuliner', 'wisata_kuliner.png'),
(4, 20, 'Info Transportasi', 'transportasi.png'),
(5, 20, 'Info Pelayanan Masyarakat', 'pelayanan_masyarakat.png'),
(6, 20, 'Info Penginapan', 'penginapan.png'),
(7, 2, 'Info Tongkrongan', 'tongkrongan.png'),
(8, 2, 'Info Saluran', 'saluran.png'),
(9, 2, 'Info Olahraga', 'olahraga.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_kategori`
--

CREATE TABLE IF NOT EXISTS `t_kategori` (
  `id_kategori` int(20) NOT NULL AUTO_INCREMENT,
  `kategori` varchar(50) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  PRIMARY KEY (`id_kategori`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data untuk tabel `t_kategori`
--

INSERT INTO `t_kategori` (`id_kategori`, `kategori`, `gambar`) VALUES
(1, 'Info Wisata', 'info_wisata.png'),
(2, 'Info Lain-Lain', 'info_lainlain.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_socmed`
--

CREATE TABLE IF NOT EXISTS `t_socmed` (
  `id_socmed` int(20) NOT NULL AUTO_INCREMENT,
  `id_gambar_socmed` int(20) NOT NULL,
  `nama_socmed` varchar(50) NOT NULL,
  `userid_socmed` varchar(50) DEFAULT NULL,
  `alamat_socmed` varchar(50) DEFAULT NULL,
  `gambar` varchar(250) NOT NULL,
  PRIMARY KEY (`id_socmed`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data untuk tabel `t_socmed`
--

INSERT INTO `t_socmed` (`id_socmed`, `id_gambar_socmed`, `nama_socmed`, `userid_socmed`, `alamat_socmed`, `gambar`) VALUES
(1, 1, 'Info Bandung', 'Info Bandung Official', 'www.facebook.com/infobandung', '1.png'),
(2, 2, 'Info Bandung', '@infobdg', 'www.twitter.com/infobdg', '1.png'),
(3, 3, 'Info Bandung', '@info_bandung', 'www.instagram.com/info_bandung', '1.png'),
(4, 4, 'Info Bandung', 'info_bdg', 'www.path.com/info_bdg', '1.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id_user`, `nama`, `email`, `username`, `password`) VALUES
(1, 'admin', 'admin@gmail.com', 'admin', 'admin');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
