@extends('admin.layout')

@section('content')
<div class="container mt-4">
    <div class="d-flex justify-content-between align-items-center mb-3">
        <h3>Tambah Kosakata ({{ $bahasa->nama_bahasa }})</h3>
        <a href="{{ route('isi_kamus.index', $bahasa->id_bahasa ?? $bahasa->id) }}" class="btn btn-secondary">← Kembali</a>
    </div>

    <div class="card shadow-sm p-4">
        <form action="{{ route('isi_kamus.store', $bahasa->id_bahasa ?? $bahasa->id) }}" method="POST">
            @csrf

            <div class="mb-3">
                <label for="kata" class="form-label">Kata</label>
                <input type="text" name="kata" id="kata" class="form-control" required>
            </div>

            <div class="mb-3">
                <label for="arti" class="form-label">Arti</label>
                <input type="text" name="arti" id="arti" class="form-control" required>
            </div>

            <div class="mb-3">
                <label for="contoh" class="form-label">Contoh Kalimat</label>
                <textarea name="contoh" id="contoh" class="form-control" rows="3"></textarea>
            </div>

            <div class="mb-3">
                <label for="kategori" class="form-label">Kategori</label>
                <input type="text" name="kategori" id="kategori" class="form-control" placeholder="(opsional)">
            </div>

            <div class="text-end">
                <button type="submit" class="btn btn-primary">Simpan</button>
                <a href="{{ route('isi_kamus.index', $bahasa->id_bahasa ?? $bahasa->id) }}" class="btn btn-outline-secondary">Batal</a>
            </div>
        </form>
    </div>
</div>
@endsection
