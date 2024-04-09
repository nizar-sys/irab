@extends('layouts.irab')
@section('title', $page->title)

@section('content')
<div class="acc">
    <div class="d-flex justify-content-center align-items-center h-100 text-light fw-bold">
        <h1 class="title">{{$page->title}}</h1>
    </div>
</div>

<main id="home">

    <div class="container mx-auto p-5">
        <div class="row">
            <div class="col-sm-12">
                <div class="col-md-12">
                    {!! $page->content !!}
                </div>
            </div>
        </div>
    </div>

</main>
@endsection

@section('script')
<script>
    document.getElementsByTagName('body')[0].classList.remove('bg-blue')
</script>
@endsection
