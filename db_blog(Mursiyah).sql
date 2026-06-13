-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 13 Jun 2026 pada 11.43
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
-- Database: `db_blog`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `artikel`
--

CREATE TABLE `artikel` (
  `id` int(11) NOT NULL,
  `id_penulis` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `isi` text NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `hari_tanggal` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `artikel`
--

INSERT INTO `artikel` (`id`, `id_penulis`, `id_kategori`, `judul`, `isi`, `gambar`, `hari_tanggal`) VALUES
(7, 11, 11, 'Pengenalan Framework Laravel untuk Pemula', 'Laravel merupakan framework PHP modern yang menyediakan berbagai fitur seperti routing, middleware, ORM Eloquent, autentikasi, dan template Blade. Framework ini membantu pengembang membangun aplikasi web secara lebih cepat dan terstruktur.\r\n\r\nSalah satu keunggulan utama Laravel adalah arsitektur MVC atau Model View Controller yang memisahkan logika bisnis, tampilan, dan pengelolaan data secara terstruktur. Dengan pendekatan ini, kode aplikasi menjadi lebih mudah dibaca, dipelihara, dan dikembangkan.\r\n\r\nLaravel menyediakan berbagai fitur bawaan seperti Eloquent ORM, Blade Template Engine, Middleware, Authentication, Validation, hingga Artisan CLI. Fitur-fitur tersebut membantu pengembang membangun aplikasi secara lebih cepat dan efisien.\r\n\r\nDengan ekosistem yang kaya serta komunitas yang besar, Laravel menjadi pilihan utama bagi pengembang yang ingin membangun aplikasi web yang aman, skalabel, dan mudah dikembangkan dalam jangka panjang.', '6a2d1514da0a3.png', 'Sabtu, 13 Juni 2026 | 15:30'),
(8, 11, 13, 'Memahami Konsep MVC dalam Pengembangan Web', 'MVC merupakan pola arsitektur perangkat lunak yang memisahkan model, view, dan controller sehingga kode menjadi lebih rapi, mudah dipelihara, dan mudah dikembangkan.\r\n\r\nModel bertanggung jawab mengelola data dan logika bisnis aplikasi. Model berinteraksi langsung dengan database untuk membaca, menyimpan, memperbarui, dan menghapus data sesuai kebutuhan aplikasi.\r\n\r\nView bertanggung jawab menampilkan data kepada pengguna. View hanya bertugas merender tampilan dan tidak boleh mengandung logika bisnis apapun agar kode tetap bersih dan terorganisir.\r\n\r\nController berperan sebagai penghubung antara Model dan View. Controller menerima request dari pengguna, memproses data melalui Model, lalu meneruskan hasilnya ke View untuk ditampilkan kepada pengguna.', '6a2d163ac1152.jpg', 'Sabtu, 13 Juni 2026 | 15:35'),
(9, 11, 13, 'Eloquent ORM dan Relasi Antar Tabel di Laravel', 'Eloquent ORM memungkinkan pengembang melakukan interaksi dengan database menggunakan sintaks yang sederhana dan elegan tanpa harus menulis query SQL yang kompleks.\r\n\r\nDengan Eloquent, setiap tabel database direpresentasikan oleh sebuah kelas Model. Operasi seperti mengambil data, menyimpan, memperbarui, dan menghapus dapat dilakukan hanya dengan beberapa baris kode PHP yang mudah dibaca.\r\n\r\nEloquent mendukung berbagai jenis relasi antar tabel seperti hasOne, hasMany, belongsTo, dan belongsToMany. Relasi ini memungkinkan pengembang mengakses data dari tabel yang berelasi secara langsung melalui properti objek tanpa perlu menulis query JOIN secara manual.\r\n\r\nFitur eager loading pada Eloquent membantu menghindari masalah N+1 query yang dapat memperlambat aplikasi secara signifikan ketika menampilkan data dalam jumlah besar.', '6a2d1695142db.png', 'Sabtu, 13 Juni 2026 | 15:36'),
(10, 11, 14, 'Blade Template Engine di Laravel', 'Blade adalah template engine bawaan Laravel yang memungkinkan penulisan kode PHP di dalam HTML dengan sintaks yang lebih bersih dan ekspresif. Blade dikompilasi menjadi kode PHP biasa sehingga tidak menambah overhead pada aplikasi.\r\n\r\nSintaks Blade menggunakan tanda kurung ganda untuk menampilkan variabel. Blade secara otomatis melakukan escaping untuk mencegah serangan XSS sehingga aplikasi lebih aman.\r\n\r\nBlade menyediakan berbagai directive yang memudahkan penulisan logika di dalam template seperti if, foreach, forelse, dan while. Directive ini membuat kode template lebih mudah dibaca dibandingkan menggunakan PHP biasa.\r\n\r\nFitur layout Blade memungkinkan pembuatan template induk yang diwarisi oleh seluruh halaman. Dengan extends dan section, struktur HTML yang sama tidak perlu ditulis berulang di setiap halaman sehingga kode lebih efisien.', '6a2d171805258.jpg', 'Sabtu, 13 Juni 2026 | 15:38'),
(11, 11, 15, 'Middleware dan Autentikasi di Laravel', 'Middleware adalah lapisan pemrosesan request yang berjalan sebelum request sampai ke Controller. Middleware digunakan untuk menangani berbagai kebutuhan seperti autentikasi, logging, dan modifikasi request maupun response.\r\n\r\nLaravel menyediakan middleware bawaan seperti auth untuk melindungi halaman yang hanya boleh diakses oleh pengguna yang sudah login. Middleware ini cukup ditambahkan pada route atau controller tanpa perlu menulis logika pengecekan secara manual.\r\n\r\nAutentikasi di Laravel dapat diimplementasikan menggunakan session-based authentication. Pengguna yang berhasil login akan memiliki session aktif yang digunakan untuk memverifikasi identitasnya pada setiap request berikutnya.\r\n\r\nFacade Auth yang disediakan Laravel memudahkan pengelolaan autentikasi. Dengan Auth::user() kita dapat mengambil data pengguna yang sedang login, dan dengan Auth::logout() kita dapat mengakhiri sesi login pengguna.', '6a2d1782d1900.jpg', 'Sabtu, 13 Juni 2026 | 15:40'),
(12, 11, 16, 'Tips Meningkatkan Performa Aplikasi Laravel', 'Performa aplikasi Laravel dapat ditingkatkan melalui berbagai teknik optimasi yang tersedia secara bawaan maupun melalui konfigurasi tambahan yang tepat.\r\n\r\nGunakan eager loading untuk menghindari masalah N+1 query. Dengan method with(), data relasi dimuat sekaligus dalam satu query tambahan sehingga lebih efisien dibandingkan mengambil data relasi satu per satu untuk setiap baris.\r\n\r\nAktifkan cache untuk menyimpan hasil query yang sering diakses. Laravel mendukung berbagai driver cache seperti Redis dan Memcached yang dapat meningkatkan kecepatan akses data secara signifikan.\r\n\r\nJalankan perintah php artisan optimize saat deploy ke production untuk mengkompilasi konfigurasi dan route sehingga aplikasi tidak perlu membaca file tersebut setiap kali ada request masuk. Selain itu gunakan lazy loading untuk gambar agar halaman terasa lebih cepat saat pertama kali dibuka.', '6a2d17f31a682.jpg', 'Sabtu, 13 Juni 2026 | 15:42'),
(13, 11, 10, 'Pentingnya Database dalam Pengembangan Website', 'Database merupakan komponen penting dalam sebuah website karena digunakan untuk menyimpan, mengelola, dan menampilkan data secara dinamis. Tanpa database, website hanya dapat menampilkan informasi statis yang sulit diperbarui.\r\n\r\nMySQL adalah salah satu sistem manajemen database yang paling populer digunakan bersama PHP dan Laravel. Database ini mampu menangani data dalam jumlah besar dengan performa yang baik.\r\n\r\nDalam pengembangan website modern, database digunakan untuk menyimpan data pengguna, artikel, transaksi, komentar, dan berbagai informasi lainnya. Data tersebut kemudian diakses menggunakan query SQL.\r\n\r\nPenggunaan database yang baik membantu aplikasi menjadi lebih terstruktur, aman, dan mudah dikembangkan di masa mendatang.', '6a2d18b56673a.jpg', 'Sabtu, 13 Juni 2026 | 15:45'),
(14, 11, 12, 'Mengenal Notasi Big O dalam Algoritma', 'Big O Notation adalah metode yang digunakan untuk mengukur performa sebuah algoritma berdasarkan jumlah data yang diproses. Big O membantu programmer memahami seberapa cepat atau lambat suatu algoritma bekerja.\r\n\r\nContoh kompleksitas paling sederhana adalah O(1) atau constant time. Kompleksitas ini menunjukkan bahwa waktu eksekusi selalu tetap meskipun jumlah data bertambah.\r\n\r\nKompleksitas O(n) disebut linear time karena waktu eksekusi bertambah sebanding dengan jumlah data. Sedangkan O(n²) disebut quadratic time yang biasanya muncul pada algoritma dengan perulangan bersarang.\r\n\r\nPemahaman terhadap Big O sangat penting dalam pengembangan perangkat lunak agar aplikasi tetap memiliki performa yang baik.', '6a2d19a2161dc.jpg', 'Sabtu, 13 Juni 2026 | 15:49'),
(15, 11, 12, 'Perbedaan Kompleksitas Waktu dan Kompleksitas Ruang', 'Dalam analisis algoritma terdapat dua jenis kompleksitas yaitu kompleksitas waktu dan kompleksitas ruang. Keduanya digunakan untuk mengukur efisiensi algoritma dari sisi yang berbeda.\r\n\r\nKompleksitas waktu mengukur seberapa lama sebuah algoritma berjalan untuk menyelesaikan suatu proses. Semakin kecil waktu yang dibutuhkan maka semakin baik algoritma tersebut.\r\n\r\nSementara itu, kompleksitas ruang mengukur jumlah memori yang digunakan selama proses algoritma berlangsung. Algoritma yang baik tidak hanya cepat tetapi juga hemat memori.\r\n\r\nKeseimbangan antara kompleksitas waktu dan ruang menjadi faktor penting dalam pengembangan aplikasi modern.', '6a2d1aef1a505.jpg', 'Sabtu, 13 Juni 2026 | 15:55'),
(16, 11, 15, 'Tutorial Membuat Website Sederhana dengan HTML', 'HTML merupakan bahasa dasar yang digunakan untuk membuat struktur halaman website. Dengan HTML, pengembang dapat membuat teks, gambar, tabel, dan berbagai elemen lainnya pada halaman web.\r\n\r\nLangkah pertama dalam membuat website sederhana adalah membuat file dengan ekstensi .html. Setelah itu, tambahkan struktur dasar seperti tag html, head, dan body.\r\n\r\nDi dalam body, pengguna dapat menambahkan heading, paragraf, gambar, dan tombol sesuai kebutuhan. Setelah file disimpan, halaman dapat dibuka menggunakan browser.\r\n\r\nMeskipun sederhana, HTML menjadi fondasi utama dalam pengembangan website modern.', '6a2d1bedf0fac.jpg', 'Sabtu, 13 Juni 2026 | 15:59'),
(17, 11, 15, 'Tutorial Dasar Menggunakan CSS untuk Mempercantik Website', 'CSS digunakan untuk mengatur tampilan website agar lebih menarik dan rapi. Dengan CSS, pengembang dapat mengubah warna, ukuran teks, posisi elemen, hingga membuat animasi sederhana.\r\n\r\nLangkah awal menggunakan CSS adalah membuat file style.css kemudian menghubungkannya ke file HTML menggunakan tag link.\r\n\r\nSetelah terhubung, pengguna dapat mulai mengatur tampilan elemen seperti background, font, margin, dan padding. CSS juga mendukung desain responsif agar website tampil baik di berbagai perangkat.\r\n\r\nDengan mempelajari CSS, tampilan website menjadi lebih profesional dan nyaman digunakan.', '6a2d1c707a356.jpg', 'Sabtu, 13 Juni 2026 | 16:01'),
(18, 11, 16, 'Tips dan Trik Mengatasi Error saat Coding', 'Error merupakan hal yang sering dialami oleh programmer, terutama bagi pemula. Salah satu tips penting adalah membaca pesan error dengan teliti karena biasanya sistem sudah menunjukkan letak masalahnya.\r\n\r\nGunakan teknik debugging secara bertahap dengan memeriksa bagian kode yang baru saja diubah. Hindari langsung mengubah banyak bagian kode sekaligus karena dapat membuat masalah semakin sulit ditemukan.\r\n\r\nSelain itu, manfaatkan dokumentasi resmi dan forum diskusi seperti Stack Overflow untuk mencari solusi dari error yang muncul.\r\n\r\nDengan kesabaran dan kebiasaan membaca error dengan benar, kemampuan debugging akan semakin meningkat seiring waktu.', '6a2d1cdf78589.jpg', 'Sabtu, 13 Juni 2026 | 16:03'),
(19, 11, 16, 'Tips dan Trik Menjadi Programmer yang Produktif', 'Produktivitas programmer tidak hanya ditentukan oleh kemampuan coding, tetapi juga oleh cara mengatur waktu dan fokus saat bekerja. Salah satu tips penting adalah membuat daftar tugas sebelum mulai coding.\r\n\r\nGunakan tools seperti Visual Studio Code, Git, dan framework modern untuk membantu mempercepat proses pengembangan aplikasi.\r\n\r\nHindari terlalu banyak membuka media sosial saat bekerja karena dapat mengurangi konsentrasi. Selain itu, biasakan menulis kode yang rapi dan mudah dipahami agar lebih mudah diperbaiki di kemudian hari.\r\n\r\nDengan manajemen waktu dan kebiasaan kerja yang baik, programmer dapat bekerja lebih efektif dan menghasilkan aplikasi yang berkualitas.', '6a2d1d379b757.jpg', 'Sabtu, 13 Juni 2026 | 16:04'),
(20, 15, 14, 'Perkembangan Teknologi Artificial Intelligence di Era Modern', 'Artificial Intelligence atau kecerdasan buatan menjadi salah satu teknologi yang berkembang sangat pesat dalam beberapa tahun terakhir. Teknologi ini memungkinkan komputer melakukan tugas yang biasanya membutuhkan kecerdasan manusia.\r\n\r\nAI telah digunakan dalam berbagai bidang seperti pendidikan, kesehatan, transportasi, hingga bisnis digital. Contohnya adalah chatbot, sistem rekomendasi, dan kendaraan tanpa pengemudi.\r\n\r\nPerkembangan AI membantu meningkatkan efisiensi kerja dan mempercepat proses pengambilan keputusan. Namun di sisi lain, penggunaan AI juga menimbulkan tantangan terkait privasi dan keamanan data.\r\n\r\nDengan perkembangan yang terus berlanjut, AI diprediksi akan menjadi bagian penting dalam kehidupan manusia di masa depan.', '6a2d1f8303eeb.jpg', 'Sabtu, 13 Juni 2026 | 16:14'),
(21, 16, 11, 'Pengertian Web Programming dan Perkembangannya', 'Web programming adalah proses pembuatan dan pengembangan aplikasi berbasis website menggunakan berbagai bahasa pemrograman. Teknologi ini memungkinkan pengguna mengakses informasi dan layanan melalui browser internet.\r\n\r\nDalam pengembangan web, terdapat dua bagian utama yaitu frontend dan backend. Frontend berhubungan dengan tampilan yang dilihat pengguna, sedangkan backend bertugas mengelola data dan logika aplikasi.\r\n\r\nBahasa pemrograman yang umum digunakan dalam web programming antara lain HTML, CSS, JavaScript, PHP, dan Python. Selain itu, framework seperti Laravel dan React juga banyak digunakan untuk mempercepat proses pengembangan.\r\n\r\nPerkembangan web programming terus meningkat seiring berkembangnya kebutuhan aplikasi digital di berbagai bidang kehidupan.', '6a2d20346b35c.jpg', 'Sabtu, 13 Juni 2026 | 16:17');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori_artikel`
--

CREATE TABLE `kategori_artikel` (
  `id` int(11) NOT NULL,
  `nama_kategori` varchar(100) NOT NULL,
  `keterangan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kategori_artikel`
--

INSERT INTO `kategori_artikel` (`id`, `nama_kategori`, `keterangan`) VALUES
(10, 'Database', 'Jenis-Jenis Database'),
(11, 'Web Pemrograman', 'Belajar berbagaimacam tools pemrograman'),
(12, 'Algoritma Complexity', 'Belajar kompleksitas algoritma dengan mudah'),
(13, 'Pemrograman', 'Belajar dasar-dasar pemrograman'),
(14, 'Teknologi', 'Teknologi yang semakin canggih'),
(15, 'Tutorial', 'Step by step laravel'),
(16, 'Tips & Trick', 'Tips Meningkatkan Performa Aplikasi Laravel');

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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `penulis`
--

CREATE TABLE `penulis` (
  `id` int(11) NOT NULL,
  `nama_depan` varchar(100) NOT NULL,
  `nama_belakang` varchar(100) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `penulis`
--

INSERT INTO `penulis` (`id`, `nama_depan`, `nama_belakang`, `user_name`, `password`, `foto`) VALUES
(11, 'Mursiyah', 'Dwi Erlena', 'Dwi123', '$2y$12$xiSZ6gWMIBMFOHX/ICTgYu7ao8P5Y22IfvqFLYeqMWRsnhIXB15ce', 'penulis_69ee09b98e77c.jpeg'),
(15, 'Nor', 'Khairina', 'haikhai_', '$2y$12$idTpuTmzmeFWSNFbfrZtTeDdw01ogEAriBM4E86neqwmI3DVpQvLC', '1781334462_foto rina latar merah.jpg.jpeg'),
(16, 'Budi', 'Irawan', 'BudiIrawan123', '$2y$12$nItKHcF6PPcZ74lk3f4kpuxx1hGJSdZjl5q4JT12uXsc6oqVw.N3y', 'default.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('y4RHcOXiNUQdd78VnqDn6o4Tmxld93iClIdnl779', 16, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiUzZSS0ZOZHNTeU9qMXZPakMzM0lpTGtmZnRNWUN0QVpzVENmWUsxNCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcnRpa2VsIjtzOjU6InJvdXRlIjtzOjEzOiJhcnRpa2VsLmluZGV4Ijt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTY7czoxMToid2FrdHVfbG9naW4iO3M6Mjc6IlNhYnR1LCAxMyBKdW5pIDIwMjYgfCAxNjoxNSI7fQ==', 1781342260);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_artikel_penulis` (`id_penulis`),
  ADD KEY `fk_artikel_kategori` (`id_kategori`);

--
-- Indeks untuk tabel `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_expiration_index` (`expiration`);

--
-- Indeks untuk tabel `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_locks_expiration_index` (`expiration`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indeks untuk tabel `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kategori_artikel`
--
ALTER TABLE `kategori_artikel`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_nama_kategori` (`nama_kategori`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `penulis`
--
ALTER TABLE `penulis`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_user_name` (`user_name`);

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kategori_artikel`
--
ALTER TABLE `kategori_artikel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `penulis`
--
ALTER TABLE `penulis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `artikel`
--
ALTER TABLE `artikel`
  ADD CONSTRAINT `fk_artikel_kategori` FOREIGN KEY (`id_kategori`) REFERENCES `kategori_artikel` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_artikel_penulis` FOREIGN KEY (`id_penulis`) REFERENCES `penulis` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
