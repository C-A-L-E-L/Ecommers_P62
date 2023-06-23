<!--%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%-->
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
		<title>DL-C Productos</title>
		<link rel="icon" type="image/x-icon" href="img\logo.ico">
	</head>
	
	<body>
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
				<li><a href="categorias.jsp"> Categorias</a>
				<li><a href="autor.jsp"> Autor</a>
			</ul>
		</nav>
		
		<br>
		<h4>Productos</h4>
		<br><br><br>
				
		<div class="containeR">
			<% Producto pro = new Producto();
			   String tabla= pro.consultarTodo();
			   out.print(tabla); %>
		</div>
		
		<br><br>
		
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