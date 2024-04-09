<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>@yield('title')</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <link rel="stylesheet" href="{{ asset('/irab/style.css') }}">
  </head>
<body class="bg-blue">
    <nav class="navbar navbar-expand-lg p-3 fs-5">
        <div class="container">
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse justify-content-center" id="navbarNav">
                <ul class="navbar-nav mb-2 mb-lg-0 ">
                    <li class="nav-item me-3">
                        <a class="nav-link active" aria-current="page" href="/">Home</a>
                    </li>
                    <li class="nav-item dropdown me-3">
                        <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            About US
                        </a>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="/profile">PROFILE</a></li>
                            <li><a class="dropdown-item" href="/our-service">OUR SERVICE</a></li>
                            <li><a class="dropdown-item" href="/accreditation">ACCREDITATION</a></li>
                            <li><a class="dropdown-item" href="/intersic-values">INTERSIC VALUES</a></li>
                            <li><a class="dropdown-item" href="/benefits">BENEFITS</a></li>
                            <li><a class="dropdown-item" href="/complaint-procedure">COMPLAINT PROCEDURE</a></li>
                        </ul>
                    </li>
                    <li class="nav-item me-3">
                        <a class="nav-link" aria-current="page" href="">Accredited Organizations</a>
                    </li>
                    <li class="nav-item me-3">
                        <a class="nav-link" aria-current="page" href="">Certified Clients</a>
                    </li>
                    <li class="nav-item dropdown me-3">
                        <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            Supporting Information
                        </a>
                        <ul class="dropdown-menu" role="menu">
                            <li><a href="assets/file/iascb-inquiry-form.pdf" target="_blank">Apply for Accreditation</a></li>
                          </ul>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    @yield('content')


        <footer class="text-center text-white" style="background-color: #15191c;">

          <div class="container p-5 pb-0">

            <div class="row">
                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 text-start">
                    <h2 class="text-uppercase mb-4 fw-bold">CONTACT US</h2>
                    <p>
                        <b>Address: </b> Rrz Enterprise Centre, Holme Lacey Road, Hereford HR2, United Kingdom
                        <br><br>
                        <b>Phone :</b> +44(0) 1619554200
                        <br><br>
                        <b>Email :</b> info@iascb.org
                    </p>
                </div>
                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 text-start">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d439.5538755537527!2d0.007212514999079694!3d51.449118811177044!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47d8a9e65280ce85%3A0xba2995d24ccda725!2sHolme%20Lacey%20Rd%2C%20London%2C%20Britania%20Raya!5e0!3m2!1sid!2sid!4v1574405656332!5m2!1sid!2sid" frameborder="0" style="border:0; width: 100%" allowfullscreen=""></iframe>
                </div>
            </div>

          </div>



          <div class="text-center p-4 mt-4" style="background-color: rgba(0, 0, 0, 0.2);">
            © 2020 Copyright:
            <a class="text-white" href="#!">Abyo</a>
          </div>

        </footer>





    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
    @yield('script')
  </body>
</html>
