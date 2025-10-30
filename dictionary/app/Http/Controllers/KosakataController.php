<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Kosakata;
use App\Models\Bahasa;

class KosakataController extends Controller
{
    public function index($id){
        $bahasa = Bahasa::findOrFail($id);
        $isi_kamus = Kosakata::where('id_bahasa', $id)->get();

        return view('admin.isi_kamus.index', [
            'isi_kamus' => $isi_kamus,
            'id_bahasa' => $id,
            'bahasa' => $bahasa
        ]);
    }

    public function create($id){
        $bahasa = Bahasa::findOrFail($id);
        return view('admin.isi_kamus.create', compact('bahasa'));
    }

    public function store(Request $request, $id){
        $request->validate([
            'kata' => 'required',
            'arti' => 'required',
            'contoh' => 'nullable',
            'kategori' => 'nullable',
        ]);

        Kosakata::create([
            'kata' => $request->kata,
            'arti' => $request->arti,
            'contoh' => $request->contoh,
            'kategori' => $request->kategori,
            'id_bahasa' => $id
        ]);

        return redirect()->route('isi_kamus.index', ['id' => $id])
                         ->with('success', 'Kosakata berhasil ditambahkan!');
    }

    public function destroy($bahasa_id, $id){
        $kosakata = Kosakata::findOrFail($id);
        $kosakata->delete();

        return redirect()->route('isi_kamus.index', ['id' => $bahasa_id])
                         ->with('success', 'Kosakata berhasil dihapus!');
    }
}
