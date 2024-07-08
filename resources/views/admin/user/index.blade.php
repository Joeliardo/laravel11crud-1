@extends('master')

@section('content')

<div class="container mt-5">
    <div class="row">
        <div class="col-md-12">
            @if(session('message'))
                <div class="alert alert-success">
                    {{ session('message') }}
                </div>
            @endif
            <div class="card border-0 shadow rounded">
                <div class="card-body">
                    <a href="{{route('user.create')}}" class="btn btn-primary">New User</a>
                    <table class="table table-bordered mt-1 text-center mt-3">
                        <thead>
                        <tr>
                            <th scope="col">Name</th>
                            <th scope="col">Email</th>
                            <th scope="col">Create At</th>
                            <th scope="col">Action</th>
                        </tr>
                        </thead>
                        <tbody>
                            @forelse($listuser as $u)
                                <tr>
                                    <td>{{ $u->name }}</td>
                                    <td>{{ $u->email }}</td>
                                    <td>{{ $u->created_at }}</td>
                                    <td>
                                        <a href="{{ route('user.edit', $u->id) }}" class="btn btn-primary">EDIT</a>
                                        <form onsubmit="return confirm('Apakah Anda Yakin ?');" action="{{ route('user.destroy', $u->id) }}" method="POST">
                                            @csrf
                                            @method('DELETE')
                                            <button type="submit" class="btn btn-danger">DELETE</button>
                                        </form>
                                    </td>
                                    
                                </tr>
                            @empty
                                <tr>
                                    <td>Data user tidak ada</td>
                                </tr>
                            @endforelse
                        </tbody>
                    </table>
                    {{ $listuser->links() }}
                </div>
            </div>
        </div>
    </div>
</div>
@endsection