<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" session="true"
	import="com.productos.seguridad.*"%>

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
		<title>DL-C Menu</title>
		<link rel="icon" type="image/x-icon" href="img\logo.ico">
	</head>
	
	<body>
		<%
			String usuario;
			HttpSession sesion = request.getSession();
			if (sesion.getAttribute("usuario") == null){ //Se verifica si existe la variable
				%>
				<jsp:forward page="login.jsp">
				<jsp:param name="error" value="Debe registrarse en el sistema."/>
				</jsp:forward>
				<%
			}else {
				usuario=(String)sesion.getAttribute("usuario"); //Se devuelve los valores de atributos
				int perfil=(Integer)sesion.getAttribute("perfil");
				%>
				<header>
			<div class="danLos">
				<img src="img\danLos.png" alt="logoEComers">
			</div>
			<h1>DL-C Priv</h1> <br>
			<div class="danLos">
				<img src="img\danLos.png" alt="logoEComers">
			</div>
		</header>
		
		<hr class="white-line">
		<br>
		
				<h4>Bienvenido <%out.println(usuario);%></h4>
				<%
				Pagina pag=new Pagina();
				String menu=pag.mostrarMenu(perfil);
				out.print(menu);
				%>
			<% } %>
	</body>
</html>