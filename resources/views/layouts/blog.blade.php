<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>@yield('title')</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>

        body{
            background-color:#f5f7fb;
        }

        .navbar{
            background-color:#ffffff;
            box-shadow:0 2px 10px rgba(0,0,0,0.05);
        }

        .card{
            border:none;
            border-radius:12px;
        }

        .artikel-img{
            height:220px;
            object-fit:cover;
            border-radius:12px 12px 0 0;
        }

        .sidebar-card{
            border-radius:12px;
        }

    </style>

</head>
<body>

<nav class="navbar navbar-expand-lg mb-4">
    <div class="container">
        <a class="navbar-brand fw-bold" href="{{ route('blog.index') }}">
            Aplikasi Blog
        </a>
    </div>
</nav>

<div class="container">

    @yield('content')

</div>

</body>
</html>