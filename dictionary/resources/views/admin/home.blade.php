@extends('admin.layout')

@section('content')
<div class="d-flex justify-content-between align-items-center mb-3">
    <h3>Daftar Bahasa di SEALang Dictionary</h3>
    <button class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#tambahBahasaModal">
        ＋ Tambah Bahasa
    </button>
</div>

<table class="table table-bordered table-striped align-middle">
    <thead class="table-dark text-center">
        <tr>
            <th>No</th>
            <th>Nama Bahasa</th>
            <th>Asal Negara</th>
            <th>Deskripsi</th>
            <th>Tahun Update</th>
            <th>Aksi</th>
        </tr>
    </thead>
    <tbody>
        @forelse ($bahasa as $index => $bhs)
        <tr>
            <td class="text-center">{{ $index + 1 }}</td>
            <td>{{ $bhs->nama_bahasa }}</td>
            <td>{{ $bhs->asal_negara }}</td>
            <td>{{ Str::limit($bhs->deskripsi, 80) }}</td>
            <td class="text-center">{{ $bhs->tahun_update }}</td>
            <td class="text-center">
                <a href="{{ route('isi_kamus.index', ['id' => $bhs->id_bahasa]) }}" 
                   class="btn btn-secondary btn-sm mb-1">
                   Lihat Kosakata
                </a>
                <form action="{{ route('bahasa.destroy', $bhs->id_bahasa) }}" method="POST" class="d-inline">
                    @csrf
                    @method('DELETE')
                    <button type="submit" 
                            class="btn btn-danger btn-sm"
                            onclick="return confirm('Apakah Anda yakin ingin menghapus bahasa ini?')">
                        Hapus
                    </button>
                </form>
            </td>
        </tr>
        @empty
        <tr>
            <td colspan="6" class="text-center">Belum ada data bahasa.</td>
        </tr>
        @endforelse
    </tbody>
</table>

<!-- Modal Tambah Bahasa -->
<div class="modal fade" id="tambahBahasaModal" tabindex="-1" aria-labelledby="tambahBahasaLabel" aria-hidden="true">
  <div class="modal-dialog">
    <form action="{{ route('bahasa.store') }}" method="POST" class="modal-content">
        @csrf
        <div class="modal-header">
            <h5 class="modal-title" id="tambahBahasaLabel">Tambah Bahasa Baru</h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
            <div class="mb-3">
                <label for="nama_bahasa" class="form-label">Nama Bahasa</label>
                <input type="text" id="nama_bahasa" name="nama_bahasa" class="form-control" required>
            </div>
            <div class="mb-3">
                <label for="asal_negara" class="form-label">Asal Negara</label>
                <input type="text" id="asal_negara" name="asal_negara" class="form-control" required>
            </div>
            <div class="mb-3">
                <label for="deskripsi" class="form-label">Deskripsi</label>
                <textarea id="deskripsi" name="deskripsi" class="form-control" rows="3" required></textarea>
            </div>
            <div class="mb-3">
                <label for="tahun_update" class="form-label">Tahun Update</label>
                <input type="number" id="tahun_update" name="tahun_update" class="form-control" required>
            </div>
        </div>
        <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Batal</button>
            <button type="submit" class="btn btn-success">Simpan</button>
        </div>
    </form>
  </div>
</div>
@endsection
