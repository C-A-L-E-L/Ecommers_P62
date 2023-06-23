<!--  %@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%-->
<%@page import="java.awt.geom.Path2D"%>
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
		<title>DanLos Categorias</title>
		<link rel="icon" type="image/x-icon" href="img\logo.ico">
	</head>
	
	<body class="cate">
		<header>
			<div class="danLos">
				<img src="img\danLos.png" alt="logoEComers">
			</div>
			<h1>DanLos Cube</h1> <br>
			<div class="danLos">
				<img src="img\danLos.png" alt="logoEComers">
			</div>
		</header>

		<hr class="white-line">
		<br>
		<nav class="nav__container">
			<ul class="ul__nav">
				<li><a href="index.jsp"> Inicio</a>
				<li><a href="login.jsp"> Ingresar</a>
				<li><a href="productos.jsp"> Productos</a>
				<li><a href="autor.jsp"> Autor</a>
			</ul>
		</nav>
		
		<h4>Categorias</h4>
		
		<div class="selecionar">
			<form action="respuesta.jsp" method="post">
				<div class="select">
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
				</div>
				
				<button class="buscarCat" type="submit" >Buscar Categoria</button>
			</form>
		</div>
		
		<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
		
		<footer>
			<p style="text-align: center;">Derechos de autor &copy; 2023 DanLos Cube</p>
			<div class="container">
				<ul class="ul__footer">
					<li><a href="https://wa.me/593992762138"><i class="fab fa-whatsapp" aria-hidden="true"></i></a></li>
					<li><a href="https://www.instagram.com/_c.a.l.e.l_/"><i class="fab fa-instagram"
								aria-hidden="true"></i></a></li>
					<li><a href="https://www.google.com/maps/d/edit?mid=1Bp5Xm-jr4VvqTBSp2EQziwbu28zFtwk&usp=sharing"><i
								class="fas fa-map-marker-alt" aria-hidden="true"></i></a></li>
				</ul>
			</div>
		</footer>	
	</body>
</html>


<!-- 
		<form action="respuesta.jsp" method="post">
			<div class="select">
				<select name="format" id="format" placeholder="Seleccionar...">
			    	<option value="" disabled selected>Seleccionar...</option>
			    	<option value="1" id="Cubicos">Cubicos</option>
					<option value="2" id="Cuboides">Cuboides</option>
					<option value="3" id="Morphix">Morphix</option>
					<option value="4" id="Minx">Minx</option>
					<option value="5" id="Skewb">Skewb</option>
					<option value="6" id="Square-1">Square-1</option>
					<option value="7" id="Curvy">Curvy</option>
			   </select>
			</div>
						
			<button class="buscarCat" type="submit" >Buscar</button>
		</form>
		
		
		
		
		
		<form action="respuesta.jsp" method="post"> 
			 <table border="1">
				<tr><td>Escoja una categoria:</td><td> <select name="selecCategoria" >
															<option value="" disabled selected></option>
													   		<option value="1" id="Cubicos">Cubicos</option>
															<option value="2" id="Cuboides">Cuboides</option>
															<option value="3" id="Morphix">Morphix</option>
															<option value="4" id="Minx">Minx</option>
															<option value="5" id="Skewb">Skewb</option>
															<option value="6" id="Square-1">Square-1</option>
															<option value="7" id="Curvy">Curvy</option>
														</select></td></tr>
				<tr><td> <button type="submit" >Buscar</button>   </td>
			</table>
		</form> -->	