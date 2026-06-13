@extends('publik.layouts.app')

@section('title', 'Blog Kami — Halaman Utama')

@section('content')
<div class="row g-4">

    {{-- Kolom kiri: daftar artikel --}}
    <div class="col-lg-8">

        @forelse($artikels as $item)
        <div class="card border-0 shadow-sm mb-4" style="border-radius: 10px; overflow: hidden;">

            {{-- Gambar artikel --}}
            @if($item->gambar)
            <img src="{{ asset('storage/gambar/' . $item->gambar) }}"
                 alt="{{ $item->judul }}"
                 style="width: 100%; height: 230px; object-fit: cover;">
            @endif

            <div class="card-body p-4">
                {{-- Badge kategori --}}
                <a href="{{ route('publik.index', ['kategori' => $item->id_kategori]) }}"
                   style="display:inline-block; background:#e8f8ef; color:#27ae60;
                          font-size:11px; font-weight:600; padding:3px 10px;
                          border-radius:20px; text-decoration:none; margin-bottom:10px;">
                    {{ $item->kategori->nama_kategori ?? '-' }}
                </a>

                {{-- Judul --}}
                <h5 class="fw-bold mb-2" style="font-size: 1.1rem; color: #1e2d3d;">
                    {{ $item->judul }}
                </h5>

                {{-- Meta penulis --}}
                <div class="d-flex align-items-center gap-2 mb-3">
                    <div class="rounded-circle d-flex align-items-center justify-content-center fw-bold text-white"
                         style="width:28px; height:28px; background:#2ecc71;
                                font-size:12px; flex-shrink:0;">
                        {{ strtoupper(substr($item->penulis->nama_depan ?? 'P', 0, 1)) }}
                    </div>
                    <small class="text-muted">
                        {{ $item->penulis->nama_depan ?? 'Anonim' }}
                        {{ $item->penulis->nama_belakang ?? '' }}
                        &bull; {{ $item->hari_tanggal }}
                    </small>
                </div>

                {{-- Ringkasan isi --}}
                <p class="text-muted mb-3" style="font-size: 13px; line-height: 1.75;">
                    {{ Str::limit(strip_tags($item->isi), 160) }}
                </p>

                {{-- Tombol baca --}}
                <a href="{{ route('publik.show', $item->id) }}"
                   class="btn btn-sm text-white"
                   style="background: #2ecc71; border-radius: 6px;
                          font-size: 13px; padding: 6px 16px;">
                    Baca Selengkapnya &rarr;
                </a>
            </div>
        </div>
        @empty
        <div class="card border-0 shadow-sm p-5 text-center">
            <p class="text-muted mb-3">Belum ada artikel tersedia.</p>
            @if(request('kategori'))
            <a href="{{ route('publik.index') }}"
               class="btn btn-sm btn-outline-secondary">
                Lihat Semua Artikel
            </a>
            @endif
        </div>
        @endforelse

    </div>

    {{-- Kolom kanan: widget kategori --}}
    <div class="col-lg-4">
        <div class="sidebar-box">
            <h6>Kategori Artikel</h6>

            {{-- Semua artikel --}}
            <a href="{{ route('publik.index') }}"
               class="kat-link {{ !request('kategori') ? 'active' : '' }}">
                Semua Artikel
                <span class="kat-count">{{ $kategoris->sum('artikel_count') }}</span>
            </a>

            {{-- Per kategori --}}
            @foreach($kategoris as $kat)
            <a href="{{ route('publik.index', ['kategori' => $kat->id]) }}"
               class="kat-link {{ request('kategori') == $kat->id ? 'active' : '' }}">
                {{ $kat->nama_kategori }}
                <span class="kat-count">{{ $kat->artikel_count }}</span>
            </a>
            @endforeach

        </div>
    </div>

</div>
@endsection