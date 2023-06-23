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
	int cod = Integer.parseInt (request.getParameter("cod"));
	Producto cp = new Producto();
	boolean f = cp.EliminarProducto(cod);
	if(f == true){
		response.sendRedirect("productoAdmin.jsp");
	}
	%>

</body>
</html>