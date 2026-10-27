-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 27, 2026 at 04:23 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tripnanggroe`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `role` varchar(20) NOT NULL DEFAULT 'admin',
  `last_login` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`, `nama`, `email`, `role`, `last_login`) VALUES
(1, 'admin', '$2y$12$3ZNX0bx3x3spHND.SXwY2u9gOpxfh7bqEDsPNLhP3zV4Cgk.vyDAK', 'Administrator', 'admin@tripnanggroe.test', 'admin', '2026-10-27 07:32:54');

-- --------------------------------------------------------

--
-- Table structure for table `destinasi`
--

CREATE TABLE `destinasi` (
  `id_destinasi` bigint(20) UNSIGNED NOT NULL,
  `nama_destinasi` varchar(150) NOT NULL,
  `kategori` varchar(50) NOT NULL,
  `deskripsi` text NOT NULL,
  `harga_tiket` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `alamat` varchar(255) NOT NULL,
  `latitude` decimal(10,7) DEFAULT NULL,
  `longitude` decimal(10,7) DEFAULT NULL,
  `foto_utama` varchar(255) DEFAULT NULL,
  `fasilitas` text DEFAULT NULL,
  `jam_buka` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `destinasi`
--

INSERT INTO `destinasi` (`id_destinasi`, `nama_destinasi`, `kategori`, `deskripsi`, `harga_tiket`, `alamat`, `latitude`, `longitude`, `foto_utama`, `fasilitas`, `jam_buka`) VALUES
(1, 'Masjid Raya Baiturrahman', 'Religi', 'Ikon kebanggaan Aceh dengan tujuh kubah dan lima menara bergaya arsitektur Mughal. Masjid bersejarah ini selamat dari tsunami 2004 dan menjadi pusat kegiatan keagamaan sekaligus tujuan wisata utama di Kota Banda Aceh.', 0, 'Jl. Moh. Jam No. 1, Kota Banda Aceh', 5.5536000, 95.3174000, 'destinasi/masjid-raya-baiturrahman.svg', 'Area parkir, Tempat wudhu, Toilet, Pemandu wisata', '08.00 – 17.00 WIB (di luar waktu salat)'),
(2, 'Museum Tsunami Aceh', 'Edukasi', 'Museum peringatan bencana tsunami 2004 karya arsitek Ridwan Kamil. Menyimpan foto, maket, dan kesaksian korban, serta ruang renungan \"Lorong Tsunami\" dan \"Sumur Doa\".', 10000, 'Jl. Sultan Iskandar Muda, Kota Banda Aceh', 5.5481000, 95.3203000, 'destinasi/im7hJBygIbzB1QWXAtb0j7qIypTSmJi8iZdKL5Oc.jpg', 'Parkir, Toilet, Mushala, Pemandu, Ruang pamer ber-AC', '09.00 – 16.00 WIB (Jumat siang tutup)'),
(3, 'PLTD Apung', 'Sejarah', 'Kapal pembangkit listrik seberat sekitar 2.600 ton yang terseret tsunami hingga ke daratan di Punge Blang Cut. Kini menjadi monumen sejarah dengan anjungan pandang.', 5000, 'Punge Blang Cut, Kota Banda Aceh', 5.5518000, 95.2984000, 'destinasi/pltd-apung.svg', 'Parkir, Anjungan pandang, Toilet', '08.00 – 17.00 WIB'),
(4, 'Kerkhof Peucut', 'Sejarah', 'Pemakaman serdadu Belanda korban Perang Aceh, salah satu kerkhof terbesar di luar Belanda. Gerbangnya memuat nama-nama prajurit yang gugur.', 5000, 'Jl. Teuku Umar, Kota Banda Aceh', 5.5497000, 95.3245000, 'destinasi/kerkhof-peucut.svg', 'Parkir, Taman', '08.00 – 17.00 WIB'),
(5, 'Pantai Lampuuk', 'Bahari', 'Pantai berpasir putih dengan ombak yang cocok untuk berselancar dan senja yang indah. Di sekitarnya banyak warung ikan bakar dan penginapan sederhana.', 0, 'Lampuuk, Lhoknga, Kabupaten Aceh Besar', 5.4780000, 95.2255000, 'destinasi/pantai-lampuuk.svg', 'Parkir, Warung makan, Toilet, Penyewaan papan selancar', 'Buka 24 jam'),
(6, 'Pantai Lhoknga', 'Bahari', 'Pantai dengan hamparan pasir luas dan tebing batu karang di salah satu sisinya. Tempat favorit warga Banda Aceh menikmati sore dan matahari terbenam.', 0, 'Lhoknga, Kabupaten Aceh Besar', 5.4668000, 95.2418000, 'destinasi/pantai-lhoknga.svg', 'Parkir, Warung makan, Gazebo', 'Buka 24 jam'),
(7, 'Tugu Nol Kilometer Sabang', 'Sejarah', 'Titik paling barat Indonesia di Pulau Weh. Pengunjung bisa mendapatkan sertifikat kunjungan dan menikmati pemandangan Samudra Hindia.', 0, 'Desa Iboih, Kecamatan Sukakarya, Kota Sabang', 5.9040000, 95.2180000, 'destinasi/tugu-nol-kilometer-sabang.svg', 'Parkir, Warung, Toilet, Sertifikat kunjungan', '08.00 – 18.00 WIB'),
(8, 'Pantai Iboih', 'Bahari', 'Surga snorkeling dan diving dengan air jernih serta terumbu karang yang terjaga, berhadapan langsung dengan Pulau Rubiah.', 0, 'Desa Iboih, Kota Sabang', 5.8790000, 95.2610000, 'destinasi/pantai-iboih.svg', 'Penyewaan alat snorkeling, Penginapan, Warung makan, Perahu ke Pulau Rubiah', 'Buka 24 jam'),
(9, 'Danau Laut Tawar', 'Alam', 'Danau luas di dataran tinggi Gayo yang dikelilingi pegunungan dan kebun kopi. Cocok untuk wisata perahu, memancing depik, dan menikmati kopi Gayo.', 0, 'Takengon, Kabupaten Aceh Tengah', 4.6300000, 96.9200000, 'destinasi/danau-laut-tawar.svg', 'Parkir, Dermaga perahu, Kafe kopi, Penginapan', 'Buka 24 jam'),
(10, 'Ketambe – Taman Nasional Gunung Leuser', 'Alam', 'Kawasan hutan hujan tropis tempat bertemunya orangutan, gajah, harimau, dan badak sumatra. Tersedia jalur trekking dengan pemandu dan penelitian orangutan.', 20000, 'Ketambe, Kabupaten Aceh Tenggara', 3.6930000, 97.6600000, 'destinasi/ketambe-taman-nasional-gunung-leuser.svg', 'Pemandu trekking, Penginapan ekowisata, Pos penjagaan', '07.00 – 17.00 WIB'),
(11, 'Museum Aceh & Rumoh Aceh', 'Budaya', 'Museum tertua di Aceh yang menyimpan koleksi etnografi, naskah kuno, dan senjata tradisional. Di halamannya berdiri Rumoh Aceh, rumah panggung adat dengan ukiran khas, serta lonceng Cakra Donya.', 5000, 'Jl. Sultan Mahmudsyah, Kota Banda Aceh', 5.5527000, 95.3226000, 'destinasi/museum-aceh-rumoh-aceh.svg', 'Parkir, Toilet, Mushala, Pemandu, Taman', '08.30 – 16.30 WIB (Jumat tutup siang)'),
(12, 'Gunongan & Taman Putroe Phang', 'Sejarah', 'Taman istana peninggalan Sultan Iskandar Muda yang dibangun untuk permaisuri dari Pahang. Gunongan berbentuk bukit kecil bertingkat dan menjadi salah satu ikon sejarah Kesultanan Aceh Darussalam.', 0, 'Jl. Teuku Umar, Kota Banda Aceh', 5.5519000, 95.3225000, 'destinasi/gunongan-taman-putroe-phang.svg', 'Taman, Area parkir, Papan informasi', '08.00 – 17.00 WIB'),
(13, 'Pantai Ulee Lheue', 'Bahari', 'Pantai di tepi pelabuhan penyeberangan ke Sabang. Ramai sore hari untuk berjalan santai, menikmati jagung bakar, dan memandang matahari terbenam di Selat Benggala.', 0, 'Ulee Lheue, Kota Banda Aceh', 5.5710000, 95.2960000, 'destinasi/pantai-ulee-lheue.svg', 'Parkir, Warung makan, Gazebo, Toilet', 'Buka 24 jam'),
(14, 'Kapal di Atas Rumah Lampulo', 'Sejarah', 'Kapal nelayan yang tersangkut di atap rumah warga saat tsunami 2004 dan kini dilestarikan sebagai monumen. Tersedia tangga ke dek kapal dan panel penjelasan kisah penyelamatan puluhan warga.', 5000, 'Lampulo, Kota Banda Aceh', 5.5655000, 95.3300000, 'destinasi/kapal-di-atas-rumah-lampulo.svg', 'Parkir, Tangga naik, Papan informasi, Toilet', '08.00 – 17.00 WIB'),
(15, 'Sentra Mie Aceh Peunayong', 'Kuliner', 'Kawasan kuliner legendaris di pecinan Peunayong. Cicipi mie Aceh goreng atau kuah dengan daging, seafood, dan bumbu rempah khas, ditutup martabak atau teh tarik.', 0, 'Peunayong, Kota Banda Aceh', 5.5547000, 95.3270000, 'destinasi/sentra-mie-aceh-peunayong.svg', 'Warung makan, Parkir, Toilet umum', '11.00 – 24.00 WIB'),
(16, 'Kopi Ulee Kareng', 'Kuliner', 'Pusat budaya ngopi Banda Aceh. Kopi disaring dengan kain saring khas dan disajikan bersama kue tradisional. Tempat nongkrong favorit warga dari pagi hingga larut malam.', 0, 'Ulee Kareng, Kota Banda Aceh', 5.5420000, 95.3380000, 'destinasi/kopi-ulee-kareng.svg', 'Warung kopi, Wi-Fi, Parkir', '06.00 – 24.00 WIB'),
(17, 'Makam Syiah Kuala', 'Religi', 'Kompleks makam ulama besar Syekh Abdurrauf as-Singkili (Teungku Syiah Kuala) di dekat muara sungai. Menjadi nama Universitas Syiah Kuala dan tujuan ziarah masyarakat Aceh.', 0, 'Deah Raya, Kuala, Kota Banda Aceh', 5.5993000, 95.3010000, 'destinasi/makam-syiah-kuala.svg', 'Parkir, Tempat wudhu, Mushala', '08.00 – 18.00 WIB'),
(18, 'Pusat Oleh-oleh & Kuliner Khas Aceh Banda Aceh', 'Kuliner', 'Belanja kue khas Aceh seperti keukarah, timphan, adee, dan kopi bubuk untuk oleh-oleh. Beberapa gerai menyediakan kemasan siap bawa pulang.', 0, 'Kota Banda Aceh', 5.5580000, 95.3190000, 'destinasi/pusat-oleh-oleh-kuliner-khas-aceh-banda-aceh.svg', 'Parkir, Toko oleh-oleh, Toilet', '09.00 – 21.00 WIB'),
(19, 'Benteng Indra Patra', 'Sejarah', 'Benteng pertahanan pesisir yang diperkirakan lebih tua dari Kesultanan Aceh Darussalam. Struktur batu dan bunkernya menghadap Selat Malaka, dikelilingi perbukitan dan pemandangan laut.', 5000, 'Ladong, Mesjid Raya, Kabupaten Aceh Besar', 5.6190000, 95.4090000, 'destinasi/benteng-indra-patra.svg', 'Parkir, Toilet, Warung, Papan informasi', '08.00 – 18.00 WIB'),
(20, 'Benteng Inong Balee', 'Sejarah', 'Benteng yang dikaitkan dengan pasukan janda pejuang pimpinan Laksamana Malahayati. Berdiri di tebing menghadap Teluk Krueng Raya dengan panorama laut yang luas.', 0, 'Krueng Raya, Mesjid Raya, Kabupaten Aceh Besar', 5.5950000, 95.5050000, 'destinasi/benteng-inong-balee.svg', 'Parkir, Pos jaga, Papan informasi', '08.00 – 17.00 WIB'),
(21, 'Masjid Tua Indrapuri', 'Religi', 'Masjid bersejarah yang berdiri di atas bekas candi/kuil pra-Islam dengan dinding batu tebal. Menjadi saksi peralihan budaya dari masa Hindu ke Islam di Aceh.', 0, 'Indrapuri, Kabupaten Aceh Besar', 5.4290000, 95.3830000, 'destinasi/masjid-tua-indrapuri.svg', 'Parkir, Tempat wudhu, Toilet', '08.00 – 17.00 WIB (di luar waktu salat)'),
(22, 'Rumah Cut Nyak Dhien', 'Sejarah', 'Replika rumah pahlawan nasional Cut Nyak Dhien yang dibangun kembali setelah dibakar Belanda. Menyimpan perabot dan foto kisah perjuangan sang pejuang perempuan Aceh.', 5000, 'Lampisang, Peukan Bada, Kabupaten Aceh Besar', 5.5250000, 95.2750000, 'destinasi/rumah-cut-nyak-dhien.svg', 'Parkir, Pemandu, Toilet', '08.00 – 17.00 WIB'),
(23, 'Taman Hutan Raya Pocut Meurah Intan', 'Alam', 'Kawasan hutan konservasi di Lembah Seulawah dengan jalur trekking, kolam alami, dan flora fauna khas pegunungan. Cocok untuk wisata keluarga dan perkemahan.', 10000, 'Saree, Lembah Seulawah, Kabupaten Aceh Besar', 5.4600000, 95.5700000, 'destinasi/taman-hutan-raya-pocut-meurah-intan.svg', 'Area kemah, Jalur trekking, Gazebo, Toilet', '08.00 – 17.00 WIB'),
(24, 'Pemandian Air Panas Seulawah', 'Alam', 'Sumber air panas alami di kaki Gunung Seulawah Agam. Airnya kaya belerang dan dipercaya menyegarkan badan. Nikmati sambil menghirup udara sejuk pegunungan.', 5000, 'Seulawah, Kabupaten Aceh Besar', 5.4350000, 95.6350000, 'destinasi/pemandian-air-panas-seulawah.svg', 'Kolam rendam, Warung, Toilet, Parkir', '08.00 – 18.00 WIB'),
(25, 'Pusat Latihan Gajah Saree', 'Edukasi', 'Pusat konservasi dan latihan gajah sumatra. Pengunjung bisa belajar tentang perilaku gajah, memberi makan, dan mengikuti penjelasan pawang mengenai upaya mitigasi konflik satwa.', 10000, 'Saree, Lembah Seulawah, Kabupaten Aceh Besar', 5.4780000, 95.5560000, 'destinasi/pusat-latihan-gajah-saree.svg', 'Pemandu, Parkir, Warung, Toilet', '08.00 – 17.00 WIB'),
(26, 'Kepulauan Pulo Aceh', 'Bahari', 'Gugusan pulau terluar di barat Banda Aceh dengan pantai berpasir putih, laut jernih, dan spot snorkeling yang masih sepi. Dijangkau dengan kapal dari Pelabuhan Lampulo.', 0, 'Pulo Aceh, Kabupaten Aceh Besar', 5.6500000, 95.1000000, 'destinasi/kepulauan-pulo-aceh.svg', 'Homestay, Warung nelayan, Perahu sewa', 'Buka 24 jam'),
(27, 'Kuah Beulangong Aceh Besar', 'Kuliner', 'Gulai daging bersantan dimasak dalam belanga besar dengan bumbu rempah, hidangan khas kenduri Aceh Besar. Biasa dinikmati bersama nasi hangat di warung-warung tepi jalan.', 0, 'Indrapuri, Kabupaten Aceh Besar', 5.4400000, 95.3900000, 'destinasi/kuah-beulangong-aceh-besar.svg', 'Warung makan, Parkir, Mushala', '10.00 – 21.00 WIB'),
(28, 'Pulau Rubiah', 'Bahari', 'Pulau kecil dengan taman laut yang terlindungi, terkenal untuk diving dan snorkeling. Terumbu karangnya tertata baik dan tersedia fasilitas bagi penyelam dari berbagai tingkat.', 0, 'Iboih, Kota Sabang', 5.8800000, 95.2500000, 'destinasi/pulau-rubiah.svg', 'Penyewaan alat, Dive center, Perahu, Warung', '08.00 – 17.00 WIB'),
(29, 'Pantai Gapang', 'Bahari', 'Pantai berpasir putih dengan air tenang yang cocok untuk berenang, snorkeling, dan diving. Banyak penginapan dan dive center di sepanjang pantai.', 0, 'Gapang, Kota Sabang', 5.8650000, 95.2870000, 'destinasi/pantai-gapang.svg', 'Dive center, Penginapan, Warung makan, Parkir', 'Buka 24 jam'),
(30, 'Danau Aneuk Laot', 'Alam', 'Danau alami di tengah kota Sabang yang menjadi sumber air bersih. Tepiannya berupa taman dengan gazebo dan jogging track, nyaman untuk bersantai sore hari.', 0, 'Aneuk Laot, Kota Sabang', 5.8870000, 95.3330000, 'destinasi/danau-aneuk-laot.svg', 'Taman, Gazebo, Jogging track, Parkir', 'Buka 24 jam'),
(31, 'Benteng Anoi Itam', 'Sejarah', 'Bangunan pertahanan peninggalan Jepang di Sabang berupa bunker dan terowongan menghadap Teluk Sabang. Saksi sejarah Perang Dunia II di ujung barat Indonesia.', 5000, 'Anoi Itam, Kota Sabang', 5.8670000, 95.3350000, 'destinasi/benteng-anoi-itam.svg', 'Parkir, Papan informasi, Toilet', '08.00 – 17.00 WIB'),
(32, 'Pantai Sumur Tiga', 'Bahari', 'Pantai dengan pasir putih, nyiur, dan air biru jernih di timur Pulau Weh. Terkenal sebagai tempat bersantai dan snorkeling ringan dengan suasana tenang.', 0, 'Sumur Tiga, Kota Sabang', 5.9020000, 95.3640000, 'destinasi/pantai-sumur-tiga.svg', 'Penginapan, Warung makan, Parkir', 'Buka 24 jam'),
(33, 'Sate Gurita Sabang', 'Kuliner', 'Kuliner khas Sabang berupa gurita muda dibakar dengan bumbu rempah dan kecap. Disajikan hangat bersama lontong dan sambal, tersedia di warung kawasan kota.', 0, 'Kota Sabang', 5.8950000, 95.3200000, 'destinasi/sate-gurita-sabang.svg', 'Warung makan, Parkir, Mushala', '16.00 – 23.00 WIB'),
(34, 'Masjid Islamic Center Lhokseumawe', 'Religi', 'Masjid megah dengan arsitektur modern bernuansa Timur Tengah yang menjadi ikon Kota Lhokseumawe. Menaranya terlihat dari kejauhan dan ramai dikunjungi saat waktu salat.', 0, 'Kota Lhokseumawe', 5.1800000, 97.1350000, 'destinasi/masjid-islamic-center-lhokseumawe.svg', 'Parkir, Tempat wudhu, Toilet, Taman', '08.00 – 17.00 WIB (di luar waktu salat)'),
(35, 'Pantai Ujong Blang', 'Bahari', 'Pantai berpasir cokelat di pesisir Lhokseumawe yang ramai di akhir pekan. Ombaknya tenang untuk bermain air dan banyak warung ikan bakar di tepinya.', 0, 'Ujong Blang, Kota Lhokseumawe', 5.2100000, 97.1520000, 'destinasi/pantai-ujong-blang.svg', 'Parkir, Warung makan, Gazebo, Toilet', 'Buka 24 jam'),
(36, 'Kuliner Seafood Pusong', 'Kuliner', 'Kawasan pelabuhan nelayan Pusong dengan deretan warung seafood segar. Ikan, udang, dan kepiting dimasak langsung sesuai pesanan.', 0, 'Pusong, Kota Lhokseumawe', 5.1950000, 97.1480000, 'destinasi/kuliner-seafood-pusong.svg', 'Warung makan, Parkir, Mushala', '10.00 – 22.00 WIB'),
(37, 'Hutan Mangrove Kuala Langsa', 'Alam', 'Kawasan hutan bakau dengan jembatan kayu dan jalur perahu menyusuri sungai. Habitat berbagai burung dan biota pesisir, serta lokasi edukasi konservasi.', 5000, 'Kuala Langsa, Kota Langsa', 4.5410000, 98.0390000, 'destinasi/hutan-mangrove-kuala-langsa.svg', 'Jembatan kayu, Perahu wisata, Warung, Toilet', '08.00 – 17.00 WIB'),
(38, 'Kuliner Seafood Kuala Langsa', 'Kuliner', 'Warung seafood di tepi pelabuhan nelayan Kuala Langsa yang menyajikan kepiting, udang, dan ikan segar. Cocok dinikmati setelah menjelajah kawasan mangrove.', 0, 'Kuala Langsa, Kota Langsa', 4.5380000, 98.0360000, 'destinasi/kuliner-seafood-kuala-langsa.svg', 'Warung makan, Parkir, Mushala', '10.00 – 22.00 WIB'),
(39, 'Pantai Kuala Langsa', 'Bahari', 'Pantai dan dermaga kecil di muara Langsa yang menjadi titik berangkat perahu nelayan. Sore hari ramai oleh warga yang menikmati angin laut.', 0, 'Kuala Langsa, Kota Langsa', 4.5430000, 98.0420000, 'destinasi/pantai-kuala-langsa.svg', 'Parkir, Warung, Dermaga', 'Buka 24 jam'),
(40, 'Makam Syekh Hamzah Fansuri', 'Religi', 'Makam sufi dan pujangga besar Nusantara abad ke-16 yang dikenal lewat karya syair dan kitab tasawufnya. Terletak di wilayah Rundeng dan menjadi tujuan ziarah.', 0, 'Oboh, Rundeng, Kota Subulussalam', 2.6000000, 97.9500000, 'destinasi/makam-syekh-hamzah-fansuri.svg', 'Area parkir, Mushala, Tempat wudhu', '08.00 – 17.00 WIB'),
(41, 'Air Terjun Lae Kombih', 'Alam', 'Air terjun di tengah hutan dengan aliran jernih dan kolam alami untuk bermain air. Perjalanan menuju lokasi melewati kebun penduduk dan jalur tanah.', 0, 'Kota Subulussalam', 2.6400000, 98.0000000, 'destinasi/air-terjun-lae-kombih.svg', 'Gazebo sederhana, Parkir', '08.00 – 17.00 WIB'),
(42, 'Pantai Alun-alun Sigli', 'Bahari', 'Alun-alun kota di tepi laut yang menjadi ruang publik favorit warga Sigli. Cocok untuk berjalan sore dan menikmati deburan ombak Selat Malaka.', 0, 'Kota Sigli, Kabupaten Pidie', 5.3810000, 95.9650000, 'destinasi/pantai-alun-alun-sigli.svg', 'Taman, Warung, Parkir, Toilet', 'Buka 24 jam'),
(43, 'Pantai Mantak Tari', 'Bahari', 'Pantai dengan pasir gelap yang dipercaya masyarakat bermanfaat bagi kesehatan. Ramai dikunjungi warga lokal pada akhir pekan dan hari libur.', 0, 'Pidie, Kabupaten Pidie', 5.3700000, 96.0000000, 'destinasi/pantai-mantak-tari.svg', 'Parkir, Warung makan, Gazebo', 'Buka 24 jam'),
(44, 'Mie Caluk Sigli', 'Kuliner', 'Mie kuah khas Sigli dengan cita rasa gurih rempah, disajikan dengan sayuran, telur, dan emping. Hidangan favorit warga untuk sarapan maupun makan malam.', 0, 'Kota Sigli, Kabupaten Pidie', 5.3800000, 95.9680000, 'destinasi/mie-caluk-sigli.svg', 'Warung makan, Parkir, Mushala', '08.00 – 22.00 WIB'),
(45, 'Pertunjukan Tari Seudati Pidie', 'Budaya', 'Seudati adalah tari tradisional Aceh yang dikenal berasal dari Pidie, dibawakan delapan penari laki-laki dengan gerak dan syair serempak. Pertunjukan dapat disaksikan melalui sanggar seni setempat.', 25000, 'Kota Sigli, Kabupaten Pidie', 5.3820000, 95.9700000, 'destinasi/pertunjukan-tari-seudati-pidie.svg', 'Panggung, Parkir, Pemandu budaya', 'Jadwal pertunjukan menyesuaikan'),
(46, 'Pantai Wisata Islami Pidie Jaya', 'Bahari', 'Pantai tepi jalan nasional dengan aturan berpakaian islami. Dilengkapi gazebo, mushala, dan area bermain anak sehingga nyaman untuk wisata keluarga.', 0, 'Tringgadeng, Kabupaten Pidie Jaya', 5.2400000, 96.2300000, 'destinasi/pantai-wisata-islami-pidie-jaya.svg', 'Gazebo, Mushala, Toilet, Area bermain anak', '08.00 – 18.00 WIB'),
(47, 'Kue Adee & Sie Reuboh Meureudu', 'Kuliner', 'Meureudu dikenal dengan kue adee yang manis dan lembut serta sie reuboh, daging direbus dengan cuka dan bumbu tradisional khas Aceh.', 0, 'Meureudu, Kabupaten Pidie Jaya', 5.2570000, 96.2560000, 'destinasi/kue-adee-sie-reuboh-meureudu.svg', 'Toko kue, Warung makan, Parkir', '08.00 – 21.00 WIB'),
(48, 'Sate Matang', 'Kuliner', 'Sate daging sapi dan kambing dari Matang Geulumpang Dua dengan bumbu kacang kental dan irisan lontong. Menjadi salah satu ikon kuliner jalur timur Aceh.', 0, 'Matang Geulumpang Dua, Peusangan, Kabupaten Bireuen', 5.1710000, 96.6840000, 'destinasi/sate-matang.svg', 'Warung sate, Parkir, Mushala', '10.00 – 22.00 WIB'),
(49, 'Tugu Kota Juang Bireuen', 'Sejarah', 'Monumen yang mengenang peran Bireuen sebagai kota perjuangan dan pusat pemerintahan darurat pada masa revolusi kemerdekaan.', 0, 'Kota Bireuen, Kabupaten Bireuen', 5.2030000, 96.7010000, 'destinasi/tugu-kota-juang-bireuen.svg', 'Taman, Parkir, Papan informasi', 'Buka 24 jam'),
(50, 'Dayah MUDI Mesra Samalanga', 'Edukasi', 'Pesantren tradisional (dayah) besar di Samalanga yang menjadi pusat pendidikan ulama di Aceh. Pengunjung dapat mengenal tradisi pengajian kitab kuning dan kehidupan santri.', 0, 'Samalanga, Kabupaten Bireuen', 5.2250000, 96.5300000, 'destinasi/dayah-mudi-mesra-samalanga.svg', 'Parkir, Mushala, Tempat wudhu', '08.00 – 17.00 WIB (izin pengurus)'),
(51, 'Makam Sultan Malikussaleh', 'Religi', 'Makam raja pertama Kerajaan Samudera Pasai, kerajaan Islam pertama di Nusantara. Kompleks makam menjadi tujuan ziarah dan wisata sejarah.', 0, 'Samudera, Kabupaten Aceh Utara', 5.2250000, 97.1900000, 'destinasi/makam-sultan-malikussaleh.svg', 'Parkir, Mushala, Papan informasi', '08.00 – 17.00 WIB'),
(52, 'Makam Ratu Nahrasyiyah', 'Sejarah', 'Makam ratu Samudera Pasai dengan batu nisan marmer berukir kaligrafi indah yang diperkirakan dari abad ke-15. Bagian dari kawasan situs Samudera Pasai.', 0, 'Samudera, Kabupaten Aceh Utara', 5.2310000, 97.1850000, 'destinasi/makam-ratu-nahrasyiyah.svg', 'Parkir, Papan informasi', '08.00 – 17.00 WIB'),
(53, 'Pantai Lancok', 'Bahari', 'Pantai di pesisir Aceh Utara dengan hamparan pasir dan angin laut yang sejuk. Tempat warga bersantai dan menikmati ikan bakar.', 0, 'Syamtalira Bayu, Kabupaten Aceh Utara', 5.2530000, 97.2330000, 'destinasi/pantai-lancok.svg', 'Parkir, Warung makan, Gazebo', 'Buka 24 jam'),
(54, 'Situs Kerajaan Islam Peureulak', 'Sejarah', 'Kawasan peninggalan Kerajaan Peureulak yang disebut sebagai salah satu kerajaan Islam tertua di Nusantara, lengkap dengan makam raja dan nisan kuno.', 0, 'Peureulak, Kabupaten Aceh Timur', 4.8050000, 97.7760000, 'destinasi/situs-kerajaan-islam-peureulak.svg', 'Parkir, Mushala, Papan informasi', '08.00 – 17.00 WIB'),
(55, 'Pelabuhan & Mangrove Kuala Idi', 'Alam', 'Kawasan pesisir Idi Rayeuk dengan hutan bakau dan pelabuhan nelayan yang ramai. Pagi hari menyaksikan kapal nelayan bersandar dan lelang ikan.', 0, 'Idi Rayeuk, Kabupaten Aceh Timur', 4.9200000, 97.7700000, 'destinasi/pelabuhan-mangrove-kuala-idi.svg', 'Parkir, Warung, Dermaga', '07.00 – 17.00 WIB'),
(56, 'Kuliner Udang & Kepiting Idi', 'Kuliner', 'Warung-warung di pesisir Idi menawarkan udang dan kepiting segar hasil tangkapan nelayan, diolah dengan bumbu pedas khas Aceh.', 0, 'Idi Rayeuk, Kabupaten Aceh Timur', 4.9150000, 97.7800000, 'destinasi/kuliner-udang-kepiting-idi.svg', 'Warung makan, Parkir, Mushala', '10.00 – 22.00 WIB'),
(57, 'Pusong Kapal Seruway', 'Bahari', 'Kawasan pesisir dan hutan bakau di Seruway dengan dermaga kayu dan warung ikan bakar. Sore hari ramai oleh keluarga yang menikmati laut dan pesisir.', 0, 'Seruway, Kabupaten Aceh Tamiang', 4.4000000, 98.1500000, 'destinasi/pusong-kapal-seruway.svg', 'Dermaga, Warung, Parkir', 'Buka 24 jam'),
(58, 'Museum Daerah Tamiang', 'Edukasi', 'Museum yang menyimpan koleksi sejarah dan budaya Melayu Tamiang, dari benda adat, pakaian, hingga naskah dan peralatan tradisional.', 3000, 'Karang Baru, Kabupaten Aceh Tamiang', 4.2900000, 98.0700000, 'destinasi/museum-daerah-tamiang.svg', 'Parkir, Toilet, Pemandu', '09.00 – 16.00 WIB'),
(59, 'Kuliner Melayu Tamiang', 'Kuliner', 'Cicipi masakan Melayu Tamiang seperti gulai ikan dan asam pedas dengan rempah segar. Disajikan hangat bersama nasi dan sambal.', 0, 'Kuala Simpang, Kabupaten Aceh Tamiang', 4.2733000, 98.0617000, 'destinasi/kuliner-melayu-tamiang.svg', 'Warung makan, Parkir, Mushala', '10.00 – 21.00 WIB'),
(60, 'Bur Telege', 'Alam', 'Bukit dengan pemandangan panorama Danau Laut Tawar dan kota Takengon dari ketinggian. Sunrise dan kabut pagi menjadi daya tarik utama.', 5000, 'Takengon, Kabupaten Aceh Tengah', 4.6010000, 96.8500000, 'destinasi/bur-telege.svg', 'Gazebo, Warung, Parkir', '06.00 – 18.00 WIB'),
(61, 'Loyang Mendale', 'Sejarah', 'Situs gua prasejarah tempat ditemukan peninggalan manusia dan hewan purba berusia ribuan tahun. Terletak tidak jauh dari Danau Laut Tawar.', 0, 'Kebayakan, Kabupaten Aceh Tengah', 4.6400000, 96.8700000, 'destinasi/loyang-mendale.svg', 'Parkir, Pemandu, Papan informasi', '08.00 – 17.00 WIB'),
(62, 'Masjid Ruhama Takengon', 'Religi', 'Masjid ikonik di Takengon dengan arsitektur khas dan latar pegunungan. Menjadi pusat kegiatan keagamaan dan salah satu landmark kota.', 0, 'Takengon, Kabupaten Aceh Tengah', 4.6340000, 96.8450000, 'destinasi/masjid-ruhama-takengon.svg', 'Parkir, Tempat wudhu, Toilet', '08.00 – 17.00 WIB (di luar waktu salat)'),
(63, 'Pantai Menye Danau Laut Tawar', 'Alam', 'Tepian Danau Laut Tawar dengan pasir dan air yang jernih, cocok untuk bersantai dan berfoto dengan latar pegunungan.', 0, 'Takengon, Kabupaten Aceh Tengah', 4.6200000, 96.8800000, 'destinasi/pantai-menye-danau-laut-tawar.svg', 'Gazebo, Warung, Parkir', 'Buka 24 jam'),
(64, 'Edukasi Kebun Kopi Gayo Takengon', 'Edukasi', 'Belajar proses kopi arabika Gayo dari kebun hingga cangkir: petik, pengolahan, sangrai, dan sesi cicip kopi bersama petani lokal.', 30000, 'Takengon, Kabupaten Aceh Tengah', 4.6150000, 96.8600000, 'destinasi/edukasi-kebun-kopi-gayo-takengon.svg', 'Pemandu, Cupping kopi, Parkir, Toilet', '08.00 – 17.00 WIB'),
(65, 'Pertunjukan Didong & Tari Saman Gayo', 'Budaya', 'Menyaksikan seni vokal Didong dan tari Saman khas Gayo yang dibawakan secara berkelompok dengan irama tepukan dan syair.', 25000, 'Takengon, Kabupaten Aceh Tengah', 4.6300000, 96.8400000, 'destinasi/pertunjukan-didong-tari-saman-gayo.svg', 'Panggung, Parkir, Pemandu budaya', 'Jadwal pertunjukan menyesuaikan'),
(66, 'Kuliner Ikan Depik & Asam Keueng Takengon', 'Kuliner', 'Cicipi ikan depik khas Danau Laut Tawar serta asam keueng, masakan asam pedas khas Gayo, di warung-warung sekitar danau.', 0, 'Takengon, Kabupaten Aceh Tengah', 4.6310000, 96.8500000, 'destinasi/kuliner-ikan-depik-asam-keueng-takengon.svg', 'Warung makan, Parkir, Mushala', '10.00 – 21.00 WIB'),
(67, 'Rumah Adat Gayo Umah Pitu Ruang', 'Budaya', 'Rumah adat Gayo bertiang tinggi dengan ukiran Kerawang Gayo. Menjadi pusat pengenalan arsitektur dan tradisi masyarakat Gayo.', 5000, 'Takengon, Kabupaten Aceh Tengah', 4.6280000, 96.8350000, 'destinasi/rumah-adat-gayo-umah-pitu-ruang.svg', 'Pemandu, Parkir, Toilet', '09.00 – 16.00 WIB'),
(68, 'Gunung Burni Telong', 'Alam', 'Gunung berapi aktif di dataran tinggi Gayo yang menantang didaki dengan pemandangan lanskap kebun kopi dan kawah di puncak.', 10000, 'Pondok Baru, Kabupaten Bener Meriah', 4.7670000, 96.8210000, 'destinasi/gunung-burni-telong.svg', 'Pos pendakian, Pemandu, Parkir', 'Pendakian dimulai subuh'),
(69, 'Kebun Kopi Arabika Bener Meriah', 'Edukasi', 'Kebun kopi arabika di dataran tinggi Bener Meriah dengan pengalaman memetik, mengolah, dan mencicip kopi langsung bersama petani.', 20000, 'Redelong, Kabupaten Bener Meriah', 4.7300000, 96.8500000, 'destinasi/kebun-kopi-arabika-bener-meriah.svg', 'Pemandu, Cupping kopi, Parkir', '08.00 – 17.00 WIB'),
(70, 'Kampung Budaya Tari Saman Blangkejeren', 'Budaya', 'Tari Saman, warisan budaya dunia UNESCO, berasal dari Gayo Lues. Pengunjung dapat menyaksikan dan belajar gerakan dasar bersama para penari lokal.', 25000, 'Blangkejeren, Kabupaten Gayo Lues', 3.9694000, 97.3510000, 'destinasi/kampung-budaya-tari-saman-blangkejeren.svg', 'Panggung, Pemandu budaya, Parkir', 'Jadwal pertunjukan menyesuaikan'),
(71, 'Pegunungan Leuser Sisi Gayo Lues', 'Alam', 'Kawasan hutan dan pegunungan Leuser di wilayah Gayo Lues dengan jalur trekking, air terjun, dan satwa langka. Perlu pemandu lokal.', 20000, 'Blangkejeren, Kabupaten Gayo Lues', 3.9000000, 97.3000000, 'destinasi/pegunungan-leuser-sisi-gayo-lues.svg', 'Pemandu trekking, Pos penjagaan', '07.00 – 17.00 WIB'),
(72, 'Arung Jeram Sungai Alas', 'Alam', 'Sungai Alas menawarkan arung jeram dengan jeram deras di tengah lembah hijau. Cocok bagi pecinta petualangan dengan pemandu berpengalaman.', 150000, 'Kutacane, Kabupaten Aceh Tenggara', 3.4900000, 97.8000000, 'destinasi/arung-jeram-sungai-alas.svg', 'Perahu karet, Pemandu, Perlengkapan keselamatan', '07.00 – 16.00 WIB'),
(73, 'Kampung Budaya Alas & Tari Mesekat', 'Budaya', 'Mengenal budaya suku Alas dan menyaksikan tari Mesekat bersama masyarakat Kutacane dalam suasana kampung tradisional.', 20000, 'Kutacane, Kabupaten Aceh Tenggara', 3.4950000, 97.8050000, 'destinasi/kampung-budaya-alas-tari-mesekat.svg', 'Panggung, Pemandu budaya, Parkir', 'Jadwal pertunjukan menyesuaikan'),
(74, 'Pulau Banyak', 'Bahari', 'Gugusan pulau dengan pantai pasir putih, laut biru jernih, dan terumbu karang yang cocok untuk snorkeling, diving, dan memancing.', 0, 'Pulau Banyak, Kabupaten Aceh Singkil', 2.2000000, 97.3000000, 'destinasi/pulau-banyak.svg', 'Homestay, Perahu sewa, Warung nelayan', 'Buka 24 jam'),
(75, 'Pulau Panjang', 'Bahari', 'Pulau terbesar di gugusan Pulau Banyak dengan pantai panjang berpasir putih dan perairan jernih. Cocok untuk berkemah dan bersantai.', 0, 'Pulau Banyak, Kabupaten Aceh Singkil', 2.2800000, 97.3300000, 'destinasi/pulau-panjang.svg', 'Homestay, Warung, Perahu sewa', 'Buka 24 jam'),
(76, 'Suaka Margasatwa Rawa Singkil', 'Alam', 'Kawasan rawa gambut luas yang menjadi habitat orangutan sumatra, harimau, dan berbagai burung air. Dijelajahi dengan perahu bersama pemandu.', 15000, 'Singkil, Kabupaten Aceh Singkil', 2.6500000, 97.7500000, 'destinasi/suaka-margasatwa-rawa-singkil.svg', 'Perahu, Pemandu, Pos penjagaan', '07.00 – 17.00 WIB'),
(77, 'Tapak Tuan Tapa', 'Budaya', 'Legenda Tuan Tapa yang diabadikan dalam jejak batu raksasa di pesisir Tapaktuan. Menjadi asal-usul nama kota dan daya tarik wisata budaya.', 0, 'Tapaktuan, Kabupaten Aceh Selatan', 3.2620000, 97.1850000, 'destinasi/tapak-tuan-tapa.svg', 'Parkir, Papan informasi, Warung', 'Buka 24 jam'),
(78, 'Teluk Tapaktuan', 'Bahari', 'Teluk dengan pantai berbatu dan air laut biru di kaki perbukitan. Menawarkan pemandangan sunset dan suasana kota pesisir yang tenang.', 0, 'Tapaktuan, Kabupaten Aceh Selatan', 3.2600000, 97.1900000, 'destinasi/teluk-tapaktuan.svg', 'Taman, Warung, Parkir', 'Buka 24 jam'),
(79, 'Manisan Pala Tapaktuan', 'Kuliner', 'Aceh Selatan terkenal sebagai penghasil pala. Cicipi manisan pala dan olahan lain sebagai oleh-oleh khas Tapaktuan.', 0, 'Tapaktuan, Kabupaten Aceh Selatan', 3.2640000, 97.1880000, 'destinasi/manisan-pala-tapaktuan.svg', 'Toko oleh-oleh, Parkir', '08.00 – 20.00 WIB'),
(80, 'Hutan Kluet Taman Nasional Gunung Leuser', 'Alam', 'Hutan hujan tropis di sisi Kluet, bagian dari kawasan Leuser. Menawarkan jalur trekking dan kesempatan melihat satwa langka bersama pemandu.', 20000, 'Kluet, Kabupaten Aceh Selatan', 3.0900000, 97.3300000, 'destinasi/hutan-kluet-taman-nasional-gunung-leuser.svg', 'Pemandu, Pos jaga, Penginapan sederhana', '07.00 – 17.00 WIB'),
(81, 'Pantai Ujong Serangga', 'Bahari', 'Pantai pesisir Abdya dengan pasir lebar dan ombak sedang. Cocok untuk bersantai, bermain air, dan menikmati matahari terbenam.', 0, 'Susoh, Kabupaten Aceh Barat Daya', 3.7600000, 96.8300000, 'destinasi/pantai-ujong-serangga.svg', 'Parkir, Warung, Gazebo', 'Buka 24 jam'),
(82, 'Ikan Bakar Pelabuhan Susoh', 'Kuliner', 'Pelabuhan perikanan Susoh menyediakan ikan segar yang dibakar atau digulai langsung di warung tepi pelabuhan.', 0, 'Susoh, Kabupaten Aceh Barat Daya', 3.7550000, 96.8350000, 'destinasi/ikan-bakar-pelabuhan-susoh.svg', 'Warung makan, Parkir, Mushala', '10.00 – 22.00 WIB'),
(83, 'Kampung Budaya Aneuk Jamee Blangpidie', 'Budaya', 'Mengenal budaya Aneuk Jamee, masyarakat pesisir barat selatan Aceh, lewat tarian, musik, dan masakan tradisional.', 15000, 'Blangpidie, Kabupaten Aceh Barat Daya', 3.7330000, 96.8460000, 'destinasi/kampung-budaya-aneuk-jamee-blangpidie.svg', 'Panggung, Pemandu budaya, Parkir', 'Jadwal pertunjukan menyesuaikan'),
(84, 'Pantai Lamno', 'Bahari', 'Pantai pesisir Aceh Jaya dengan pasir panjang dan hutan pantai yang rindang. Terkenal sepi dan pemandangan pegunungan di sisi daratnya.', 0, 'Lamno, Kabupaten Aceh Jaya', 4.9050000, 95.4260000, 'destinasi/pantai-lamno.svg', 'Parkir, Warung, Gazebo', 'Buka 24 jam'),
(85, 'Pantai Calang', 'Bahari', 'Pantai ibu kota Aceh Jaya dengan suasana tenang, cocok untuk berjalan santai dan menikmati makanan laut di warung sekitar.', 0, 'Calang, Kabupaten Aceh Jaya', 4.6270000, 95.5810000, 'destinasi/pantai-calang.svg', 'Parkir, Warung, Toilet', 'Buka 24 jam'),
(86, 'Situs Kerajaan Daya Lamno', 'Sejarah', 'Jejak Kerajaan Daya di Lamno yang dikenal dalam sejarah pesisir barat Aceh, termasuk makam dan peninggalan budaya.', 0, 'Lamno, Kabupaten Aceh Jaya', 4.9000000, 95.4300000, 'destinasi/situs-kerajaan-daya-lamno.svg', 'Parkir, Papan informasi', '08.00 – 17.00 WIB'),
(87, 'Pantai Suak Ribee', 'Bahari', 'Pantai di Meulaboh dengan hamparan pasir luas dan ombak khas Samudra Hindia. Cocok untuk wisata keluarga di akhir pekan.', 0, 'Meulaboh, Kabupaten Aceh Barat', 4.1380000, 96.0600000, 'destinasi/pantai-suak-ribee.svg', 'Parkir, Warung, Gazebo', 'Buka 24 jam'),
(88, 'Makam Teuku Umar Johan Pahlawan', 'Sejarah', 'Makam pahlawan nasional Teuku Umar di dekat Meulaboh. Tempat berziarah dan mengenang perjuangan melawan penjajahan Belanda.', 0, 'Kaway XVI, Kabupaten Aceh Barat', 4.1900000, 96.1600000, 'destinasi/makam-teuku-umar-johan-pahlawan.svg', 'Parkir, Mushala, Papan informasi', '08.00 – 17.00 WIB'),
(89, 'Masjid Agung Baitul Makmur Meulaboh', 'Religi', 'Masjid agung kebanggaan warga Aceh Barat dengan kubah besar dan halaman luas. Ramai dikunjungi saat waktu salat dan kegiatan keagamaan.', 0, 'Meulaboh, Kabupaten Aceh Barat', 4.1400000, 96.1250000, 'destinasi/masjid-agung-baitul-makmur-meulaboh.svg', 'Parkir, Tempat wudhu, Toilet', '08.00 – 17.00 WIB (di luar waktu salat)'),
(90, 'Warung Kopi Tradisional Meulaboh', 'Kuliner', 'Meulaboh dikenal dengan budaya warung kopi. Nikmati kopi hitam dan kue tradisional bersama obrolan hangat khas pesisir barat.', 0, 'Meulaboh, Kabupaten Aceh Barat', 4.1360000, 96.1270000, 'destinasi/warung-kopi-tradisional-meulaboh.svg', 'Warung kopi, Parkir, Wi-Fi', '06.00 – 24.00 WIB'),
(91, 'Suaka Margasatwa Rawa Tripa', 'Alam', 'Kawasan rawa gambut penting dengan satwa seperti orangutan dan burung air. Menjadi lokasi wisata konservasi dan edukasi lingkungan.', 15000, 'Kuala, Kabupaten Nagan Raya', 3.7200000, 96.6000000, 'destinasi/suaka-margasatwa-rawa-tripa.svg', 'Pemandu, Perahu, Pos jaga', '07.00 – 17.00 WIB'),
(92, 'Pantai Suak Puntong', 'Bahari', 'Pantai sepi dengan pasir cokelat dan deretan pohon pinus laut. Cocok untuk wisata alam yang tenang di pesisir Nagan Raya.', 0, 'Kuala Pesisir, Kabupaten Nagan Raya', 3.8300000, 96.4300000, 'destinasi/pantai-suak-puntong.svg', 'Parkir, Warung, Gazebo', 'Buka 24 jam'),
(93, 'Pantai Alus-Alus', 'Bahari', 'Pantai berpasir putih dengan air jernih di Pulau Simeulue. Cocok untuk berenang, snorkeling, dan menikmati suasana pulau yang tenang.', 0, 'Simeulue, Kabupaten Simeulue', 2.5500000, 96.4700000, 'destinasi/pantai-alus-alus.svg', 'Homestay, Warung, Perahu sewa', 'Buka 24 jam'),
(94, 'Monumen Smong Simeulue', 'Edukasi', 'Monumen yang mengenang kearifan lokal smong, tradisi lisan peringatan tsunami yang menyelamatkan banyak nyawa warga Simeulue pada 2004.', 0, 'Sinabang, Kabupaten Simeulue', 2.4670000, 96.3800000, 'destinasi/monumen-smong-simeulue.svg', 'Parkir, Papan informasi, Pemandu', '08.00 – 17.00 WIB'),
(95, 'Sentra Lobster Simeulue', 'Kuliner', 'Simeulue dikenal sebagai penghasil lobster. Nikmati lobster segar yang dibakar atau dimasak saus khas di warung-warung pesisir Sinabang.', 0, 'Sinabang, Kabupaten Simeulue', 2.4650000, 96.3850000, 'destinasi/sentra-lobster-simeulue.svg', 'Warung makan, Parkir, Mushala', '10.00 – 22.00 WIB');

-- --------------------------------------------------------

--
-- Table structure for table `destinasi_paket`
--

CREATE TABLE `destinasi_paket` (
  `id_detail` bigint(20) UNSIGNED NOT NULL,
  `id_paket` bigint(20) UNSIGNED NOT NULL,
  `id_destinasi` bigint(20) UNSIGNED NOT NULL,
  `urutan_kunjungan` smallint(5) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `destinasi_paket`
--

INSERT INTO `destinasi_paket` (`id_detail`, `id_paket`, `id_destinasi`, `urutan_kunjungan`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(2, 1, 2, 2, '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(3, 1, 3, 3, '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(4, 1, 4, 4, '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(5, 2, 7, 1, '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(6, 2, 8, 2, '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(7, 3, 5, 1, '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(8, 3, 6, 2, '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(9, 4, 9, 1, '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(10, 4, 10, 2, '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(11, 5, 15, 1, '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(12, 5, 16, 2, '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(13, 5, 18, 3, '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(14, 6, 2, 1, '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(15, 6, 3, 2, '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(16, 6, 14, 3, '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(17, 6, 13, 4, '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(18, 7, 11, 1, '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(19, 7, 12, 2, '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(20, 7, 21, 3, '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(21, 7, 19, 4, '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(22, 7, 20, 5, '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(23, 8, 23, 1, '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(24, 8, 25, 2, '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(25, 8, 24, 3, '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(26, 9, 26, 1, '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(27, 9, 22, 2, '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(28, 10, 28, 1, '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(29, 10, 8, 2, '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(30, 10, 29, 3, '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(31, 10, 32, 4, '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(32, 11, 7, 1, '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(33, 11, 31, 2, '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(34, 11, 30, 3, '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(35, 11, 33, 4, '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(36, 12, 42, 1, '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(37, 12, 43, 2, '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(38, 12, 44, 3, '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(39, 12, 45, 4, '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(40, 12, 46, 5, '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(41, 12, 47, 6, '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(42, 12, 48, 7, '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(43, 12, 49, 8, '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(44, 13, 51, 1, '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(45, 13, 52, 2, '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(46, 13, 34, 3, '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(47, 13, 35, 4, '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(48, 13, 36, 5, '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(49, 14, 37, 1, '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(50, 14, 38, 2, '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(51, 14, 58, 3, '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(52, 14, 57, 4, '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(53, 14, 54, 5, '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(54, 15, 9, 1, '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(55, 15, 60, 2, '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(56, 15, 61, 3, '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(57, 15, 62, 4, '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(58, 15, 64, 5, '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(59, 15, 65, 6, '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(60, 16, 68, 1, '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(61, 16, 69, 2, '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(62, 16, 67, 3, '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(63, 17, 70, 1, '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(64, 17, 71, 2, '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(65, 17, 72, 3, '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(66, 17, 73, 4, '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(67, 18, 74, 1, '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(68, 18, 75, 2, '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(69, 18, 76, 3, '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(70, 19, 77, 1, '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(71, 19, 78, 2, '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(72, 19, 79, 3, '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(73, 19, 81, 4, '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(74, 19, 82, 5, '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(75, 20, 84, 1, '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(76, 20, 86, 2, '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(77, 20, 87, 3, '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(78, 20, 88, 4, '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(79, 20, 90, 5, '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(80, 20, 91, 6, '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(81, 21, 93, 1, '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(82, 21, 94, 2, '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(83, 21, 95, 3, '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(84, 22, 1, 1, '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(85, 22, 17, 2, '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(86, 22, 21, 3, '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(87, 22, 50, 4, '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(88, 22, 34, 5, '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(89, 23, 15, 1, '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(90, 23, 44, 2, '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(91, 23, 48, 3, '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(92, 23, 36, 4, '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(93, 23, 66, 5, '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(94, 24, 11, 1, '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(95, 24, 45, 2, '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(96, 24, 65, 3, '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(97, 24, 70, 4, '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(98, 24, 73, 5, '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(99, 25, 2, 1, '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(100, 25, 11, 2, '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(101, 25, 25, 3, '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(102, 25, 22, 4, '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(103, 26, 13, 1, '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(104, 26, 5, 2, '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(105, 26, 6, 3, '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(106, 27, 23, 1, '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(107, 27, 30, 2, '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(108, 27, 29, 3, '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(109, 27, 28, 4, '2026-10-24 01:00:00', '2026-10-24 01:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `paket_wisata`
--

CREATE TABLE `paket_wisata` (
  `id_paket` bigint(20) UNSIGNED NOT NULL,
  `nama_paket` varchar(150) NOT NULL,
  `deskripsi` text NOT NULL,
  `harga` int(10) UNSIGNED NOT NULL,
  `durasi` varchar(50) NOT NULL,
  `fasilitas` text DEFAULT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'aktif',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `paket_wisata`
--

INSERT INTO `paket_wisata` (`id_paket`, `nama_paket`, `deskripsi`, `harga`, `durasi`, `fasilitas`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Banda Aceh Heritage Tour', 'Menyusuri jejak sejarah dan religi Kota Banda Aceh: dari masjid ikonik, museum tsunami, hingga situs peninggalan perang.', 850000, '2 Hari 1 Malam', 'Transportasi AC, Hotel 1 malam, Makan 3x, Pemandu lokal, Tiket masuk', 'aktif', '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(2, 'Sabang Island Escape', 'Petualangan di ujung barat Indonesia: berdiri di titik nol kilometer dan snorkeling di perairan jernih Iboih.', 2100000, '3 Hari 2 Malam', 'Kapal cepat Banda Aceh–Sabang PP, Hotel 2 malam, Makan 6x, Alat snorkeling, Pemandu lokal', 'aktif', '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(3, 'Pantai Aceh Besar One Day Trip', 'Wisata sehari menikmati pantai-pantai terbaik di Aceh Besar dan matahari terbenam di Lhoknga.', 450000, '1 Hari', 'Transportasi AC, Makan siang, Pemandu lokal, Air mineral', 'aktif', '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(4, 'Gayo & Leuser Adventure', 'Menjelajah dataran tinggi Gayo dan hutan hujan Leuser: danau, kopi, dan perjumpaan dengan satwa liar.', 3200000, '4 Hari 3 Malam', 'Transportasi 4WD, Penginapan 3 malam, Makan 9x, Pemandu trekking, Tiket masuk taman nasional', 'aktif', '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(5, 'Banda Aceh Kuliner & Kopi Trail', 'Wisata sehari menyusuri rasa Banda Aceh: mie Aceh di Peunayong, kopi saring Ulee Kareng, dan oleh-oleh kue khas Aceh.', 350000, '1 Hari', 'Transportasi AC, Makan siang, Cicip kopi & kue, Pemandu lokal, Air mineral', 'aktif', '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(6, 'Tsunami Memorial & Edukasi Banda Aceh', 'Paket edukasi mengenang tsunami 2004: museum, kapal di atas rumah, dan kapal PLTD Apung bersama pemandu yang menceritakan kisah penyintas.', 300000, '1 Hari', 'Transportasi AC, Makan siang, Pemandu edukasi, Tiket masuk, Air mineral', 'aktif', '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(7, 'Jejak Kesultanan Aceh Darussalam', 'Menelusuri peninggalan kejayaan Kesultanan Aceh: istana taman, museum, benteng pesisir, dan masjid tua.', 1150000, '2 Hari 1 Malam', 'Transportasi AC, Hotel 1 malam, Makan 4x, Pemandu sejarah, Tiket masuk', 'aktif', '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(8, 'Aceh Besar Alam & Seulawah', 'Wisata alam sehari di Lembah Seulawah: hutan raya, air panas, dan bertemu gajah di pusat konservasi.', 500000, '1 Hari', 'Transportasi AC, Makan siang, Pemandu lokal, Tiket masuk, Air mineral', 'aktif', '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(9, 'Pulo Aceh Island Hopping', 'Berlayar ke kepulauan Pulo Aceh: pantai pasir putih, snorkeling, dan menginap di homestay nelayan.', 1800000, '3 Hari 2 Malam', 'Kapal PP, Homestay 2 malam, Makan 6x, Alat snorkeling, Pemandu lokal', 'aktif', '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(10, 'Sabang Diving & Snorkeling Camp', 'Paket bahari khusus penyelam dan penyuka laut: Rubiah, Gapang, Iboih, dan Sumur Tiga dengan instruktur lokal.', 2800000, '3 Hari 2 Malam', 'Kapal cepat PP, Hotel 2 malam, Makan 6x, Alat snorkeling, 2x sesi diving (untuk penyelam bersertifikat), Pemandu', 'aktif', '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(11, 'Sabang Sejarah & Kuliner', 'Dari titik nol kilometer hingga benteng Jepang di Anoi Itam, ditutup sate gurita dan sunset di Aneuk Laot.', 1600000, '2 Hari 1 Malam', 'Kapal cepat PP, Hotel 1 malam, Makan 4x, Pemandu lokal, Transportasi lokal', 'aktif', '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(12, 'Pesisir Utara Pidie – Pidie Jaya – Bireuen', 'Jelajah jalur timur Aceh dengan pantai, kuliner khas, dan wisata budaya dari Sigli hingga Matang.', 1900000, '3 Hari 2 Malam', 'Transportasi AC, Hotel 2 malam, Makan 6x, Pemandu lokal, Tiket pertunjukan', 'aktif', '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(13, 'Samudera Pasai & Lhokseumawe Heritage', 'Mengunjungi situs kerajaan Islam pertama di Nusantara dan menikmati pesisir serta kuliner Lhokseumawe.', 1200000, '2 Hari 1 Malam', 'Transportasi AC, Hotel 1 malam, Makan 4x, Pemandu sejarah, Tiket masuk', 'aktif', '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(14, 'Pesisir Timur Aceh: Langsa – Tamiang – Aceh Timur', 'Ekspedisi pesisir timur: hutan bakau, museum Melayu Tamiang, dan situs kerajaan Islam Peureulak.', 2300000, '3 Hari 2 Malam', 'Transportasi AC, Hotel 2 malam, Makan 6x, Pemandu lokal, Perahu mangrove', 'aktif', '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(15, 'Takengon Gayo Highland', 'Dataran tinggi Gayo: danau, bukit panorama, situs prasejarah, kebun kopi, dan pertunjukan didong.', 2400000, '3 Hari 2 Malam', 'Transportasi AC, Penginapan 2 malam, Makan 6x, Pemandu lokal, Tiket masuk, Cupping kopi', 'aktif', '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(16, 'Burni Telong & Kopi Bener Meriah', 'Mendaki gunung api Burni Telong dan belajar mengolah kopi arabika di Bener Meriah.', 1500000, '2 Hari 1 Malam', 'Transportasi 4WD, Penginapan 1 malam, Makan 4x, Pemandu pendakian, Tiket masuk', 'aktif', '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(17, 'Saman Gayo Lues & Arung Jeram Alas', 'Budaya Saman di Blangkejeren dan petualangan arung jeram di Sungai Alas, Kutacane.', 3500000, '4 Hari 3 Malam', 'Transportasi 4WD, Penginapan 3 malam, Makan 9x, Pemandu, Perlengkapan arung jeram', 'aktif', '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(18, 'Singkil – Pulau Banyak Escape', 'Petualangan ke Pulau Banyak dan rawa gambut Singkil: laut jernih, snorkeling, dan satwa.', 3000000, '4 Hari 3 Malam', 'Kapal PP, Homestay 3 malam, Makan 9x, Alat snorkeling, Pemandu lokal', 'aktif', '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(19, 'Pantai Selatan Aceh: Tapaktuan – Abdya', 'Menyusuri pantai selatan Aceh: legenda Tapak Tuan Tapa, manisan pala, dan ikan bakar Susoh.', 2200000, '3 Hari 2 Malam', 'Transportasi AC, Hotel 2 malam, Makan 6x, Pemandu lokal', 'aktif', '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(20, 'Pantai Barat Aceh Jaya – Meulaboh – Nagan Raya', 'Rute pesisir barat: pantai panjang, sejarah Teuku Umar, kopi Meulaboh, dan rawa Tripa.', 2500000, '3 Hari 2 Malam', 'Transportasi AC, Hotel 2 malam, Makan 6x, Pemandu lokal', 'aktif', '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(21, 'Simeulue Surf & Lobster', 'Pulau di barat Aceh: pantai, kearifan smong, dan lobster segar langsung dari nelayan.', 3600000, '4 Hari 3 Malam', 'Kapal/Pesawat PP (sesuai paket), Homestay 3 malam, Makan 9x, Pemandu lokal', 'aktif', '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(22, 'Aceh Religi: Ziarah Ulama & Masjid Bersejarah', 'Ziarah ke masjid dan makam bersejarah: dari Baiturrahman, Syiah Kuala, Indrapuri, hingga Samalanga.', 1700000, '3 Hari 2 Malam', 'Transportasi AC, Hotel 2 malam, Makan 6x, Pemandu ziarah', 'aktif', '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(23, 'Aceh Cita Rasa: Kuliner Lintas Kabupaten', 'Kuliner pilihan Aceh: mie Aceh, sate Matang, mie caluk, ikan depik, dan lobster, dalam satu perjalanan.', 3200000, '4 Hari 3 Malam', 'Transportasi AC, Hotel 3 malam, Makan 12x (menu kuliner), Pemandu kuliner', 'aktif', '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(24, 'Budaya Nusantara Aceh: Saman, Seudati & Didong', 'Merasakan keragaman seni Aceh: Seudati Pidie, Didong Gayo, Saman Gayo Lues, dan Mesekat Alas.', 4200000, '5 Hari 4 Malam', 'Transportasi AC/4WD, Penginapan 4 malam, Makan 12x, Pemandu budaya, Tiket pertunjukan', 'aktif', '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(25, 'Study Tour Pelajar Banda Aceh – Aceh Besar', 'Paket belajar untuk rombongan sekolah/kampus: museum, tsunami, gajah, dan sejarah perjuangan.', 400000, '2 Hari 1 Malam', 'Bus pariwisata, Penginapan 1 malam, Makan 4x, Pemandu edukasi, Tiket masuk (min. 20 peserta)', 'aktif', '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(26, 'Aceh Sunset & Pantai Barat Banda Aceh', 'Sore santai menikmati pantai Ulee Lheue, Lampuuk, dan Lhoknga lengkap dengan ikan bakar.', 420000, '1 Hari', 'Transportasi AC, Makan malam ikan bakar, Pemandu lokal', 'aktif', '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(27, 'Seulawah – Sabang Nature Combo', 'Paket alam santai menggabungkan hutan raya Aceh Besar dengan danau dan laut jernih Sabang.', 1900000, '3 Hari 2 Malam', 'Kapal cepat PP, Penginapan 2 malam, Makan 6x, Pemandu lokal', 'aktif', '2026-10-24 01:00:00', '2026-10-24 01:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `pemesanan`
--

CREATE TABLE `pemesanan` (
  `id_pemesanan` bigint(20) UNSIGNED NOT NULL,
  `id_pengguna` bigint(20) UNSIGNED NOT NULL,
  `id_paket` bigint(20) UNSIGNED NOT NULL,
  `tanggal_pesan` date NOT NULL,
  `tanggal_perjalanan` date NOT NULL,
  `jumlah_peserta` smallint(5) UNSIGNED NOT NULL,
  `total_harga` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'menunggu',
  `catatan` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pemesanan`
--

INSERT INTO `pemesanan` (`id_pemesanan`, `id_pengguna`, `id_paket`, `tanggal_pesan`, `tanggal_perjalanan`, `jumlah_peserta`, `total_harga`, `status`, `catatan`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2026-10-20', '2026-11-15', 2, 1700000, 'menunggu', 'Mohon jemput di Bandara SIM.', '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(2, 2, 3, '2026-10-18', '2026-11-01', 4, 1800000, 'dikonfirmasi', NULL, '2026-10-24 01:00:00', '2026-10-24 01:00:00'),
(3, 1, 2, '2026-10-01', '2026-10-12', 3, 6300000, 'selesai', NULL, '2026-10-24 01:00:00', '2026-10-24 01:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `id_pengguna` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(255) NOT NULL,
  `no_hp` varchar(20) DEFAULT NULL,
  `role` varchar(20) NOT NULL DEFAULT 'pengguna',
  `foto_profil` varchar(255) DEFAULT NULL,
  `tanggal_daftar` timestamp NOT NULL DEFAULT current_timestamp(),
  `terakhir_login` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`id_pengguna`, `nama`, `email`, `password`, `no_hp`, `role`, `foto_profil`, `tanggal_daftar`, `terakhir_login`) VALUES
(1, 'Budi Santoso', 'budi@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '081234567890', 'pengguna', NULL, '2026-09-20 02:00:00', NULL),
(2, 'Siti Rahma', 'siti@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '082198765432', 'pengguna', NULL, '2026-09-25 07:30:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ulasan`
--

CREATE TABLE `ulasan` (
  `id_ulasan` bigint(20) UNSIGNED NOT NULL,
  `id_pengguna` bigint(20) UNSIGNED NOT NULL,
  `id_destinasi` bigint(20) UNSIGNED NOT NULL,
  `rating` tinyint(3) UNSIGNED NOT NULL,
  `komentar` text DEFAULT NULL,
  `tanggal_ulasan` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ulasan`
--

INSERT INTO `ulasan` (`id_ulasan`, `id_pengguna`, `id_destinasi`, `rating`, `komentar`, `tanggal_ulasan`, `updated_at`) VALUES
(1, 1, 1, 5, 'Arsitekturnya megah dan suasananya tenang. Wajib dikunjungi saat ke Banda Aceh.', '2026-10-13 03:00:00', NULL),
(2, 2, 1, 4, 'Bagus sekali, sebaiknya datang pagi agar tidak terlalu ramai.', '2026-10-14 02:30:00', NULL),
(3, 1, 2, 5, 'Museum yang menyentuh dan sangat informatif.', '2026-10-13 08:00:00', NULL),
(4, 2, 5, 5, 'Pantainya bersih dan sunset-nya luar biasa!', '2026-10-15 10:45:00', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`),
  ADD UNIQUE KEY `admin_username_unique` (`username`),
  ADD UNIQUE KEY `admin_email_unique` (`email`);

--
-- Indexes for table `destinasi`
--
ALTER TABLE `destinasi`
  ADD PRIMARY KEY (`id_destinasi`);

--
-- Indexes for table `destinasi_paket`
--
ALTER TABLE `destinasi_paket`
  ADD PRIMARY KEY (`id_detail`),
  ADD UNIQUE KEY `destinasi_paket_unique` (`id_paket`,`id_destinasi`),
  ADD KEY `fk_dp_destinasi` (`id_destinasi`);

--
-- Indexes for table `paket_wisata`
--
ALTER TABLE `paket_wisata`
  ADD PRIMARY KEY (`id_paket`);

--
-- Indexes for table `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD PRIMARY KEY (`id_pemesanan`),
  ADD KEY `fk_pem_pengguna` (`id_pengguna`),
  ADD KEY `fk_pem_paket` (`id_paket`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id_pengguna`),
  ADD UNIQUE KEY `pengguna_email_unique` (`email`);

--
-- Indexes for table `ulasan`
--
ALTER TABLE `ulasan`
  ADD PRIMARY KEY (`id_ulasan`),
  ADD UNIQUE KEY `ulasan_user_destinasi_unique` (`id_pengguna`,`id_destinasi`),
  ADD KEY `fk_ul_destinasi` (`id_destinasi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `destinasi`
--
ALTER TABLE `destinasi`
  MODIFY `id_destinasi` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `destinasi_paket`
--
ALTER TABLE `destinasi_paket`
  MODIFY `id_detail` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `paket_wisata`
--
ALTER TABLE `paket_wisata`
  MODIFY `id_paket` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `pemesanan`
--
ALTER TABLE `pemesanan`
  MODIFY `id_pemesanan` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id_pengguna` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ulasan`
--
ALTER TABLE `ulasan`
  MODIFY `id_ulasan` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `destinasi_paket`
--
ALTER TABLE `destinasi_paket`
  ADD CONSTRAINT `fk_dp_destinasi` FOREIGN KEY (`id_destinasi`) REFERENCES `destinasi` (`id_destinasi`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_dp_paket` FOREIGN KEY (`id_paket`) REFERENCES `paket_wisata` (`id_paket`) ON DELETE CASCADE;

--
-- Constraints for table `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD CONSTRAINT `fk_pem_paket` FOREIGN KEY (`id_paket`) REFERENCES `paket_wisata` (`id_paket`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_pem_pengguna` FOREIGN KEY (`id_pengguna`) REFERENCES `pengguna` (`id_pengguna`) ON DELETE CASCADE;

--
-- Constraints for table `ulasan`
--
ALTER TABLE `ulasan`
  ADD CONSTRAINT `fk_ul_destinasi` FOREIGN KEY (`id_destinasi`) REFERENCES `destinasi` (`id_destinasi`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_ul_pengguna` FOREIGN KEY (`id_pengguna`) REFERENCES `pengguna` (`id_pengguna`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
