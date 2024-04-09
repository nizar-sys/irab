@extends('layouts.irab')
@section('title', 'Home')

@section('content')
<div class="banner d-flex flex-wrap justify-content-center align-items-center h-100 text-light fw-bold">
    <img src="{{ asset('/irab/logo.png') }}" class="logo" alt="">
</div>

<main id="home">

    <div class="container">
        <section id="welcome" class="text-light fs-5">
            <div class="fw-bold fs-1 mb-5">Welcome to IRAB</div>
            <div class="row ">
                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12">
                    <p>
                        Lorem ipsum dolor sit amet consectetur, adipisicing elit. Velit, placeat! Neque nostrum aliquid recusandae accusamus.
                    </p>
                </div>
                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12">
                    <p>
                        Lorem ipsum dolor sit amet consectetur, adipisicing elit. Velit, placeat! Neque nostrum aliquid recusandae accusamus.
                    </p>
                </div>
                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12">
                    <p>
                        Lorem ipsum dolor sit amet consectetur, adipisicing elit. Velit, placeat! Neque nostrum aliquid recusandae accusamus.
                    </p>
                </div>
                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12">
                    <p>
                        Lorem ipsum dolor sit amet consectetur, adipisicing elit. Velit, placeat! Neque nostrum aliquid recusandae accusamus.
                    </p>
                </div>
            </div>
        </section>
    </div>

</main>
@endsection
