@extends('publik.layouts.app')

@section('title', $artikel->judul . ' — Blog Kami')

@section('content')
<div class="row g-4">

    {{-- Kolom kiri: detail artikel --}}
    <div class="col-lg-8">
        <div class="card border-0 shadow-sm p-4" style="border-radius: 10px;">

            {{-- Breadcrumb --}}
            <nav style="font-size: 13px; margin-bottom: 16px;">
                <a href="{{ route('publik.index') }}"
                   style="color: #2ecc71; text-decoration: none;">Beranda</a>
                <span class="text-muted mx-1">/</span>
                <a href="{{ route('publik.index', ['kategori' => $artikel->id_kategori]) }}"
                   style="color: #2ecc71; text-decoration: none;">
                    {{ $artikel->kategori->nama_kategori ?? '-' }}
                </a>
                <span class="text-muted mx-1">/</span>
                <span class="text-muted">{{ Str::limit($artikel->judul, 40) }}</span>
            </nav>

            {{-- Gambar --}}
            @if($artikel->gambar)
            <img src="{{ asset('storage/gambar/' . $artikel->gambar) }}"
                 alt="{{ $artikel->judul }}"
                 class="rounded mb-3"
                 style="width: 100%; height: 280px; object-fit: cover;">
            @endif

            {{-- Badge kategori --}}
            <a href="{{ route('publik.index', ['kategori' => $artikel->id_kategori]) }}"
               style="display:inline-block; background:#e8f8ef; color:#27ae60;
                      font-size:11px; font-weight:600; padding:3px 10px;
                      border-radius:20px; text-decoration:none; margin-bottom:12px;">
                {{ $artikel->kategori->nama_kategori ?? '-' }}
            </a>

            {{-- Judul --}}
            <h3 class="fw-bold mb-3" style="color: #1e2d3d; font-size: 1.4rem;">
                {{ $artikel->judul }}
            </h3>

            {{-- Meta penulis --}}
            <div class="d-flex align-items-center gap-2 mb-4">
                <div class="rounded-circle d-flex align-items-center justify-content-center
                            fw-bold text-white"
                     style="width:36px; height:36px; background:#2ecc71;
                            font-size:14px; flex-shrink:0;">
                    {{ strtoupper(substr($artikel->penulis->nama_depan ?? 'P', 0, 1)) }}
                </div>
                <div>
                    <div class="fw-semibold" style="font-size: 13px; color: #1e2d3d;">
                        {{ $artikel->penulis->nama_depan ?? 'Anonim' }}
                        {{ $artikel->penulis->nama_belakang ?? '' }}
                    </div>
                    <div class="text-muted" style="font-size: 12px;">
                        {{ $artikel->hari_tanggal }}
                    </div>
                </div>
            </div>

            {{-- Isi artikel --}}
            <div style="line-height: 1.9; font-size: 14px; color: #374151;">
                {!! nl2br(e($artikel->isi)) !!}
            </div>

            {{-- Tombol kembali --}}
            <div class="mt-4 pt-3" style="border-top: 1px solid #eef0f3;">
                <a href="{{ route('publik.index') }}"
                   class="btn btn-sm btn-outline-secondary">
                    &larr; Kembali ke Beranda
                </a>
            </div>

        </div>
    </div>

    {{-- Kolom kanan: artikel terkait --}}
    <div class="col-lg-4">
        <div class="sidebar-box">
            <h6>Artikel Terkait</h6>

            @forelse($artikelTerkait as $terkait)
            <a href="{{ route('publik.show', $terkait->id) }}"
               class="d-flex gap-3 mb-3 text-decoration-none text-dark align-items-start">

                {{-- Thumbnail --}}
                @if($terkait->gambar)
                <img src="{{ asset('storage/gambar/' . $terkait->gambar) }}"
                     alt="{{ $terkait->judul }}"
                     style="width:68px; height:54px; object-fit:cover;
                            border-radius:6px; flex-shrink:0;
                            border: 1px solid #eef0f3;">
                @else
                <div style="width:68px; height:54px; background:#eef0f3;
                            border-radius:6px; flex-shrink:0;"></div>
                @endif

                {{-- Info --}}
                <div>
                    <div style="font-size:13px; font-weight:600;
                                line-height:1.45; color:#1e2d3d;">
                        {{ Str::limit($terkait->judul, 55) }}
                    </div>
                    <div class="text-muted mt-1" style="font-size:11px;">
                        {{ $terkait->hari_tanggal }}
                    </div>
                </div>

            </a>
            @empty
            <p class="text-muted" style="font-size: 13px;">
                Tidak ada artikel terkait.
            </p>
            @endforelse

        </div>
    </div>

</div>
@endsection