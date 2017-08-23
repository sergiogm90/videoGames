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
    <title>Hobbit Gam3s</title>


    <!--JS acordeon -->
    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="css/shop-homepage.css" rel="stylesheet">
    <!-- Custom Fonts -->
    <link href="css/administrator-page.css" rel="stylesheet">
    <!-- Custom CSS fro Administrator-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <link rel="icon" typ3="img/jpg" href="img/icono.png">
    
<link rel="stylesheet" type="text/css" href="sweetalert/dist/sweetalert.css">
<script src="sweetalert2/dist/sweetalert2.min.js"></script>
    <link rel="stylesheet" href="sweetalert2/dist/sweetalert2.min.css">
    <!-- Include a polyfill for ES6 Promises (optional) for IE11 and Android browser -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/core-js/2.4.1/core.js"></script>
    
    <script
			  src="https://code.jquery.com/jquery-3.2.1.js"
			  integrity="sha256-DZAnKJ/6XZ9si04Hgrsxu/8s717jcIzLy3oi35EouyE="
			  crossorigin="anonymous"></script>
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
                <a class="navbar-brand" href="#">Hobbit Gam3s</a>
                <img class="logo" src="img/logo.png" alt="">
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->


            <!-- /.navbar-collapse -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">

                    <li>
                        <a href="login.html">Desconectar
                          <i class="fa fa-sign-out fa-2x" aria-hidden="true"></i>
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
            <div class="col-md-9 col-sm-12 col-md-offset-1">
                <div id="container-main">
                    <h1>Acciones del administrador</h1>

                    <div class="accordion-container">
                        <a href="#" class="accordion-titulo">Insertar Videojuego<span class="toggle-icon"></span></a>
                        <div class="accordion-content">
                            <form action="AdminServlet" method="post">
                                <fieldset>

                                    <p>
                                        <label value="nombre">Nombre:</label><br>
                                        <input type="text" id="nombre" name="nombre" />
                                    </p>
                                    <p>
                                        <label value="precio">Precio:</label><br>
                                        <input type="text" size="20" id="precio" name="precio" />
                                    </p>
                                    <p>
                                        <label for="categoria">Categoria:</label><br>
                                        <select name="categoria">
											<option value="" selected="selected">- selecciona -</option>
											<option value="accion">Accion</option>
											<option value="arcade">arcade</option>
											<option value="aventura">aventura grafica</option>
											<option value="beatemup">beat'em up</option>
											<option value="deportes">deportes</option>
											<option value="estrategia">estrategia</option>
											<option value="lucha">lucha</option>
											<option value="puzzle">puzzle</option>
											<option value="retro">retro</option>
											<option value="shootemup">Shoot'em up</option>
											<option value="survival">survival</option>
											<option value="terror">terror</option>
										</select>
                                    </p>
                                    <p>
                                        <label for="fecha_lanzamiento">Fecha de Lanzamiento:</label><br>
                                        <select id="fecha_mes" name="fecha_mes">
                                <option value="Enero">Enero</option>
                                <option value="Febrero">Febrero</option>
                                <option value="Marzo">Marzo</option>
                                <option value="Abril">Abril</option>
                                <option value="Mayo">Mayo</option>
                                <option value="Junio">Junio</option>
                                <option value="Julio">Julio</option>
                                <option value="Agosto">Agosto</option>
                                <option value="Septiembre">Septiembre</option>
                                <option value="Octubre">Octubre</option>
                                <option value="Noviembre">Noviembre</option>
                                <option value="Diciembre">Diciembre</option>
                              </select>
                                        <input type="text" size="5" maxlength="4" id="fecha_ano" name="fecha_ano" />
                                    </p>
                                    <p>
                                        <label for="descripcion">Descripcion:</label> <br/>
                                        <textarea name="descripcion" id="descripcion" cols="40" rows="5"></textarea>
                                    </p>
                                    <p>
                                    <label for="foto">Foto:</label>
                                        <input type="file" name="foto"  />
                                    </p>
                                    <p>
                                        <label for="Plataforma">Plataforma:</label><br>
                                        <select id="so" name="plataforma">
                                <option value="" selected="selected">- selecciona -</option>
                                <option value="1">PS4</option>
                                <option value="2">XBOX ONE</option>
                                <option value="3">PC</option>
                                <option value="4">Nintendo</option>
                            </select>
                                    </p>
                                    <p>
                                        <label for="stock">Stock:</label><br>
                                        <input type="text" name="stock" size="5" maxlength="4" />
                                    </p>
                                    <p>
                                        <input type="submit" value="InsertarVideojuego" />
                                    </p>
                                </fieldset>
                                 <input type="hidden" name="opcion" value="insertar" />
                            </form>
                        </div>
                    </div>
                 
                    <div class="accordion-container">
                        <a href="#" class="accordion-titulo">Gestion VideoJuegos<span class="toggle-icon"></span></a>
                        <div class="accordion-content">
                      
                            <table>
                                <tr>
                                    <th>ID </th>
                                    <th>Nombre </th>
                                    <th>Categoria </th>
                                    <th>Lanzamiento </th>
                                    <th>Plataforma </th>
                                    <th>Precio</th>
                                    <th>Stock</th>
                                    <th>Acciones</th>
                                </tr>
                                 <c:forEach var="videojuego" items="${videojuegos}">
                               <c:set var="id" value="${videojuego.id}"/>
                               <form action="UpdateServlet" method="get">
                                 <tr>
                                 	<td>${videojuego.id}
                                 	 <input   size="15" type="text" name="id" value="${videojuego.id}" class="hide" />
                                 	</td>
                                 	  <td>
                                        <p id="nombre${videojuego.id}" class="show">${videojuego.nombre}</p>
                                        <input id="inputName${videojuego.id}"   size="15" type="text" name= "nombre" value="" class="hide" />
                                    </td>
                                     <td>
                                    <p id="categoria${videojuego.id}" class="show">${videojuego.categoria}</p>
                                    <input id="inputCat${videojuego.id}"  size="10" type="text" name="categoria" value=""class="hide" />
                                    </td>
                                 	<td>
                                    <p id="lanzamiento${videojuego.id}" class="show">${videojuego.lanzamiento}</p>
                                    <input id="inputLan${videojuego.id}"  size="10" type="text" name="lanzamiento}"value="" class="hide" />
                                    </td>
                                    
                                    <td> 
                                     <c:if test = "${videojuego.idPlataforma == 1}">
        							<p id="plataforma${videojuego.id}" class="show">PS4</p>
                                    <input id="inputPla${videojuego.id}" size="8" type="text" name="plataforma" value=" " class="hide" />
                                     </c:if>
                                     
                                    <c:if test = "${videojuego.idPlataforma == 2}">
        							<p id="plataforma${videojuego.id}" class="show">XBOX ONE</p>
                                    <input id="inputPla${videojuego.id}" size="8" type="text" name="plataforma"value="" class="hide" />
                                     </c:if>
                                     
                                    <c:if test = "${videojuego.idPlataforma == 3}">
        							<p id="plataforma${videojuego.id}" class="show">PC</p>
                                    <input id="inputPla${videojuego.id}" size="8" type="text" name="plataforma" class="hide"  value=""/>
                                    </c:if>
                                    <c:if test = "${videojuego.idPlataforma == 4}">
        							<p id="plataforma${videojuego.id}" class="show">SWITCH</p>
                                    <input id="inputPla${videojuego.id}" size="8" type="text" name="plataforma" value=""class="hide" />
                                     </c:if>
                                    </td>
                                    
                                    <td>
                                    <p id="precio${videojuego.id}" class="show">${videojuego.precio}</p>
                                    <input id="inputPr${videojuego.id}" size="5" type="text" name="precio"value="" class="hide" />
                                    </td>
                                    
              						<td>
                                    <p id="stock${videojuego.id}" class="show">${videojuego.stock}</p>
                                    <input id="inputSt${videojuego.id}" size="5" type="text" name="stock" value=""class="hide" />
                                    </td>
                                    
                                    <td>
                                  
                                       <a href="DeleteServlet?idDelete=${videojuego.id}" class="button" onclick="eliminar();"  ><span><span><span><span>Eliminar</span></span></span></span></a>
                                    	<div class="button_2">
										<input type="submit" name="update"  id="enlace${videojuego.id}" class="hide" value="guardar">
										</div>
                                       <button id="button${videojuego.id}" class="cambio"  value="${videojuego.id}">Modificar</button>
                                       
                                      
                                    </td>
                                    
                                 </tr>
                               </form>
                                 </c:forEach>
                            
                            </table>
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
                    	<button onclick="eliminar();" value="Prueba">Prueba</button>
                    	<script>
                    	function eliminar(){
                    		swal({
                    			  title: "Are you sure?",
                    			  text: "You will not be able to recover this imaginary file!",
                    			  type: "warning",
                    			  showCancelButton: true,
                    			  confirmButtonColor: "#DD6B55",
                    			  confirmButtonText: "Yes, delete it!",
                    			  closeOnConfirm: false,
                    			  html: false
                    			}, function(){
                    			  swal("Deleted!",
                    			  "Your imaginary file has been deleted.",
                    			  "success");
                    			});
                    	}

                    	</script>
                        <a href="#">Home</a>
                        <span>|</span>
                        <a href="#">Soporte</a>
                        <span>|</span>
                        <a href="#">Mi Cuenta</a>
                        <span>|</span>
                        <a href="#">Contacto</a>
                        <a href="#"><i class="fa fa-twitter-square fa-2x" aria-hidden="true"></i></a>
                        <a href="#"><i class="fa fa-facebook-square fa-2x" aria-hidden="true"></i></a>
                        <a href="#"><i class="fa fa-google-plus-square fa-2x" aria-hidden="true"></i></a>
                        <a href="#"><i class="fa fa-tumblr-square fa-2x" aria-hidden="true"></i></a> &copy; 2017 Hobbit Gam3s Design by <a href="http://chocotemplates.com" target="_blank" title="The Sweetest CSS Templates WorldWide">Chocotemplates.com</a>
                    </p>
				 </div>
            </div>
          </footer>

        </div>
        <!-- /.container -->

        <!-- jQuery -->
      
		<script src="sweetalert/dist/sweetalert.min.js"></script>
        <script src="js/jquery.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="js/bootstrap.min.js"></script>
		<script src="js/modal.js"></script>
        <script type="text/javascript" src="js/acordeon.js"></script>
        <script type="text/javascript" src="js/modificar_vj.js"></script>
        <script type="text/javascript" src="js/modal.js"></script>
        
</body>

</html>