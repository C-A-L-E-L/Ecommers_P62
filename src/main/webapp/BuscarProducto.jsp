<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> --%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.productos.categoria.*"
	import="com.productos.negocio.*"%>
<!DOCTYPE html>

<head>
	<!-- Estilos para NAV -->
	<meta charset="UTF-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<script src="https://kit.fontawesome.com/bc48b26896.js"
		crossorigin="anonymous"></script>
	<!----------------------------------------------------------->
	<link href="css/stiles.css" rel="stylesheet" type="text/css">
	<title>DL-C Modificar Admin</title>
	<link rel="icon" type="image/x-icon" href="img\logo.ico">
</head>
<body>
	<header>
		<div class="danLos">
			<img src="img\danLos.png" alt="logoEComers">
		</div>
		<h1>DL-C Admin</h1>
		<br>
		<div class="danLos">
			<img src="img\danLos.png" alt="logoEComers">
		</div>
	</header>
	<hr class="white-line">
	<br>

	<%
	int cod = Integer.parseInt(request.getParameter("cod"));
	Producto mp = new Producto();
	mp.ConsultarEditarProductos(cod);
	%>
	<form action="EditarProducto.jsp" method="post" style="color: black; tab-size: 4; white-space: pre;">
		<table>
			<tr>
				<td><label for="codigo">CódigoS:</label></td>
				<td><input class="info" type="text" name="codigo" value="<%=cod%>"/></td>
				
				<td><label for="categoria"> Categoría:</label></td>
				<td><output><%=mp.getId_cat()%></output></td>
				
				<td><label for="name">  Descripción:</label></td>
				<td><input class="info" type="text" name="descripcion"
					value="<%=mp.getDescripcion_pr()%>" /></td>
					
				<td><label for="name">  Precio:</label></td>
				<td><input class="info" type="text" name="precio"
					value="<%=mp.getPrecio_pr()%>" /></td>
					
				<td><label for="name">  Cantidad:</label></td>
				<td><input class="info" type="text" name="cantidad"
					value="<%=mp.getCantidad_pr()%>" /></td>
			</tr>
		</table>
		<button class="btn" type="submit" style="width: 150px;"> Modificar </button> <button class="btn" type="reset" style="width: 150px;">Reinciar </button>
	</form>
</body>
</html>
