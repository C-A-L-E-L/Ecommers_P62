<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> --%>
    
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.productos.categoria.*" import="com.productos.negocio.*"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
	 int cod = Integer.parseInt(request.getParameter("codigo"));
	 String des = request.getParameter("descripcion");
	 float pre = Float.parseFloat(request.getParameter("precio"));
	 int can = Integer.parseInt(request.getParameter("cantidad"));
	 Producto mp = new Producto();
	 boolean actualizado = mp.ModificarProducto(cod,des,pre,can);
	 if(actualizado == true){
		 response.sendRedirect("categorias.jsp");
	 }else {
		 out.print("Algo salio mal");
	 }
	 %>

</body>
</html>