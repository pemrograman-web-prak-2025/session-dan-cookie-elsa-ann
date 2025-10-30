@extends('admin.layout')

@section('content')
<div class="d-flex justify-content-between align-items-center mb-3">
    <h3>Daftar Kosakata</h3>
    <a href="{{ route('isi_kamus.create', ['id' => $id_bahasa]) }}" class="btn btn-primary">＋ Tambah Kosakata</a>

</div>

<table class="table table-bordered table-striped align-middle">
    <thead class="table-dark text-center">
        <tr>
            <th>No</th>
            <th>Bahasa</th>
            <th>Kata</th>
            <th>Arti</th>
            <th>Contoh</th>
            <th>Kategori</th>
            <th>Aksi</th>
        </tr>
    </thead>
    <tbody>
        @forelse ($isi_kamus as $index => $item)
        <tr>
            <td class="text-center">{{ $index + 1 }}</td>
            <td>{{ $item->bahasa->nama_bahasa ?? '-' }}</td>
            <td>{{ $item->kata }}</td>
            <td>{{ $item->arti }}</td>
            <td>{{ $item->contoh }}</td>
            <td>{{ $item->kategori }}</td>
            <td class="text-center">
                <form action="{{ route('isi_kamus.destroy', ['bahasa_id' => $id_bahasa, 'id' => $item->id_kata]) }}" method="POST" class="d-inline">
                    @csrf
                    @method('DELETE')
                    <button type="submit" class="btn btn-danger btn-sm"
                        onclick="return confirm('Yakin mau hapus kata ini?')">Hapus</button>
                </form>
            </td>
        </tr>
        @empty
        <tr>
            <td colspan="7" class="text-center">Belum ada data kosakata.</td>
        </tr>
        @endforelse
    </tbody>
</table>
@endsection
