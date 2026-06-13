Aplikasi Blog Laravel
---
- Nama Lengkap : Mursiyah Dwi Erlena
- NIM : 240605110010
- Mata Kuliah : Web Programming B
- Dosen Pengampu : A'la Syauqi, M.Kom

---
Deskripsi Singkat Aplikasi

Aplikasi Blog Laravel merupakan sistem manajemen konten (CMS) berbasis framework Laravel yang digunakan untuk mengelola artikel, kategori artikel, dan penulis.

Aplikasi ini memiliki dua bagian utama yaitu halaman administrator dan halaman pengunjung. Aplikasi Blog ini adalah sistem manajemen konten (CMS) berbasis web yang dibangun menggunakan framework Laravel 11. Aplikasi ini terdiri dari dua bagian utama:

Halaman CMS (Administrator)
Halaman yang hanya dapat diakses oleh penulis yang sudah login. Fitur yang tersedia meliputi:
- Kelola Artikel — tambah, edit, dan hapus artikel beserta gambar
- Kelola Penulis — tambah, edit, dan hapus data penulis beserta foto profil
- Kelola Kategori Artikel — tambah, edit, dan hapus kategori artikel

Halaman Pengunjung (Publik)
Halaman yang dapat diakses oleh siapa saja tanpa perlu login. Fitur yang tersedia meliputi:
- Halaman utama yang menampilkan 5 artikel terbaru
- Filter artikel berdasarkan kategori melalui widget kategori
- Halaman detail artikel beserta 5 artikel terkait dari kategori yang sama

---

Teknologi yang Digunakan
- Framework: Laravel 11
- Bahasa: PHP 8.2
- Database: MySQL
- Frontend: Bootstrap 5
- Template Engine: Blade
- Server Lokal: XAMPP

---
Fitur utama aplikasi:

- Login dan logout
- CRUD artikel
- CRUD kategori artikel
- CRUD penulis
- Upload gambar artikel
- Halaman utama pengunjung
- Filter artikel berdasarkan kategori
- Halaman detail artikel
- Artikel terkait

---

Langkah-Langkah Menjalankan Aplikasi Secara Lokal
Prasyarat
Pastikan perangkat sudah terinstal:
- XAMPP (PHP 8.2 + MySQL)
- Composer
- Git

1. Clone Repository

```bash
https://github.com/mursiyahdwierlenaaa/aplikasi-blog-240605110010.git
```

2. Install Dependensi

```bash
composer install
```

3. Salin File Environment

```bash
cp .env.example .env
```

4. Generate Application Key

```bash
php artisan key:generate
```

5. Konfigurasi Database

Buka file `.env` dan sesuaikan konfigurasi berikut:

```env
APP_NAME="Aplikasi Blog"
APP_URL=http://localhost:8000

DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=db_blog
DB_USERNAME=root
DB_PASSWORD=
```

6. Buat Database

Buka phpMyAdmin melalui `http://localhost/phpmyadmin`, lalu buat database baru dengan nama `db_blog`.

7. Jalankan Migrasi

```bash
php artisan migrate
```

8. Buat Symbolic Link Storage

```bash
php artisan storage:link
```

9. Jalankan MySQL XAMPP

Pastikan layanan **MySQL** sudah aktif melalui XAMPP Control Panel. Apache tidak perlu dijalankan karena aplikasi menggunakan development server Laravel.

10. Jalankan Development Server

```bash
php artisan serve
```

11. Akses Aplikasi
  ``` Halaman Pengunjung : http://localhost:8000 ``` 
  ``` Halaman Login CMS : http://localhost:8000/login ```
  ``` Dashboard CMS : http://localhost:8000/dashboard ```

---
Catatan Penting

- File `.env` **tidak disertakan** dalam repositori karena berisi informasi sensitif seperti kredensial database
- Salin `.env.example` menjadi `.env` dan sesuaikan konfigurasi sebelum menjalankan aplikasi
- Pastikan layanan **MySQL** pada XAMPP sudah aktif sebelum menjalankan `php artisan serve`
- Jika muncul error tabel tidak ditemukan, jalankan `php artisan migrate` terlebih dahulu

---

Tautan Video Demonstrasi
Link : https://youtu.be/8bL_wF6gwow?si=LBiCPUnMT9k5-ydV 
