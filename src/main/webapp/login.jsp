<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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
		<title>DL-C Iniciar Sesion</title>
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
				
		<nav class="nav__container">
			<ul class="ul__nav">
				<li><a href="index.jsp"> Inicio</a>
				<!-- <li><a href="registro.jsp"> Registrarse</a> -->
				<li><a href="productos.jsp"> Productos</a>
				<li><a href="categorias.jsp"> Categorias</a>
				<li><a href="autor.jsp"> Autor</a>
			</ul>
		</nav>
				
		<div class="wrapper">
			<h2>Iniciar Sesion</h2>
			<form action="verificarLogin.jsp" method="post">
				<input class="info" placeholder="Usuario" name="usuario" id="usuario" type="text"  required>
				<input class="info" placeholder="Contraseña" name="clave" id="clave" type="password" required>
				<div class="recover">
					<a href="#">Olvide mi Contraseña</a>
				</div>

				<button class="btn" type="submit">Ingresar</button>
			</form>

			<div class="member">
				No estas Registrado?
				<a href="registro.jsp">Registrse Ahora</a>
			</div>
			<br>
		</div>
		
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