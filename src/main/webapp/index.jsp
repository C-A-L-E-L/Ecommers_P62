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
		<title>DanLos Cube Inicio</title>
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
				<li><a href="login.jsp"> Ingresar</a>
				<li><a href="productos.jsp"> Productos</a>
				<li><a href="categorias.jsp"> Categorias</a>
				<li><a href="autor.jsp"> Autor</a>
			</ul>
		</nav>

		<div class="agruparEC">
			<section>
				<h3>Nuestra Labor</h3> <!-- vocal: &aacute; ñ: &ntilde;-->
				<p class="text__section">
					Nuestra tienda de cubos Rubik es m&aacute;s que una simple tienda de juguetes.
					Somos un equipo apasionado por los rompecabezas, y nuestra misi&oacute;n es llevar
					la diversi&oacute;n y mejorar agilidad mental de personas de todas las edades, mediante
					desaf&iacute;os de los cubos Rubik.
					Nos enorgullecemos de ofrecer una ampl&iacute;a selecci&oacute;n de cubos Rubik de alta
					calidad, incluyendo modelos cl&aacute;sicos, nuevos dise&ntilde;os y ediciones limitadas.
					Nos aseguramos de trabajar con los mejores fabricantes y proveedores &eacute;ticos para
					garantizar que los cubos cumplan con los est&aacute;ndares de calidad a nivel personal y
					competitivo. No busques m&aacute;s, Danlos Cube es tu destino para la mejor
					selecci&oacute;n de cubos Rubik. <br>
					<center class="invitacion">
						<b>¡Vis&iacute;tanos hoy mismo!</b>
					</center>
				</p>

				<video width="517" height="300" class="cube" autoplay loop muted controls>
					<source src="img\publicidad.ogv" type="video/ogg">
				</video>
			</section>

			<aside>
				<a href="https://www.gancube.com/es/">
					<h4><b>Informaci&oacute;n Proveedores</b></h4>
				</a>
			</aside>

			<section class="galery">
				<img src="img\cr3.png" />
				<img src="img\cr2.png" />
				<img src="img\cr1.png" />
				<img src="img\cr4.png" />
			</section>
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