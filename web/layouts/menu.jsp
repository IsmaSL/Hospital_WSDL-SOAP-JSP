<%-- 
    Document   : menu
    Created on : 19/05/2020, 12:55:49 AM
    Author     : Isma
--%>
<!-- Navigation -->
    <header>
        <style>
         .navbar .navbar-brand img {
          height: 20px;
        }
        .navbar .navbar-brand {
          padding-top: 0;
        }
        .navbar .nav-link {
          color: #444343!important;
        }
        .navbar .button-collapse {
          padding-top: 1px;
        }
        .card-intro .card-body {
          padding-top: 1.5rem;
          padding-bottom: 1.5rem;
          border-radius: 0 !important;
        }
        .card-intro .card-body h1 {
          margin-bottom: 0;
        }
        .card-intro {
          margin-top: 64px;
        }
        @media (max-width: 450px) {
          .card-intro {
            margin-top: 56px;
          }
        }
        @media (min-width: 1441px) {
          .card-intro {
            padding-left: 0 !important;
          }
        }
        </style>
        <nav class="navbar fixed-top navbar-expand-lg navbar-light white scrolling-navbar">
            <div class="container">
                <a class="navbar-brand waves-effect" href="index.jsp">
                    <i class="fas fa-male fa-lg blue-text"></i> <i class="far fa-hospital fa-lg green-text"></i> <i class="fas fa-female fa-lg blue-text"></i>
                </a> 
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                    aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <!-- Links -->
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <!-- Left -->
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item">
                            <a class="nav-link waves-effect" href="index.jsp"><i class="fas fa-home fa-lg"></i> Inicio</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link waves-effect" href="pacientes.jsp"><i class="fas fa-user fa-lg"></i> Pacientes</a>
                        </li>
                        <!--
                        <li class="nav-item">
                            <a class="nav-link waves-effect" href="#"><i class="fas fa-edit fa-lg"></i> Actualizar</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link waves-effect" href="#"><i class="fas fa-trash-alt fa-lg"></i> Eliminar</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link waves-effect" href="#"><i class="fas fa-sign-out-alt fa-lg"></i> Salir</a>                       
                        </li>
                        -->
                    </ul>
                    <ul class="navbar-nav nav-flex-icons">
                        <li class="nav-item">
                            <a href="" class="nav-link waves-effect" target="_blank">
                                <i class="fab fa-facebook-f"></i>
                            </a>
                        </li> 
                        <li class="nav-item">
                            <a href="" class="nav-link waves-effect" target="_blank">
                                <i class="fab fa-twitter"></i>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="" class="nav-link waves-effect" target="_blank">
                                <i class="fab fa-github"></i>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <div class="card card-intro blue-gradient">
            <div class="card-body white-text rgba-black-light text-center">
                <div class="row d-flex justify-content-center">
                    <div class="col-md-6">
                        <p class="h5 mb-2">
                            Servicios WEB <b>ITO</b>
                        </p>
                        <p class="mb-0">
                            Arquitectura de Software para la Web
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </header>