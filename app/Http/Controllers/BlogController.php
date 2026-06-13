<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Artikel;
use App\Models\KategoriArtikel;

class BlogController extends Controller
{
    public function index(Request $request)
    {
        $kategoriAktif = $request->query('kategori');

        $kategoris = KategoriArtikel::withCount('artikel')->get();

        $query = Artikel::with(['penulis', 'kategori'])
            ->orderBy('id', 'desc');

        if ($kategoriAktif) {
            $query->where('id_kategori', $kategoriAktif);
        }

        $artikels = $query->take(5)->get();

        return view('publik.index', compact('artikels', 'kategoris', 'kategoriAktif'));
    }

    public function show($id)
    {
        $artikel = Artikel::with(['penulis', 'kategori'])->findOrFail($id);

        $artikelTerkait = Artikel::with(['penulis'])
            ->where('id_kategori', $artikel->id_kategori)
            ->where('id', '!=', $artikel->id)
            ->orderBy('id', 'desc')
            ->take(5)
            ->get();

        return view('publik.show', compact('artikel', 'artikelTerkait'));
    }
}