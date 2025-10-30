<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Bahasa;

class BahasaController extends Controller {
    public function index(){
        $bahasa = Bahasa::orderBy('tahun_update', 'desc')->get();
        return view('admin.home', compact('bahasa'));
    }
    public function store(Request $request){
        $request->validate([
            'nama_bahasa' => 'required|unique:bahasa',
            'asal_negara' => 'required',
            'deskripsi' => 'required',
            'tahun_update' => 'required|integer',
        ]);

        Bahasa::create([
            'nama_bahasa' => $request->nama_bahasa,
            'asal_negara' => $request->asal_negara,
            'deskripsi' => $request->deskripsi,
            'tahun_update' => $request->tahun_update,
        ]);

        return redirect()->route('home')->with('success', 'Bahasa baru berhasil ditambahkan!');
    }

    // Menghapus bahasa
    public function destroy($id)
    {
        $bahasa = Bahasa::findOrFail($id);
        $bahasa->delete();

        return redirect()->route('home')->with('success', 'Bahasa berhasil dihapus!');
    }
}
