-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 09, 2026 at 02:51 AM
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
-- Database: `gampongpantee`
--

-- --------------------------------------------------------

--
-- Table structure for table `agamas`
--

CREATE TABLE `agamas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `agama` varchar(255) NOT NULL,
  `penganut` int(11) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `agamas`
--

INSERT INTO `agamas` (`id`, `agama`, `penganut`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Islam', 100, 1, '2025-02-11 03:21:45', '2025-02-11 03:21:45'),
(2, 'Kristen', 30, 1, '2025-02-11 03:21:45', '2025-02-11 03:21:45'),
(3, 'Katolik', 20, 1, '2025-02-11 03:21:45', '2025-02-11 03:21:45'),
(4, 'Hindu', 10, 1, '2025-02-11 03:21:45', '2025-02-11 03:21:45'),
(5, 'Budha', 15, 1, '2025-02-11 03:21:45', '2025-02-11 03:21:45'),
(6, 'Konghucu', 6, 1, '2025-02-11 03:21:45', '2025-02-11 03:21:45');

-- --------------------------------------------------------

--
-- Table structure for table `anggarans`
--

CREATE TABLE `anggarans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `keterangan` longtext NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `anggarans`
--

INSERT INTO `anggarans` (`id`, `judul`, `slug`, `keterangan`, `gambar`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Rincian Dana Desa 2024', 'rincian-dana-desa', '<p>Contoh saja</p>', 'img-anggaran//67aaf242796a8.jpeg', 1, '2025-02-11 06:46:26', '2025-02-11 06:46:49'),
(2, 'Rincian 2025', 'rincian-2025', '<p>Contoh Saja</p>', 'img-anggaran//67aaf2a551c24.png', 1, '2025-02-11 06:48:05', '2025-02-11 06:48:05');

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `views` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `excerpt` longtext NOT NULL,
  `isi_pengumuman` longtext NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `announcements`
--

INSERT INTO `announcements` (`id`, `judul`, `slug`, `views`, `excerpt`, `isi_pengumuman`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Cek Kesehatan Gratis', 'cek-kesehatan-gratis', 2, 'Dinas Kesehatan Kota Bandung mengadakan Cek Kesehatan Gratis bagi seluruh warga Bandung! Manfaatkan kesempatan ini untuk mengetahui kondisi kesehatan Anda dan mendapatkan konsultasi medis secara grati...', '<p>Dinas Kesehatan Kota Bandung mengadakan <strong>Cek Kesehatan Gratis</strong> bagi seluruh warga Bandung! Manfaatkan kesempatan ini untuk mengetahui kondisi kesehatan Anda dan mendapatkan konsultasi medis secara gratis.</p><p>📅 <strong>Tanggal:</strong> [Isi tanggal kegiatan]<br>🕘 <strong>Waktu:</strong> [Isi waktu kegiatan]<br>📍 <strong>Lokasi:</strong> [Isi lokasi kegiatan]</p><p>🔍 <strong>Layanan yang tersedia:</strong><br>✅ Pemeriksaan tekanan darah<br>✅ Cek gula darah<br>✅ Pemeriksaan kolesterol<br>✅ Konsultasi kesehatan dengan dokter<br>✅ Edukasi pola hidup sehat</p><p>💡 <strong>Syarat &amp; Ketentuan:</strong><br>📌 Warga Kota Bandung (bawa KTP/KK)<br>📌 Datang sesuai jadwal dan tetap menjaga protokol kesehatan</p><p>Jangan lewatkan kesempatan ini! Ajak keluarga dan kerabat untuk bersama-sama menjaga kesehatan.</p><p>📞 <strong>Informasi lebih lanjut:</strong> [Isi kontak atau link resmi]</p><p>Salam sehat,<br><strong>Dinas Kesehatan Kota Bandung</strong></p>', 1, '2025-02-11 06:42:52', '2025-02-11 06:44:30'),
(2, 'PROGRAM BANTUAN DAN PELATIHAN UNTUK UMKM KOTA BANDUNG', 'program-bantuan-dan-pelatihan-untuk-umkm-kota-bandung', 0, 'Pemerintah Kota Bandung melalui Dinas Koperasi dan UMKM mengadakan program bantuan dan pelatihan bagi para pelaku Usaha Mikro, Kecil, dan Menengah (UMKM) untuk meningkatkan daya saing dan memperluas p...', '<p>Pemerintah Kota Bandung melalui Dinas Koperasi dan UMKM mengadakan <strong>program bantuan dan pelatihan</strong> bagi para pelaku Usaha Mikro, Kecil, dan Menengah (UMKM) untuk meningkatkan daya saing dan memperluas pasar!</p><p>📅 <strong>Tanggal Pendaftaran:</strong> [Isi tanggal]<br>📍 <strong>Lokasi:</strong> [Isi lokasi atau link pendaftaran]</p><p>🔍 <strong>Fasilitas yang diberikan:</strong><br>✅ Bantuan modal usaha<br>✅ Pelatihan digital marketing dan branding<br>✅ Pendampingan legalitas usaha (NIB, PIRT, Halal, dll.)<br>✅ Akses ke marketplace dan jaringan bisnis</p><p>💡 <strong>Syarat &amp; Ketentuan:</strong><br>📌 Pelaku UMKM yang berdomisili di Kota Bandung<br>📌 Memiliki usaha yang sudah berjalan minimal 6 bulan<br>📌 Bersedia mengikuti seluruh rangkaian pelatihan</p><p>📞 <strong>Informasi lebih lanjut:</strong> [Isi kontak atau link resmi]</p><p>Jangan lewatkan kesempatan ini untuk mengembangkan usaha Anda!</p><p>Salam sukses,<br><strong>Dinas Koperasi dan UMKM Kota Bandung</strong></p>', 1, '2025-02-11 06:43:42', '2025-02-11 06:43:42'),
(3, 'LOMBA UMKM INOVATIF KOTA BANDUNG 2025', 'lomba-umkm-inovatif-kota-bandung-2025', 2, 'Pemerintah Kota Bandung melalui Dinas Koperasi dan UMKM mengundang para pelaku usaha mikro, kecil, dan menengah (UMKM) untuk mengikuti Lomba UMKM Inovatif 2025! Tunjukkan kreativitas dan inovasi usaha...', '<p>Pemerintah Kota Bandung melalui <strong>Dinas Koperasi dan UMKM</strong> mengundang para pelaku usaha mikro, kecil, dan menengah (UMKM) untuk mengikuti <strong>Lomba UMKM Inovatif 2025</strong>! Tunjukkan kreativitas dan inovasi usaha Anda serta raih hadiah menarik!</p><p>📅 <strong>Pendaftaran:</strong> [Isi tanggal pendaftaran]<br>📅 <strong>Batas Akhir Pendaftaran:</strong> [Isi batas waktu]<br>📍 <strong>Lokasi Acara:</strong> [Isi lokasi acara]</p><p>🔍 <strong>Kategori Lomba:</strong><br>🏆 UMKM Kuliner<br>🏆 UMKM Fashion &amp; Kerajinan<br>🏆 UMKM Teknologi &amp; Jasa</p><p>🎁 <strong>Hadiah:</strong><br>🏅 Juara 1: Rp [Isi nominal] + Sertifikat + Pembinaan Eksklusif<br>🥈 Juara 2: Rp [Isi nominal] + Sertifikat<br>🥉 Juara 3: Rp [Isi nominal] + Sertifikat</p><p>💡 <strong>Syarat &amp; Ketentuan:</strong><br>📌 UMKM berdomisili di Kota Bandung<br>📌 Usaha sudah berjalan minimal 6 bulan<br>📌 Mengisi formulir pendaftaran dan mengunggah profil usaha</p><p>📞 <strong>Informasi &amp; Pendaftaran:</strong> [Isi kontak/link pendaftaran]</p><p>Jangan lewatkan kesempatan ini! Tunjukkan inovasi terbaik dan jadilah UMKM unggulan Kota Bandung! 🚀</p><p><strong>Dinas Koperasi dan UMKM Kota Bandung</strong></p>', 1, '2025-02-11 06:44:26', '2026-03-09 01:49:26');

-- --------------------------------------------------------

--
-- Table structure for table `beritas`
--

CREATE TABLE `beritas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `excerpt` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `views` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `body` longtext NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL,
  `kategori_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `beritas`
--

INSERT INTO `beritas` (`id`, `gambar`, `judul`, `excerpt`, `slug`, `views`, `body`, `user_id`, `status_id`, `kategori_id`, `created_at`, `updated_at`) VALUES
(3, 'img-berita//69ae270565ce0.jpg', 'Bupati Malang Resmikan Satu Unit Bedah Rumah di Bunut Wetan, Hasil Kerjasama APERSI Korwil Malang Raya dan PT. Varia Usaha Beton', 'PAKIS&nbsp;- Bupati Malang, Drs. H. M. Sanusi, M.M meresmikan satu unit Rumah Layak Huni hasil dari...', 'Bupati-Malang-Resmikan-Satu-Unit-Bedah-Rumah-di-Bunut-Wetan-Hasil-Kerjasama-APERSI-Korwil-Malang-Raya-dan-PT-Varia-Usaha-Beton', 2, '<p><strong>PAKIS&nbsp;</strong>- Bupati Malang, Drs. H. M. Sanusi, M.M meresmikan satu unit Rumah Layak Huni hasil dari kegiatan Bedah Rumah milik pasangan Ansori - Sunani buah kerjasama Pemerintah Kabupaten Malang bersama Asosiasi Pengembang Perumahan dan Pemukiman Seluruh Indonesia (APERSI) Korwil Malang Raya dan PT Varia Usaha Beton di Jalan Mawar, Desa Bunut Wetan, Kecamatan Pakis, Selasa (20/6) siang. Peresmian ditandai prosesi potong tumpeng, gunting untaian pita, tanda tangan prasasti dan penyerahan kunci dari Bupati Malang kepada Ansori.</p><p>\'\'Bedah rumah ini bagian kepedulian dari APERSI Korwil Malang dan PT Varia Usaha Beton yang memproduksi bata beton itu telah membangun rumah yang habiskan dana Rp 53 juta. Sebuah bentuk kepedulian agar masyarakat Indonesia, semua memiliki rumah yang layak huni. Tiap tahun agendakan 500 unit, ke 33 Kecamatan dan 390 desa/kelurahan. Hingga saat ini, kegiatan bedah rumah dilakukan Pemerintah Kabupaten Malang di wilayah pinggiran, Sebelumnya kita juga sudah selesaikan bedah rumah di Desa Lebakharjo sebanyak 30 unit, nanti juga sama di Kasembon dan Donomulyo,\" jelas Bupati Malang kepada awak wartawan seusai acara.&nbsp;&nbsp;</p><p>Tampak hadir mendampingi Abah Sanusi, diantaranya Kepala Dinas Bina Marga, Kepala Dinas PU Sumber Daya Air, Kepala Dinas PU Cipta Karya, serta Camat dan Forkopimcam Pakis, Kepala Desa Bunut Wetan, Ketua dan seluruh pengurus APERSI Korwil Malang Raya, pimpinan PT Varia Usaha Beton, para perbankan,, Ketua BAZNAS Kabupaten Malang.</p><p>\"Syukur Alhamdulillah, siang hari ini kita bersama-sama menyaksikan penyerahan atau peresmian bedah rumah yang dilakukan oleh Asosiasi Pengembang Perumahan dan Pemukiman Seluruh Indonesia Korwil Malang Raya yang bekerja sama dengan PT Varia Usaha Beton. Gabungan yang hasilnya sudah kita saksikan bersama, mudah-mudahan bermanfaat dan mudah-mudahan nanti terus berkembang. Semoga tidak cuma satu, tapi rumah sebelahnya (milik pasutri Sanam-Sopik\'ah, Red) nanti juga segera dibangun,\" tegas Abah Sanusi di depan audien.</p><p>Atas nama Pemerintah Kabupaten Malang, Bupati Malang mengucapkan terima kasih sekaligus menyampaikan apresiasi yang setinggi-tingginya atas kolaborasi yang telah terjalin baik antara Pemerintah Kabupaten Malang dengan APERSI Malang Raya beserta PT Varia Usaha Beton. Diakuinya, melalui sinergi ini kita bersama-sama berupaya mewujudkan target penyediaan rumah layak huni bagi seluruh rakyat, utamanya masyarakat Kabupaten Malang.</p><p>\"Untuk terus mendukung dan mengawal setiap program perumahan rakyat yang selaras dengan kebijakan nasional, untuk itu saya ucapkan terima kasih. Dan untuk selanjutnya, sebelahnya nanti segera dilakukan dengan \'patungan\' BAZNAS dengan APERSI. Karena BAZNAS nanti Rp 25 juta, APERSI 25 juta. Syukur-syukur dibantu oleh PT Varia Usaha Beton nantinya, ya,\" pesannya.</p><p>Bupati Malang juga memberikan arahan untuk Dinas Terkait terkait perwujudan kebersamaan. Jika nanti Dinas Cipta Karya atau Pengairan, yang mengurusi drainasenya, tolong dibenahi ya. Sama Bina Marga, ini yang saya lihat Pak Kades, perlu PJU (Penerangan Jalan Umum). Dicek dan dikasih berapa titik agar nanti malam jelas, sehingga kalau ada rumah seperti ini cepat ketahuan gitu,\" pungkasnya. <strong>(prokopim/poy)</strong></p>', 1, 2, 3, '2025-02-11 06:30:02', '2026-03-09 01:48:53');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `body` varchar(255) NOT NULL,
  `berita_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comment_replies`
--

CREATE TABLE `comment_replies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `gambar`, `keterangan`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'img-gallery//67aaef79b6621.png', 'Curug Maribaya', 1, '2025-02-11 06:34:33', '2025-02-11 06:34:33'),
(2, 'img-gallery//67aaefacd6011.jpg', 'Trans Studio Bandung', 1, '2025-02-11 06:35:24', '2025-02-11 06:35:24'),
(3, 'img-gallery//67aaefdfe2f64.jpg', 'Ciwidey', 1, '2025-02-11 06:36:15', '2025-02-11 06:36:15'),
(4, 'img-gallery//67aaf008c7fdf.jpg', 'Jendela ALam', 1, '2025-02-11 06:36:56', '2025-02-11 06:36:56'),
(5, 'img-gallery//67aaf05fec26e.jpeg', 'De\'Ranch Lembang', 1, '2025-02-11 06:38:24', '2025-02-11 06:38:24'),
(6, 'img-gallery//67aaf09270080.jpeg', 'Lugs Gravitiy', 1, '2025-02-11 06:39:14', '2025-02-11 06:39:14'),
(7, 'img-gallery//67aaf0c3d5dba.jpg', 'Museum Geologi', 1, '2025-02-11 06:40:03', '2025-02-11 06:40:03'),
(8, 'img-gallery//67aaf0eaa93ce.jpg', 'Wisata Bandros', 1, '2025-02-11 06:40:42', '2025-02-11 06:40:42');

-- --------------------------------------------------------

--
-- Table structure for table `jenis_kelamins`
--

CREATE TABLE `jenis_kelamins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `jenis_kelamin` varchar(255) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jenis_kelamins`
--

INSERT INTO `jenis_kelamins` (`id`, `jenis_kelamin`, `jumlah`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Laki-laki', 70, 1, '2025-02-11 03:21:45', '2025-02-11 03:21:45'),
(2, 'Perempuan', 55, 1, '2025-02-11 03:21:45', '2025-02-11 03:21:45');

-- --------------------------------------------------------

--
-- Table structure for table `kategoris`
--

CREATE TABLE `kategoris` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategoris`
--

INSERT INTO `kategoris` (`id`, `kategori`, `slug`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Teknologi', 'teknologi', 1, '2025-02-11 03:21:45', '2025-02-11 03:21:45'),
(2, 'Kesenian', 'kesenian', 1, '2025-02-11 03:21:45', '2025-02-11 03:21:45'),
(3, 'UMKM', 'umkm', 1, '2025-02-11 06:05:44', '2025-02-11 06:05:44'),
(4, 'pariwisata', 'pariwisata', 1, '2025-02-11 06:26:07', '2025-02-11 06:26:07');

-- --------------------------------------------------------

--
-- Table structure for table `kontaks`
--

CREATE TABLE `kontaks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lokasi` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `no_hp` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kontaks`
--

INSERT INTO `kontaks` (`id`, `lokasi`, `email`, `no_hp`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Cibuni, Bandung.', 'asepsyaputra840@gmail.com', '0882260686031', 1, '2025-02-11 03:21:45', '2025-02-11 07:00:46');

-- --------------------------------------------------------

--
-- Table structure for table `layanans`
--

CREATE TABLE `layanans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `layanan` varchar(255) NOT NULL,
  `persyaratan` longtext NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `layanans`
--

INSERT INTO `layanans` (`id`, `layanan`, `persyaratan`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Program UHC di Kota Bandung', '<p><strong>Identitas Resmi:</strong> Memiliki identitas yang dikeluarkan oleh Pemerintah Kota Bandung selama lebih dari 1 tahun.</p><p><strong>Kartu Keluarga (KK):</strong> Bagi bayi yang usianya lebih dari 1 bulan, namanya harus sudah tercantum di Kartu Keluarga untuk bisa masuk dalam UHC.</p><p><strong>Dokumen Pendukung:</strong> Menyiapkan KTP, KK, dan hasil pemeriksaan pasien/rujukan/surat rawat.</p><p><strong>Kepesertaan JKN:</strong> UHC berlaku untuk:</p><ul><li>Pasien yang belum memiliki JKN atau PBI non-aktif (sesuai persyaratan).</li><li>Pasien terdaftar BPJS Mandiri non-aktif karena masalah premi (dengan tambahan formulir PYDOPD).</li><li>Pasien terdaftar BPJS pegawai swasta non-aktif (dengan tambahan surat keterangan kerja).</li><li>Pasien BBL (bayi dari ibu yang terdaftar PBI dengan usia &lt;28 hari) dengan tambahan Surat Keterangan Lahir.</li></ul>', 1, '2025-02-11 06:23:03', '2025-02-11 06:23:03'),
(2, 'Pendaftaran Layanan Kesehatan di Puskesmas Secara Online', '<p><strong>Sistem yang Dikembangkan Sendiri oleh Puskesmas:</strong> Setiap Puskesmas mungkin memiliki sistem pendaftaran online yang unik. Petunjuk pendaftaran biasanya tersedia di situs web Puskesmas atau dapat diperoleh melalui kontak telepon.</p><p><strong>Platform Kesehatan Online Pemerintah:</strong> Jika tersedia, platform ini terintegrasi dengan beberapa Puskesmas. Anda mungkin perlu mendaftar akun terlebih dahulu sebelum dapat mendaftar di Puskesmas. Informasi lebih lanjut dapat ditemukan di situs web Dinas Kesehatan Kota Bandung.</p><p><strong>Aplikasi Pihak Ketiga:</strong> Beberapa Puskesmas mungkin bekerja sama dengan aplikasi pihak ketiga untuk menyediakan layanan pendaftaran online. Pastikan aplikasi tersebut terpercaya dan aman sebelum menggunakannya.</p><p>Langkah-langkah umum pendaftaran online di Puskesmas Bandung meliputi:</p><p><strong>Akses Situs Web atau Aplikasi:</strong> Buka situs web Puskesmas atau aplikasi yang telah ditentukan.</p><p><strong>Pendaftaran Akun:</strong> Jika diperlukan, buat akun dengan mengisi data diri yang diminta.</p><p><strong>Pilih Layanan:</strong> Pilih jenis layanan kesehatan yang dibutuhkan dan jadwal kunjungan.</p><p><strong>Konfirmasi Pendaftaran:</strong> Setelah mengisi semua informasi yang diperlukan, konfirmasi pendaftaran Anda.</p>', 1, '2025-02-11 06:24:18', '2025-02-11 06:24:18');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_09_13_022605_create_sliders_table', 1),
(7, '2023_09_14_134427_create_beritas_table', 1),
(8, '2023_09_14_142413_create_post_statuses_table', 1),
(9, '2023_09_14_223318_create_kategoris_table', 1),
(10, '2023_09_17_091224_create_comments_table', 1),
(11, '2023_09_18_054320_create_comment_replies_table', 1),
(12, '2023_09_18_173129_create_wilayahs_table', 1),
(13, '2023_09_18_203110_create_sejarahs_table', 1),
(14, '2023_09_18_210113_create_visi_misis_table', 1),
(15, '2023_09_19_061945_create_perangkat_desas_table', 1),
(16, '2023_09_21_054915_create_agamas_table', 1),
(17, '2023_09_21_073255_create_jenis_kelamins_table', 1),
(18, '2023_09_21_085821_create_pekerjaans_table', 1),
(19, '2023_09_23_063218_create_petas_table', 1),
(20, '2023_09_24_051908_create_umkms_table', 1),
(21, '2023_09_25_061424_create_kontaks_table', 1),
(22, '2023_09_25_075226_create_video_profils_table', 1),
(23, '2023_09_26_054211_create_situses_table', 1),
(24, '2023_11_29_060538_create_layanans_table', 1),
(25, '2023_11_29_073753_create_galleries_table', 1),
(26, '2023_11_29_164313_create_announcements_table', 1),
(27, '2023_11_29_201150_create_anggarans_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pekerjaans`
--

CREATE TABLE `pekerjaans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pekerjaan` varchar(255) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pekerjaans`
--

INSERT INTO `pekerjaans` (`id`, `pekerjaan`, `jumlah`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Petani', 132, 1, '2025-02-11 03:21:45', '2025-02-11 04:55:09'),
(2, 'Pegawai Negeri', 14, 1, '2025-02-11 03:21:45', '2025-02-11 03:21:45'),
(3, 'Belum/Tidak bekerja', 10, 1, '2025-02-11 03:21:45', '2025-02-11 03:21:45'),
(4, 'Pensiunan', 20, 1, '2025-02-11 03:21:45', '2025-02-11 03:21:45');

-- --------------------------------------------------------

--
-- Table structure for table `perangkat_desas`
--

CREATE TABLE `perangkat_desas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `jabatan` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `perangkat_desas`
--

INSERT INTO `perangkat_desas` (`id`, `nama`, `foto`, `jabatan`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Kasep Code', 'img-perangkat//67aaf46b5d68e.jpg', 'Kepala Desa', 1, '2025-02-11 03:21:45', '2025-02-11 06:55:39'),
(2, 'Zilong', 'img-perangkat//67aaf45773274.jpg', 'Sekretaris Desa', 1, '2025-02-11 03:21:45', '2025-02-11 06:55:19'),
(3, 'Qiara', 'img-perangkat//67aaf3cb12ce6.png', 'Kepala Urusan Umum', 1, '2025-02-11 03:21:45', '2025-02-11 06:52:59'),
(4, 'bapak', 'img-perangkat//69ae1fe5eb5ea.jpg', 'Kepala Dusun', 1, '2025-02-11 03:21:45', '2026-03-09 01:18:29');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
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

-- --------------------------------------------------------

--
-- Table structure for table `petas`
--

CREATE TABLE `petas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `petas`
--

INSERT INTO `petas` (`id`, `judul`, `alamat`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Peta Desa', 'Desa Cibuni', 1, '2025-02-11 03:21:45', '2025-02-11 04:35:42');

-- --------------------------------------------------------

--
-- Table structure for table `post_statuses`
--

CREATE TABLE `post_statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_statuses`
--

INSERT INTO `post_statuses` (`id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'draft', '2025-02-11 03:21:45', '2025-02-11 03:21:45'),
(2, 'publish', '2025-02-11 03:21:45', '2025-02-11 03:21:45');

-- --------------------------------------------------------

--
-- Table structure for table `sejarahs`
--

CREATE TABLE `sejarahs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) NOT NULL,
  `body` longtext NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sejarahs`
--

INSERT INTO `sejarahs` (`id`, `judul`, `body`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Sejarah Desa Bunutwetan', '<p>Desa Bunutwetan, yang terletak di Kecamatan Pakis, Kabupaten Malang, Jawa Timur, merupakan desa hasil pemekaran. Berdasarkan informasi resmi, desa ini resmi terbentuk melalui proses pemekaran dari Desa <a href=\"https://www.google.com/search?q=Rajak+Besi&amp;client=firefox-b-d&amp;hs=usoU&amp;sca_esv=8a346a6465b0ee26&amp;channel=entpr&amp;sxsrf=ANbL-n4pgLu4bBD_OFBCbBwm-CgRSk_9-g%3A1773018530184&amp;ei=oh2uaebqCqic4-EPgKHQuQY&amp;biw=1892&amp;bih=962&amp;ved=2ahUKEwjH9qXh0JGTAxUCzDgGHaoqJuoQgK4QegQIARAC&amp;uact=5&amp;oq=sejarah+desa+bunut+wetan&amp;gs_lp=Egxnd3Mtd2l6LXNlcnAiGHNlamFyYWggZGVzYSBidW51dCB3ZXRhbjIFEAAY7wUyBRAAGO8FMgUQABjvBTIIEAAYgAQYogRI6RxQ2xBYqxtwAngAkAEAmAH2AaABoAaqAQU3LjAuMbgBA8gBAPgBAZgCCaACyQbCAgkQABiwAxgHGB7CAggQLhiABBiwA8ICBxAAGLADGB7CAggQABiwAxjvBcICBxAuGIAEGA3CAgYQABgNGB7CAggQABgFGA0YHsICFhAuGIAEGA0YlwUY3AQY3gQY4ATYAQHCAgoQIRigARjDBBgKmAMAiAYBkAYJugYGCAEQARgUkgcFNi4yLjGgB44msgcFNC4yLjG4B6UGwgcFMi01LjTIB0mACAA&amp;sclient=gws-wiz-serp&amp;mstk=AUtExfB2n4artykBQu0FpDmzq7H8Tc44qBFqsqXHtoQUsfJ7fQXF1DUJkOGbp4aBZ8wKTffvZduJlJ6_JVdDNI47s8jPBpSoMrJcrEnQNc22pOL2Rx_aDq76yhMFw3iG3yh6y8WHJsGY6ZTROH81H9GGaPjxvQIgjLQrRQeFFbn33re9JlghKmv5UDvrhXn0Pq9o5hucXbA6iUyjhDorQ6agKBCSJHY3pzOw_CI2XykiNDt3TBC7NnnzPBPdUuVfgX1lLzf5ZkNfEEEOb04QeI2VRZ_P&amp;csui=3\"><strong>Rajak Besi</strong></a> pada tahun 2012. Sejak saat itu, Bunutwetan berstatus sebagai desa definitif yang berada di wilayah administratrif Kecamatan Pakis.</p>', 1, '2025-02-11 03:21:45', '2026-03-09 01:10:48');

-- --------------------------------------------------------

--
-- Table structure for table `situses`
--

CREATE TABLE `situses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `logo` varchar(255) NOT NULL,
  `nm_desa` varchar(255) NOT NULL,
  `kecamatan` varchar(255) NOT NULL,
  `kabupaten` varchar(255) NOT NULL,
  `provinsi` varchar(255) NOT NULL,
  `kode_pos` int(11) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `situses`
--

INSERT INTO `situses` (`id`, `logo`, `nm_desa`, `kecamatan`, `kabupaten`, `provinsi`, `kode_pos`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'img-logo//69ae23824c795.png', 'Desa Bunutwetan', 'Pakis', 'Malang', 'Jawa Timur', 65154, 1, '2025-02-11 03:21:45', '2026-03-09 01:44:24');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `img_slider` varchar(255) DEFAULT NULL,
  `link_btn` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `judul`, `deskripsi`, `img_slider`, `link_btn`, `created_at`, `updated_at`) VALUES
(1, 'Website Desa', 'Desa Bunutwetan merupakan salah satu desa yang ada di Kecamatan Merigi Sakti Kabupaten Bengkulu Tengah dengan luas wilayah 1700 ha. Sebelah utara berbatasan dengan Desa Rajak Besi, sebelah selatan berbatasan dengan Desa Taba Gemantung, sebelah barat berbatasan dengan Desa Keroya, dan sebelah timur berbatasan dengan Desa Komering.', 'img-slider//69ae220ca478f.png', '#', '2025-02-11 03:21:45', '2026-03-09 01:27:40'),
(2, 'Sejarah Desa', 'Desa Bunutwetan, yang terletak di Kecamatan Pakis, Kabupaten Malang, Jawa Timur, merupakan desa hasil pemekaran. Berdasarkan informasi resmi, desa ini resmi terbentuk melalui proses pemekaran dari Desa Rajak Besi pada tahun 2012. Sejak saat itu, Bunutwetan berstatus sebagai desa definitif yang berada di wilayah administratrif Kecamatan Pakis.', 'img-slider//69ae21753c090.png', '#', '2025-02-11 03:21:45', '2026-03-09 01:25:09'),
(3, 'Visi & Misi', 'Visi:\r\nVisi Desa Bunutwetan adalah \"MELAYANI MASYARAKAT KHUSUSNYA Desa Bunutwetan DENGAN SEBAIK-BAIKNYA\"\r\nMisi:\r\nUntuk terwujudnya visi tersebut ditetapkan dua upaya/cara atau misi yang akan mendukung pencapaian visi yaitu:                                                                                                                            MEMAJUKAN DESA DALAM MISI PEMBANGUNAN, \r\nMEMAKMURKAN MASYARAKAT Desa Bunutwetan', 'img-slider//69ae22de52f29.png', '#', '2025-02-11 03:21:45', '2026-03-09 01:31:10');

-- --------------------------------------------------------

--
-- Table structure for table `umkms`
--

CREATE TABLE `umkms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `foto` varchar(255) NOT NULL,
  `produk` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `harga` double NOT NULL,
  `deskripsi` text NOT NULL,
  `no_hp` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `umkms`
--

INSERT INTO `umkms` (`id`, `foto`, `produk`, `slug`, `harga`, `deskripsi`, `no_hp`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'img-produk/67aae72a74e39.jpeg', 'Kerajinan Rajut Eceng Gondok', 'kerajinan-rajut-eceng-gondok', 150000, '<p>KERANJANG MINI ENCENG GONDOK DIMENSI 30X28X10 CM ( UKURAN PAKET )<br>DETAIL SIZE PRODUK : 30X18X10 CM<br>dikarenakan produk merupakan handmade wajar bila ada selisih dengan size yg tertera dideskripsi.<br><br>LANGSUNG PENGRAJIN , BELI DI MALL PASTI 100 LEBIH<br><br>LANGUNS AJA SIS.<br><br>NOTE : SUPAYA TIDAK RUSAK KAMI MENYEDIAKAN KARDUS BERBAYAR HANYA 500 RUPIAH , SILAHKAN CHECK OUT DI ETALASE<br><br>#ENCENGGONDOK #STORAGE #KERANJANGANYAMAN #SEAGRASS</p>', '81212121212', 1, '2025-02-11 05:59:06', '2025-02-11 05:59:06'),
(2, 'img-produk/67aae9ee8b60f.png', 'Pisang Bolen', 'pisang-bolen', 30000, '<p>Perpaduan pisang yang dibalut dengan kulit pastry yang renyah ini jadi camilan khas Bandung. Saat dimakan, kombinasi lembutnya pisang, manis gurihnya cokelat dan keju yang jadi isian rasa dan renyahnya pastry menjadikan camilan ini oleh-oleh khas yang wajib untuk dibeli.</p><p>Kamu bisa mendapatkan pisang bolen ini di Kartika Sari yang sudah memiliki 8 cabang. Gerai pertamanya berada di Jl. Haji Akbar, No. 4 Kebon Kawung yang lokasinya tidak jauh dari Stasiun Bandung. Di sini, pisang bolen disajikan dalam berbagai pilihan rasa, mulai dari Cokelat Keju, Durian Keju, Kacang Hijau, Peuyeum Keju, dan Keju Spesial.</p>', '823343434343', 1, '2025-02-11 06:10:54', '2025-02-11 06:10:54'),
(3, 'img-produk/67aaeaf668166.jpeg', 'Dorokdokcu, Banjaran', 'dorokdokcu-banjaran', 15000, '<p>Dorokdok Pedas Jeruk Brand: Dorokdokcu Rasa: Pedas daun jeruk Netto: 50gr Harga: Rp 10.000 Terbuat dari 100% kulit sapi . Ini enak banget rasanya pedes asin gurih plus ada sedikit rasa khas daun jeruknya, sobi micin dijamin nagih!!</p>', '83434342323', 1, '2025-02-11 06:15:18', '2025-02-11 06:15:18');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `foto` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `foto`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'img-profil/user-1.jpg', 'admin', 'admin@gmail.com', NULL, '$2y$10$uvn98JrrXjwYkKCDHyqPneUz5qJPMe9hMfCm9LuMbWYq1TqDE9CSe', NULL, '2025-02-11 03:21:45', '2026-03-09 01:03:07');

-- --------------------------------------------------------

--
-- Table structure for table `video_profils`
--

CREATE TABLE `video_profils` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url_video` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `video_profils`
--

INSERT INTO `video_profils` (`id`, `url_video`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'https://www.youtube-nocookie.com/embed/JKPlBidke5s?si=MZIG-3gzNIs5h3Rm\"', 1, '2025-02-11 03:21:45', '2026-03-09 01:42:34');

-- --------------------------------------------------------

--
-- Table structure for table `visi_misis`
--

CREATE TABLE `visi_misis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `visi` text NOT NULL,
  `misi` text NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visi_misis`
--

INSERT INTO `visi_misis` (`id`, `visi`, `misi`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Visi Desa Bunutwetan adalah \"MELAYANI MASYARAKAT KHUSUSNYA Desa Bunutwetan DENGAN SEBAIK-BAIKNYA\"', 'Untuk terwujudnya visi tersebut ditetapkan dua upaya/cara atau misi yang akan mendukung pencapaian visi yaitu:                                                                                                                            MEMAJUKAN DESA DALAM MISI PEMBANGUNAN, \r\nMEMAKMURKAN MASYARAKAT Desa Bunutwetan', 1, '2025-02-11 03:21:45', '2026-03-09 01:30:38');

-- --------------------------------------------------------

--
-- Table structure for table `wilayahs`
--

CREATE TABLE `wilayahs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) NOT NULL,
  `body` longtext NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wilayahs`
--

INSERT INTO `wilayahs` (`id`, `judul`, `body`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Wilayah Desa Bunutwetan', '<p>Desa Bunutwetan merupakan salah satu desa yang ada di Kecamatan Merigi Sakti Kabupaten Bengkulu Tengah dengan luas wilayah 1700 ha. Sebelah utara berbatasan dengan Desa Rajak Besi, sebelah selatan berbatasan dengan Desa Taba Gemantung, sebelah barat berbatasan dengan Desa Keroya, dan sebelah timur berbatasan dengan Desa Komering.</p>', 1, '2025-02-11 03:21:45', '2026-03-09 01:12:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agamas`
--
ALTER TABLE `agamas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `anggarans`
--
ALTER TABLE `anggarans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `announcements_slug_unique` (`slug`);

--
-- Indexes for table `beritas`
--
ALTER TABLE `beritas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `beritas_slug_unique` (`slug`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment_replies`
--
ALTER TABLE `comment_replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jenis_kelamins`
--
ALTER TABLE `jenis_kelamins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategoris`
--
ALTER TABLE `kategoris`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kontaks`
--
ALTER TABLE `kontaks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `layanans`
--
ALTER TABLE `layanans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `pekerjaans`
--
ALTER TABLE `pekerjaans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `perangkat_desas`
--
ALTER TABLE `perangkat_desas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `petas`
--
ALTER TABLE `petas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_statuses`
--
ALTER TABLE `post_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sejarahs`
--
ALTER TABLE `sejarahs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `situses`
--
ALTER TABLE `situses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `umkms`
--
ALTER TABLE `umkms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `video_profils`
--
ALTER TABLE `video_profils`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visi_misis`
--
ALTER TABLE `visi_misis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wilayahs`
--
ALTER TABLE `wilayahs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agamas`
--
ALTER TABLE `agamas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `anggarans`
--
ALTER TABLE `anggarans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `beritas`
--
ALTER TABLE `beritas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comment_replies`
--
ALTER TABLE `comment_replies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `jenis_kelamins`
--
ALTER TABLE `jenis_kelamins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `kategoris`
--
ALTER TABLE `kategoris`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `kontaks`
--
ALTER TABLE `kontaks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `layanans`
--
ALTER TABLE `layanans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `pekerjaans`
--
ALTER TABLE `pekerjaans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `perangkat_desas`
--
ALTER TABLE `perangkat_desas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `petas`
--
ALTER TABLE `petas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `post_statuses`
--
ALTER TABLE `post_statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sejarahs`
--
ALTER TABLE `sejarahs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `situses`
--
ALTER TABLE `situses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `umkms`
--
ALTER TABLE `umkms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `video_profils`
--
ALTER TABLE `video_profils`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `visi_misis`
--
ALTER TABLE `visi_misis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wilayahs`
--
ALTER TABLE `wilayahs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
