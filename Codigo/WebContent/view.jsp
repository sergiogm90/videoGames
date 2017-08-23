<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Tienda online videojuegos">
    <meta name="author" content="Proyecto Grupo 3">
    <title>Hobbit Gam3s-Vista</title>
    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="css/shop-homepage.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <!-- Custom Fonts -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <link rel="icon" typ3="img/jpg" href="img/icono.png">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="css/owl.carousel.css">
    <link rel="stylesheet" href="css/view.css">
    <link rel="stylesheet" href="css/responsive.css">
    <!--Fuentes-->
    <link href="https://fonts.googleapis.com/css?family=Josefin+Sans|Patrick+Hand+SC" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Audiowide|Frijole|Shadows+Into+Light|Walter+Turncoat" rel="stylesheet">
</head>

<body>

    <!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
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
            <div class="col-md-3 col-xs-12 col-sm-12">
                <p class="lead">Hobbit Gam3s</p>
                <div class="list-group">
                    <a href="#" alt="" title="" class="list-group-item">B&uacute;squeda</a>
                    <form method="post" action="BusquedaServlet" id="formulario">
                      <label for="busqueda">Buscar</label>
                      <input title="Busqueda" alt="Campo busqueda videojuego"name="busqueda" id="busqueda" class="buscar col-md-10 col-xs-10" type="text"/>
                        <button type="button" class="search-submit col-md-8 col-xs-10 botonBusca" alt="Busqueda" title="Buscar videojuego" value="Buscar">Buscar</button>
            						<p class="avanzada">
                          <a href="#" >Avanzada</a></br>
            							<a href="contact.html" >Contactar</a>
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

            <div class="col-md-8 col-xs-12">
                <div class="product-content-right">
                    <div class="product-breadcroumb">
                        <a href="index.html">Home </a>
                        <c:if test = "${v.idPlataforma == 1}">	
                                     <a href="">PS4 </a>
                                </c:if>
                                <c:if test = "${v.idPlataforma == 2}">	
                                    <a href="">XBOX ONE </a>
                                </c:if>     
                                <c:if test = "${v.idPlataforma == 3}">	
                                    <a href="">PC </a>
                                </c:if>
                                <c:if test = "${v.idPlataforma == 4}">	
                                    <a href="">SWITCH </a>
                                </c:if>
                        <a href="">${v.nombre}</a>
                    </div>

                    <div class="row">
                        <div class="col-sm-6 col-xs-12">
                            <div class="product-images">
                                <div class="product-main-img">
                                    <img src="img/${v.imagen}" alt="">
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6 col-xs-12">
                      
                            <div class="product-inner">
                            	
                            	<h2 class="product-name">${v.nombre}</h2>
                                <div class="product-inner-price">
                                    <ins>${v.precio}&euro;</ins> 
                                </div>
                                <form action="" class="cart">
                                    <div class="quantity">
                                        <input type="number" size="4" class="input-text qty text" title="Qty" value="1" name="quantity" min="1" step="1">
                                    </div>
                                    <button class="add_to_cart_button" type="submit">Añadir a carrito</button>
                                </form>
                                <div class="product-inner-category">
                                <c:if test = "${v.idPlataforma == 1}">	
                                    <p id="plat">Plataforma: <div class="tags"> ps4</div> Categoria: <a href="#" class="tags">${v.categoria}</a></p>
                                </c:if>
                                <c:if test = "${v.idPlataforma == 2}">	
                                     <p id="plat">Plataforma: <div class="tags"> xbox one</div> Categoria: <a href="#" class="tags">${v.categoria}</a></p>
                                </c:if>     
                                <c:if test = "${v.idPlataforma == 3}">	
 									<p id="plat">Plataforma: <div class="tags"> pc</div> Categoria: <a href="#" class="tags">${v.categoria}</a></p>                                </c:if>
                                <c:if test = "${v.idPlataforma == 4}">	
 									<p id="plat">Plataforma: <div class="tags"> switch</div> Categoria: <a href="#" class="tags">${v.categoria}</a></p>                                </c:if>
                                </div>
                                <div role="tabpanel">
                                    <ul class="product-tab" role="tablist">
                                        <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">Descripci&oacute;n</a></li>
                                        <li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">Opiniones</a></li>
                                    </ul>
                                    <div class="tab-content">
                                        <div role="tabpanel" class="tab-pane fade in active" id="home">
                                            <p>${v.descripcion}</p>
                                        </div>
                                        <div role="tabpanel" class="tab-pane fade" id="profile">
                                            <h2>Opiniones</h2>
                                            <div class="submit-review">
                                                <p><label for="name">Nombre</label> <input name="name" type="text"></p>
                                                <p><label for="email">Email</label> <input name="email" type="email"></p>
                                                <div class="rating-chooser">
                                                    <p>Tu valoraci&oacute;n</p>
                                                    <div class="rating-wrap-post">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                    </div>
                                                </div>
                                                <p><label for="review">Tu opini&oacute;n</label> <textarea name="review" id="" cols="30" rows="10"></textarea></p>
                                                <p><input type="submit" value="Submit"></p>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                    <div class="related-products-wrapper">
                        <h2 class="related-products-title">Productos Relacionados</h2>
                        	<div class="related-products-carousel">
                     			
                     			 <c:forEach var="video" items="${mostrarVideojuegos}">
                               			<div class="single-product">
                                		<div class="product-f-image">
                                    		<img class="tamImg"src="img/${video.imagen}" alt="Imagen del videojuego ${video.nombre }" title="${video.nombre }">
                                    	<div class="product-hover">
                                        	<a href="" class="add-to-cart-link"><i class="fa fa-shopping-cart"></i>A&ntilde;adir</a>
                                        	<a href="ViewServlet?identificador=${video.id}" class="view-details-link"><i class="fa fa-link"></i>Ver detalles</a>
                                    	</div>
                                		</div>

                                		<h2><a href="">${video.nombre}</a></h2>

                                		<div class="product-carousel-price">
                                    		<ins>${video.precio}&euro;</ins> <del>42.90&euro;</del>
                                		</div>
                            		</div>
                               	</c:forEach> 
                  			</div>
               		</div>
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
                <div class="col-lg-12">
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
    <!-- Latest jQuery form server -->
    <script src="https://code.jquery.com/jquery.min.js"></script>
    <!-- Bootstrap JS form CDN -->
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    <!-- jQuery sticky menu -->
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/jquery.sticky.js"></script>
    <!-- jQuery easing -->
    <script src="js/jquery.easing.1.3.min.js"></script>
    <!-- Main Script -->
    <script src="js/main.js"></script>
  </body>

</html>
