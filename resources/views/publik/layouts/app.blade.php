<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>@yield('title', 'Blog Kami')</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f4f6f8;
            font-family: 'Segoe UI', sans-serif;
            font-size: 14px;
        }

        /* Navbar */
        .navbar-publik {
            background-color: #1e2d3d;
            padding: 14px 0;
        }
        .navbar-publik .brand-name {
            font-size: 1.1rem;
            font-weight: 700;
            color: #ffffff;
            text-decoration: none;
        }
        .navbar-publik .brand-sub {
            font-size: 0.72rem;
            color: #8fa3b1;
            display: block;
        }
        .navbar-publik .nav-link {
            color: #c5d5e0 !important;
            font-size: 13px;
            padding: 6px 14px !important;
        }
        .navbar-publik .nav-link:hover {
            color: #ffffff !important;
        }
        .btn-login {
            background: #2ecc71;
            color: #fff;
            border-radius: 6px;
            font-size: 13px;
            padding: 5px 16px;
            text-decoration: none;
            border: none;
            transition: background 0.15s;
        }
        .btn-login:hover {
            background: #27ae60;
            color: #fff;
        }

        /* Sidebar kategori */
        .sidebar-box {
            background: #ffffff;
            border-radius: 8px;
            padding: 20px;
            box-shadow: 0 1px 4px rgba(0,0,0,0.06);
        }
        .sidebar-box h6 {
            font-weight: 700;
            font-size: 0.9rem;
            color: #1e2d3d;
            margin-bottom: 14px;
            padding-bottom: 10px;
            border-bottom: 1px solid #eef0f3;
        }
        .kat-link {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 8px 10px;
            border-radius: 6px;
            color: #4a5568;
            text-decoration: none;
            font-size: 13px;
            margin-bottom: 4px;
            transition: all 0.15s;
        }
        .kat-link:hover {
            background: #f0f4f8;
            color: #1e2d3d;
        }
        .kat-link.active {
            background: #2ecc71;
            color: #ffffff;
            font-weight: 600;
        }
        .kat-link .kat-count {
            font-size: 11px;
            background: rgba(0,0,0,0.08);
            padding: 1px 8px;
            border-radius: 20px;
        }
        .kat-link.active .kat-count {
            background: rgba(255,255,255,0.25);
            color: #fff;
        }

        /* Footer */
        footer {
            background-color: #1e2d3d;
            color: #8fa3b1;
            padding: 20px 0;
            text-align: center;
            font-size: 12px;
            margin-top: 40px;
        }
    </style>
    @stack('styles')
</head>
<body>

{{-- Navbar --}}
<nav class="navbar-publik">
    <div class="container d-flex justify-content-between align-items-center">

        {{-- Brand --}}
        <a href="{{ route('publik.index') }}" class="brand-name">
            Blog Kami
            <span class="brand-sub">Artikel terbaru seputar teknologi dan pemrograman</span>
        </a>

        {{-- Menu + Tombol Login/Dashboard --}}
        <div class="d-flex align-items-center gap-1">
            <a href="{{ route('publik.index') }}" class="nav-link">Beranda</a>
            <a href="{{ route('publik.index') }}" class="nav-link">Artikel</a>
            <a href="#" class="nav-link">Kategori</a>
            <a href="#" class="nav-link">Tentang</a>

            @auth
                <a href="{{ route('dashboard') }}" class="btn-login ms-2">
                    Dashboard
                </a>
            @else
                <a href="{{ route('login') }}" class="btn-login ms-2">
                    Login
                </a>
            @endauth
        </div>

    </div>
</nav>

{{-- Konten Utama --}}
<main class="py-4">
    <div class="container">
        @yield('content')
    </div>
</main>

{{-- Footer --}}
<footer>
    &copy; {{ date('Y') }} Blog Kami. Seluruh hak cipta dilindungi.
</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
@stack('scripts')
</body>
</html>