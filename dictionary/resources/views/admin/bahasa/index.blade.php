@extends('admin.layout')

@section('content')
  <h2>Daftar Bahasa</h2>

  @if(session('success'))
    <div class="alert alert-success">{{ session('success') }}</div>
  @endif

  <table class="table table-bordered">
    <thead>
      <tr>
        <th>No</th>
        <th>Nama Bahasa</th>
        <th>Asal Negara</th>
        <th>Tahun Update</th>
        <th>Aksi</th>
      </tr>
    </thead>
    <tbody>
      @foreach($bahasa as $index => $bhs)
        <tr>
          <td>{{ $index + 1 }}</td>
          <td>{{ $bhs->nama_bahasa }}</td>
          <td>{{ $bhs->asal_negara }}</td>
          <td>{{ $bhs->tahun_update }}</td>
          <td>
            <a href="{{ route('kosakata.index', $bahasa->id) }}" class="btn btn-sm btn-info">Lihat Kosakata</a>
            <form action="{{ route('bahasa.destroy', $bahasa->id) }}" method="POST" style="display:inline;">
              @csrf
              @method('DELETE')
              <button class="btn btn-sm btn-danger" onclick="return confirm('Yakin hapus?')">Hapus</button>
            </form>
          </td>
        </tr>
      @endforeach
    </tbody>
  </table>
@endsection