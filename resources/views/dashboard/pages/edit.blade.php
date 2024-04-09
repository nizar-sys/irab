@extends('layouts.app')
@section('title', 'Ubah Data Pages')

@section('title-header', 'Ubah Data Pages')
@section('breadcrumb')
    <li class="breadcrumb-item"><a href="{{ route('home') }}">Dashboard</a></li>
    <li class="breadcrumb-item"><a href="{{ route('pages.index') }}">Data Pages</a></li>
    <li class="breadcrumb-item active">Ubah Data Pages</li>
@endsection

@section('c_css')
<script src="https://cdn.ckeditor.com/4.19.0/full-all/ckeditor.js"></script>
@endsection

@section('content')
    <div class="row">
        <div class="col-12">
            <div class="card shadow">
                <div class="card-header bg-transparent border-0 text-dark">
                    <h5 class="mb-0">Formulir Ubah Data Pages</h5>
                </div>
                <div class="card-body">
                    <form action="{{ route('pages.update', $page->id) }}" method="POST" role="form" enctype="multipart/form-data">
                        @csrf
                        @method('PUT')
                        <div class="row">
                            <div class="col-12">
                                <div class="form-group mb-3">
                                    <label for="title">Title</label>
                                    <input type="text" class="form-control @error('title') is-invalid @enderror" id="title"
                                        placeholder="Title Pages" value="{{ old('title', $page->title) }}" name="title">

                                    @error('title')
                                        <div class="d-block invalid-feedback">{{ $message }}</div>
                                    @enderror
                                </div>
                            </div>
                        </div>

                        <div class="form-group mb-3">
                            <label for="content">Content</label>
                            <textarea class="form-control @error('content') is-invalid @enderror" id="ckeditor-backend"
                                placeholder="Content Pages" name="content" cols="30" rows="10">
                                {!! old('content', $page->content) !!}
                            </textarea>

                            @error('content')
                                <div class="d-block invalid-feedback">{{ $message }}</div>
                            @enderror
                        </div>


                        <div class="row">
                            <div class="col-6">
                                <button type="submit" class="btn btn-sm btn-primary">Ubah</button>
                                <a href="{{route('pages.index')}}" class="btn btn-sm btn-secondary">Kembali</a>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection

@section('script')
<script>
    CKEDITOR.replace( 'ckeditor-backend' );
</script>
@endsection
