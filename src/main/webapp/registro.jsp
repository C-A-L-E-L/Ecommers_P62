<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<!DOCTYPE html>

	<html>

<head>
	<!-- Estilos para NAV -->
	<meta charset="UTF-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<script src="https://kit.fontawesome.com/bc48b26896.js"
		crossorigin="anonymous"></script>
	<!----------------------------------------------------------->
	<link href="css/stiles.css" rel="stylesheet" type="text/css">
	<title>DL-C Registrarse</title>
	<link rel="icon" type="image/x-icon" href="img\logo.ico">
</head>

<body>
	<header>
		<div class="danLos">
			<img src="img\danLos.png" alt="logoEComers">
		</div>
		<h1>DanLos Cube</h1>
		<br>
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
			<li><a href="autor.jsp"> Autor</a>
		</ul>
	</nav>

	<div class="wrapper">
		<h2>Registro</h2>
		<form action="#" method="post" id="form">
			<div>
				<img id="img" src="img/perfil.png" height="100">
			</div>
			<input type="file" id="input" class="info" placeholder="Foto de Perfil">			
			
			<script>	/* Verificar img */
				let img = document.getElementById("img");
				let input = document.getElementById("input");
	
				input.onchange = (e) => {
				  if (input.files[0]) img.src = URL.createObjectURL(input.files[0]);
				};
			</script>
		
			<input class="info" placeholder="Usuario" type="text" name="usuario" id="user" required/> 
			<input class="info" placeholder="Nombre y Apellido" type="text" name="nombreApellido" id="name" required/> 
			<input class="info" placeholder="Fecha de Nacimiento" type="date" name="fecha" id="date" required/>
			<!-- VERIFICAR SOLO NUM EN TIEMPO REAL -->
			<input class="info" placeholder="Cedula" type="text" oninput="this.value=this.value.replace(/[^0-9]/g,'');" maxlength="10" name="cedula" id="ci" required/> 
			<input class="info" placeholder="Contraseña" type="password" name="contra" id="psw" required /> 
			<input class="info" placeholder="Verificar Contraseña" type="password" name="contra2" id="psw2" required/>

			<div class="radio-buttons">
				<input class="info" type="radio" name="rdResidencia" value="Sur"
					style="display: inline-block;" />Sur <input class="radio"
					type="radio" name="rdResidencia" value="Centro"
					style="display: inline-block;" />Centro <input class="radio"
					type="radio" name="rdResidencia" value="Norte"
					style="display: inline-block;" />Norte
			</div>

			<!-- Color:<input class="info" placeholder="Color Favorito" type="color"
				name="color" id="color" name="colorFavorito" /> -->
			

			<!--HV:<input class="info" type="file"
				placeholder="Hoja de vida" name="cv" id="cv"
				accept="application/pdf" max-size="5000000" required> -->

			<button class="btn" type="submit">Registrarse</button>
			<button class="btn" type="reset">Volver a Empezar</button>

			<p class="warnings" id="warnings"></p>
			<p class="notWarnings" id="notWarnings"></p>
		</form>

		<div class="terms">
			<!-- Terminos -->
			<input type="checkbox" id="checkbox" required /> <label for="checbox">
				Acepto todos los <a href="#">Terminos y Condiciones </a>
			</label>
		</div>

		<div class="member">
			Ya estas Registrado? <a href="login.jsp">Iniciar Sesion</a>
		</div>
		<br>
	</div>

	<script src="js\validacion.js"></script>

	<footer>
		<p style="text-align: center;">Derechos de autor &copy; 2023
			DanLos Cube</p>
		<div class="container">
			<ul class="ul__footer">
				<li><a href="https://wa.me/593992762138"><i
						class="fab fa-whatsapp" aria-hidden="true"></i></a></li>
				<li><a href="https://www.instagram.com/_c.a.l.e.l_/"><i
						class="fab fa-instagram" aria-hidden="true"></i></a></li>
				<li><a
					href="https://www.google.com/maps/d/edit?mid=1Bp5Xm-jr4VvqTBSp2EQziwbu28zFtwk&usp=sharing"><i
						class="fas fa-map-marker-alt" aria-hidden="true"></i></a></li>
			</ul>
		</div>
	</footer>
</body>
</html>
	
<!-- PWS: wMH432595@ -->