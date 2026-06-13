@extends('layouts.blog')

@section('title', $artikel->judul)

@section('content')

<div class="row">

    <div class="col-md-8">

        <div class="card shadow-sm mb-4">

            <img src="{{ asset('storage/gambar/' . $artikel->gambar) }}"
                 class="artikel-img w-100">

            <div class="card-body">

                <h2 class="fw-bold">
                    {{ $artikel->judul }}
                </h2>

                <small class="text-muted">

                    {{ $artikel->penulis->nama_depan }}
                    {{ $artikel->penulis->nama_belakang }}

                    |

                    {{ $artikel->hari_tanggal }}

                </small>

                <hr>

                <p style="text-align:justify;">
                    {{ $artikel->isi }}
                </p>

                <a href="{{ route('blog.index') }}"
                   class="btn btn-secondary btn-sm">

                    Kembali ke Beranda

                </a>

            </div>

        </div>

    </div>

    <div class="col-md-4">

        <div class="card shadow-sm">

            <div class="card-body">

                <h5 class="fw-bold mb-3">
                    Artikel Terkait
                </h5>

                @foreach($terkait as $item)

                    <div class="mb-3">

                        <a href="{{ route('blog.detail', $item->id) }}"
                           class="text-decoration-none fw-semibold">

                            {{ $item->judul }}

                        </a>

                    </div>

                @endforeach

            </div>

        </div>

    </div>

</div>

@endsection