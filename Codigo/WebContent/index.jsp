<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Tienda online videojuegos">
    <meta name="author" content="Proyecto Grupo 3">
    <title>Hobbit Gam3s</title>
    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="css/shop-homepage.css" rel="stylesheet">
    <link rel="stylesheet" href="css/view.css">
    <link rel="stylesheet" href="css/style.css">
    <!-- Custom Fonts -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <link rel="icon" typ3="img/jpg" href="img/icono.png">

    <!--Fuentes-->
    <link href="https://fonts.googleapis.com/css?family=Josefin+Sans|Patrick+Hand+SC" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Audiowide|Frijole|Shadows+Into+Light|Walter+Turncoat" rel="stylesheet">
</head>

<body>

    <!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container colorNav">
            <!-- Brand and toggle get grouped for better mobile display -->

            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="CategoriaServlet">Hobbit Gam3s</a>
                <img class="logo hidden-xs" src="img/logo.png" alt="">
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->


            <!-- /.navbar-collapse -->
            <div class="collapse navbar-collapse menuright" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">

                    <li>
                        <a href="login.html">Login
                          <i class="fa fa-sign-in fa-2x" aria-hidden="true"></i>
                        </a>
                    </li>
                    <li>
                        <a href="profile.html">Mi Cuenta
                          <i class="fa fa-user-o fa-2x" aria-hidden="true"></i>
                        </a>
                    </li>
                    <li>
                      <a href="cart.html">
                        Carrito
                          <i class="fa fa-shopping-cart fa-2x"></i>
                      </a>
                    </li>
                </ul>
            </div>
        </div>
        <!-- /.container -->
    </nav>
    <!-- Page Content -->
    <div class="container">
        <div class="row">
            <div class="col-md-3 col-sm-12 col-xs-12">
                <p class="lead">Hobbit Gam3s</p>
                <div class="list-group">
                    <a href="#" alt="" title="" class="list-group-item">B&uacute;squeda</a>
                    <form method="post" action="BusquedaServlet" id="formulario">
                      <label for="busqueda">Buscar</label>
                      <input title="Busqueda" alt="Campo busqueda videojuego"name="busqueda" id="busqueda" class="buscar col-md-10 col-xs-10" type="text"/>
                        <button type="button" class="search-submit col-md-8 col-xs-10 botonBusca" alt="Busqueda" title="Buscar videojuego" value="Buscar">Buscar</button>
            						<p class="avanzada">
                          <a href="#" >Avanzada</a></br>
            							<a href="contact.html" >Contacto</a>
            						</p>
                    </form>
                </div>
                <div class="list-group">
                    <a href="CategoriaServlet?categoria=accion" alt="" title="Accion" class="list-group-item">Accion</a>
                    <a href="CategoriaServlet?categoria=arcade"alt="" title="Arcade" class="list-group-item">Arcade</a>
                    <a href="CategoriaServlet?categoria=aventura"alt="" title="Aventura Grafica" class="list-group-item">Aventura Grafica</a>
                    <a href="CategoriaServlet?categoria=beatemup"alt="" title="Beat'em up" class="list-group-item">Beat'em up</a>
                    <a href="CategoriaServlet?categoria=deportes"alt="" title="Deportes" class="list-group-item">Deportes</a>
                    <a href="CategoriaServlet?categoria=estrategia"alt="" title="Estrategia" class="list-group-item">Estrategia</a>
                    <a href="CategoriaServlet?categoria=lucha"  alt="" title="Lucha" class="list-group-item">Lucha</a>
                    <a href="CategoriaServlet?categoria=puzzle" alt="" title="Puzzle" class="list-group-item">Puzzle</a>
                    <a href="CategoriaServlet?categoria=retro" alt="" title="Retro" class="list-group-item">Retro</a>
                    <a href="CategoriaServlet?categoria=shootemup" alt="" title="Shoot'em up" class="list-group-item">Shoot'em up</a>
                    <a href="CategoriaServlet?categoria=survival" alt="" title="Survival" class="list-group-item">Survival</a>
                    <a href="CategoriaServlet?categoria=terror" alt="" title="Terror" class="list-group-item">Terror</a>
                </div>
            </div>

            <div class="col-md-9" "col-sm-12">
                <div class="row carousel-holder">
                    <div class="col-md-12 hidden-sm hidden-xs">
                        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                            <ol class="carousel-indicators">
                                <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                            </ol>
                            <div class="carousel-inner">
                                <div class="item active">
                                    <img class="slide-image" src="img/slide1.jpg" alt="Imagen todos juntos" title="Nuestros protagonistas">
                                </div>
                                <div class="item">
                                    <img class="slide-image" src="img/slide2.png" alt="Imagen todos los mandos" title="Mandos disponibles">
                                </div>
                                <div class="item">
                                    <img class="slide-image" src="img/slide3.jpg" alt="Imagen Gears of War 4" title="Gears of War 4">
                                </div>
                            </div>
                            <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                                <span class="glyphicon glyphicon-chevron-left"></span>
                            </a>
                            <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                                <span class="glyphicon glyphicon-chevron-right"></span>
                            </a>
                        </div>
                    </div>
                </div>

                <div class="row">
                 
                	
            <c:if test="${videojuegos != null }">
            
                <c:forEach var="videojuego" items="${videojuegos}">
                	
                	<div class="col-sm-4 col-lg-4 col-md-4">
                    <div class="thumbnail">
                       <img src="img/${videojuego.imagen}" class="tamImg" alt="${videojuego.nombre}" title="${videojuego.nombre}">
                        <div class="caption">
                            <h4 class="pull-right">${videojuego.precio}</h4>
                            <h4><a href="ViewServlet?identificador=${videojuego.id}" name="identificador">${videojuego.nombre}</a>
                            </h4>
                            <p>
                              ${videojuego.descripcion}</a></p>
                        </div>
                        <div class="ratings">
                            <p class="pull-right">15 opiniones</p>
                            <p>
                                <span class="glyphicon glyphicon-star"></span>
                                <span class="glyphicon glyphicon-star"></span>
                                <span class="glyphicon glyphicon-star"></span>
                                <span class="glyphicon glyphicon-star"></span>
                                <span class="glyphicon glyphicon-star"></span>
                            </p>
                        </div>
                    </div>
                </div>
                </c:forEach>
               </c:if>
                </div>
            </div>
        </div>
    </div>
    <!-- /.container -->
    <div class="container">
        <hr>
        <!-- Footer -->
        <footer>
            <div class="row foot">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                  <p class="footlet">
          					<a href="index.html">Home</a>
          					<span>|</span>
          					<a href="#">Soporte</a>
          					<span>|</span>
          					<a href="profile.html">Mi Cuenta</a>
          					<span>|</span>
          					<a href="contact.html">Contacto</a>
                    <a href="#"><i class="fa fa-twitter-square fa-2x" aria-hidden="true"></i></a>
                    <a href="#"><i class="fa fa-facebook-square fa-2x" aria-hidden="true"></i></a>
                    <a href="#"><i class="fa fa-google-plus-square fa-2x" aria-hidden="true"></i></a>
                    <a href="#"><i class="fa fa-tumblr-square fa-2x" aria-hidden="true"></i></a>
            					&copy; 2017 Hobbit Gam3s
          				</p>
                </div>
            </div>
        </footer>

    </div>
    <!-- /.container -->

    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

</body>

</html>
