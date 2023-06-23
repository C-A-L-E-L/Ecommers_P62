<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> --%>
    
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.productos.categoria.*" import="com.productos.negocio.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Verificacion de Ingreso Producto</title>
</head>
<body>
	<h1>Producto ingresado </h1>
	<%
		int cod= Integer.parseInt(request.getParameter("codPro"));
		int cate=0;
		String newPrecioParam = request.getParameter("precio");
		double precioNew = Double.parseDouble(newPrecioParam);
		
		String newNombre = request.getParameter("newPro");
		
		String cantidad = request.getParameter("newCant");
		int cant = Integer.parseInt(cantidad);
		
		Producto pro = new Producto();
		
		String cat = request.getParameter("selecCategoria");
		
		  if(cat.equals("1")){
			  cate=1;
		  }else if(cat.equals("2")){
			  cate=2;
		  }else if(cat.equals("3")){
			  cate=3;
		  }else if(cat.equals("4")){
			  cate=4;
		  }else if(cat.equals("5")){
			  cate=5;
		  }else if(cat.equals("6")){
			  cate=6;
		  }else if(cat.equals("7")){
			  cate=7;
		  }
		
		pro.ingresarProducto(111, 1, "qqqq", 2.2, 1000);
		%>	
</body>
</html>