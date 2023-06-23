<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> --%>
    
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.productos.categoria.*" import="com.productos.negocio.*"%>
<!DOCTYPE html>
<html>
	<head>
		<!-- Estilos para NAV -->
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<script src="https://kit.fontawesome.com/bc48b26896.js" crossorigin="anonymous"></script>
		<!----------------------------------------------------------->
		<link href="css/stiles.css" rel="stylesheet" type="text/css">
		<title>DanLos Cube Ingresar Producto</title>
		<link rel="icon" type="image/x-icon" href="img\logo.ico">
	</head>
	
<body>
	<header>
			<div class="danLos">
				<img src="img\danLos.png" alt="logoEComers">
			</div>
			<h1>DL-C Admin</h1> <br>
			<div class="danLos">
				<img src="img\danLos.png" alt="logoEComers">
			</div>
		</header>
	<hr class="white-line">
	<br>
		<nav class="nav__container">
			<ul class="ul__nav">
				<li><a href="productoAdmin.jsp"> Modificar Productos</a>
				<li><a href="index.jsp"> Cerrar Session</a>
			</ul>
		</nav>


	<form action="respuestaNew.jsp" method="post" id="form">
		<div class="wrapper" style="display: flex; flex-direction: column; align-items: center;">
			<input class="info" placeholder="Codigo Producto" type="text" name="codPro" id="codPro" required/>
			<br>
			<select name="selecCategoria" id="format">
			    	<option value="0" id="Seleccionar" disabled selected>Seleccionar...</option>
			    	<option value="1" id="Cubicos">Cubicos</option>
					<option value="2" id="Cuboides">Cuboides</option>
					<option value="3" id="Morphix">Morphix</option>
					<option value="4" id="Minx">Minx</option>
					<option value="5" id="Skewb">Skewb</option>
					<option value="6" id="Square-1">Square-1</option>
					<option value="7" id="Curvy">Curvy</option>
			</select>
			 <br>
			 <input class="info" placeholder="Nombre Producto" type="text" name="newPro" id="newPro" required/>
			 <br>			 
			 <input class="info" placeholder="Precio" type="number" name="precio" id="precio" step="0.01" required/>
			<!--  <input class="info" placeholder="Precio" type="text" name="newPrecio" id="newPrecio" required/> -->
			 <br>
			 <input class="info" placeholder="Cantidad" type="number" name="newCant" id="newCant" required/>
			 		 
			 <button class="btn" type="submit">Agregar</button>
			 <button class="btn" type="reset">Volver a Empezar</button>
			 <br>
			</div>
		</form>	
</body>
		
</html>


<!-- <div class="wrapper" style="display: flex; flex-direction: column; align-items: center;">
		<input class="info" placeholder="Codigo Producto" type="text" name="codPro" id="codPro" required/>
		<br>
		<select name="newCategoria" id="format">
					    	<option value="0" id="Seleccionar" disabled selected>Categoria</option>
					    	<option value="1" id="Cubicos">Cubicos</option>
							<option value="2" id="Cuboides">Cuboides</option>
							<option value="3" id="Morphix">Morphix</option>
							<option value="4" id="Minx">Minx</option>
							<option value="5" id="Skewb">Skewb</option>
							<option value="6" id="Square-1">Square-1</option>
							<option value="7" id="Curvy">Curvy</option>
					   </select>
	
		 <br>
		 <input class="info" placeholder="Nombre Producto" type="text" name="newPro" id="newPro" required/>
		 <br>
		 <input class="info" placeholder="Precio" type="text" name="newPrecio" id="newPrecio" required/>
		 <br>
		 <input class="info" placeholder="Cantidad" type="number" name="newCant" id="newCant" required/>
		 		 
		 <button class="btn" type="submit">Agregar</button>
		 <button class="btn" type="reset">Volver a Empezar</button>
		 <br>
	</div> -->



























<!-- Producto pro = new Producto();
		 
		 String newPrecioParam = request.getParameter("newPrecio");
		 double newPrecio = Double.parseDouble(newPrecioParam);
		 
		 String newCantParam = request.getParameter("newCant");
		 int newCant = Integer.parseInt(newCantParam);
		 
		 pro.ingresarProducto(801,7,request.getParameter("newPro"),newPrecio,newCant); -->