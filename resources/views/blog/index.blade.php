@extends('layouts.blog')

@section('title', 'Halaman Blog')

@section('content')

<div class="row">

    <div class="col-md-8">

        @foreach($artikel as $item)

        <div class="card shadow-sm mb-4">

            <img src="{{ asset('storage/gambar/' . $item->gambar) }}"
                 class="artikel-img w-100">

            <div class="card-body">

                <h3 class="fw-bold">
                    {{ $item->judul }}
                </h3>

                <small class="text-muted">
                    {{ $item->penulis->nama_depan }}
                    {{ $item->penulis->nama_belakang }}
                    |
                    {{ $item->hari_tanggal }}
                </small>

                <p class="mt-3">
                    {{ Str::limit($item->isi, 150) }}
                </p>

                <a href="{{ route('blog.detail', $item->id) }}"
                   class="btn btn-primary btn-sm">

                    Baca Selengkapnya

                </a>

            </div>

        </div>

        @endforeach

    </div>

    <div class="col-md-4">

        <div class="card sidebar-card shadow-sm">

            <div class="card-body">

                <h5 class="fw-bold mb-3">
                    Kategori Artikel
                </h5>

                @foreach($kategori as $item)

                    <a href="{{ route('blog.kategori', $item->id) }}"
                       class="d-block mb-2 text-decoration-none">

                        {{ $item->nama_kategori }}

                    </a>

                @endforeach

            </div>

        </div>

    </div>

</div>

@endsection