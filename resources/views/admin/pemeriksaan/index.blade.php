@extends('master')

@section('content')

<div class="container mt-5">
    <div class="row">
        <div class="col-md-12">
        @include('partial.successalert')
            <div class="card border-0 shadow rounded">
                <div class="card-body">
                    <a href="" class="btn btn-primary">Pemeriksaan Baru</a>
                    <table class="table table-bordered mt-1 text-center mt-3">
                        <thead>
                        <tr>
                            <th scope="col">No Pemeriksaan</th>
                            <th scope="col">Nama Pasien</th>
                            <th scope="col">Nama Dokter</th>
                            <th scope="col">Spesialisasi</th>
                            <th scope="col">Tanggal</th>
                            <th scope="col">Keluhan</th>
                            <th scope="col">File</th>
                            <th scope="col">Action</th>
                        </tr>
                        </thead>
                        <tbody>
                            
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td><a href="" class="btn btn-sm btn-primary"> File</a></td>
                                    <td>
                                        <div class="btn-group" role="group" aria-label="Aksi">
                                            <a href="" class="btn btn-sm btn-primary">EDIT</a>
                                            <form onsubmit="return confirm('Apakah Anda Yakin ?');" action="" method="POST">
                                                @csrf
                                                @method('DELETE')
                                                <button type="submit" class="btn btn-sm btn-danger">DELETE</button>
                                            </form>
                                        </div>
                                    </td>
                                    
                                </tr>
                            @empty
                                <tr >
                                    <td colspan='7'>Data Pemeriksaan tidak ada</td>
                                </tr>
                            @endforelse
                        </tbody>
                    </table>
                    
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
