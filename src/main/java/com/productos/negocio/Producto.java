package com.productos.negocio;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import com.productos.datos.*;

/*import java.io.File;
import java.io.*; */

public class Producto {

	public String consultarTodo()
	{
		String sql="SELECT * FROM tb_producto ORDER BY id_pr";
		Conexion con=new Conexion();
		String tabla="<table border=5 style='background-color: white'><th>ID</th><th>Producto</th><th>Precio</th><th>Cantidad</th>";
		ResultSet rs=null;
		rs=con.Consulta(sql);
		try {
			while(rs.next())
			{
				tabla+="<tr><td>"+rs.getInt(1)+"</td>"
						+ "<td>"+rs.getString(3)+"</td>"
						+ "<td>"+rs.getDouble(4)+"</td>"
						+ "<td>"+rs.getInt(5)+"</td>"
						+ "</td></tr>";
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.print(e.getMessage());
		}
		tabla+="</table>";
		return tabla;
	}

	public String consultarCategoria(int cat)
	{
		String sql="select * from tb_producto where id_cat="+cat;
		Conexion con=new Conexion();
		String tabla="<table border=5 style='background-color: white'><th>ID</th><th>Producto</th><th>Precio</th><th>Cantidad</th>";
		ResultSet rs=null;
		rs=con.Consulta(sql);
		try {
			while(rs.next())
			{
				tabla+="<tr><td>"+rs.getInt(1)+"</td>"
						+ "<td>"+rs.getString(3)+"</td>"
						+ "<td>"+rs.getDouble(4)+"</td>"
						+ "<td>"+rs.getInt(5)+"</td>"
						+ "</td></tr>";
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.print(e.getMessage());
		}
		tabla+="</table>";
		return tabla;
	}

	/*public String buscarProductoCategoria(int cat)
	{
		String sentencia="SELECT nombre_pr, precio_pr FROM tb_producto WHERE id_cat="+cat;
		Conexion con=new Conexion();
		ResultSet rs=null;
		String resultado="<table border=3>";
		try
		{
			rs=con.Consulta(sentencia);
			while(rs.next())
			{
				resultado+="<tr><td>"+ rs.getString(1)+"</td>"
						+ "<td>"+rs.getDouble(2)+"</td></tr>";
			}
			resultado+="</table>";
		}
		catch(SQLException e)
		{
			System.out.print(e.getMessage());
		}
		System.out.print(resultado);
		return resultado;
	}*/

	public String ingresarProducto(int id, int cat,String descripcion,double precio,int cantidad) /*String directorio*/
	{
		String result="";
		Conexion con=new Conexion();
		PreparedStatement pr=null;
		String sql="INSERT INTO tb_producto"
				+"(id_pr, id_cat, descripcion_pr, precio_pr, cantidad_pr)"
				+"VALUES(?,?,?,?,?)";
		try{
			pr=con.getConexion().prepareStatement(sql);
			pr.setInt(1,id);
			pr.setInt(2,cat);
			pr.setString(3, descripcion);
			pr.setDouble(4, precio);
			pr.setInt(5, cantidad);

			if(pr.executeUpdate()==1)
			{
				result="Inserción correcta";
			}
			else
			{
				result="Error en inserción";
			}
		}
		catch(Exception ex)
		{
			result=ex.getMessage();
		}
		finally
		{
			try
			{
				pr.close();
				con.getConexion().close();
			}
			catch(Exception ex)
			{
				System.out.print(ex.getMessage());
			}
		}
		return result;
	}

	//////////////////////////////////////////////////////////////////////////////
	private int id_pr, id_cat, cantidad_pr;
	private String descripcion_pr;
	private float precio_pr;

	public int getId_pr() {
		return id_pr;
	}

	public void setId_pr(int id_pr) {
		this.id_pr = id_pr;
	}

	public int getId_cat() {
		return id_cat;
	}

	public void setId_cat(int id_cat) {
		this.id_cat = id_cat;
	}

	public int getCantidad_pr() {
		return cantidad_pr;
	}

	public void setCantidad_pr(int cantidad_pr) {
		this.cantidad_pr = cantidad_pr;
	}

	public String getDescripcion_pr() {
		return descripcion_pr;
	}

	public void setDescripcion_pr(String descripcion_pr) {
		this.descripcion_pr = descripcion_pr;
	}

	public float getPrecio_pr() {
		return precio_pr;
	}

	public void setPrecio_pr(float precio_pr) {
		this.precio_pr = precio_pr;
	}

	public String consultarTodoEdicion()
	{
		String sql="SELECT * FROM tb_producto ORDER BY id_pr";
		Conexion con=new Conexion();
		String tabla="<table border=5 style='background-color: white'><th>ID</th><th>Producto</th><th>Precio</th><th>Cantidad</th>";
		ResultSet rs=null;
		rs=con.Consulta(sql);
		try {
			while(rs.next())
			{
				tabla+="<tr><td>"+rs.getInt(1)+"</td>"
						+ "<td>"+rs.getString(3)+"</td>"
						+ "<td>"+rs.getDouble(4)+"</td>"
						+ "<td>"+rs.getInt(5)+"</td>"
						+ "</td>"
						+ "<td> <a href= BuscarProducto.jsp?cod=" + rs.getInt(1) + "><pre style=\"text-align: center\">Modificar</pre></a></td>"
						+ "<td> <a href= EliminarProducto.jsp?cod=" + rs.getInt(1) + " \"><pre style=\"text-align: center\">Eliminar</pre></a></td>"
						+ "</tr>";
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.print(e.getMessage());
		}
		tabla+="</table>";
		return tabla;
	}
	
	public void ConsultarEditarProductos(int cod) {
		Conexion con = new Conexion();
		ResultSet rs = null;
		String sql = "select id_pr, id_cat, descripcion_pr, precio_pr, cantidad_pr "
				+ "from tb_producto where id_pr='" + cod +"'";
		try {
			rs = con.Consulta(sql);
			while (rs.next()) {
				setId_pr(rs.getInt(1));
				setId_cat(rs.getInt(2));
				setDescripcion_pr(rs.getString(3));
				setPrecio_pr(rs.getFloat(4));
				setCantidad_pr(rs.getInt(5));
			}
		} catch(Exception e) { }
	}

	public boolean ModificarProducto(int cod,String des,float pre,int cant) {
		boolean agregado = false;
		Conexion con = new Conexion();
		String sql = "update tb_producto set descripcion_pr='" + des + "', precio_pr = " + pre + ", "
				+ "cantidad_pr = " + cant + " where id_pr = " + cod + "";
		try {
			con.Ejecutar(sql);
			agregado = true;
		} catch(Exception e) {
			agregado = false;
		}
		return agregado;
	}

	public boolean EliminarProducto (int cod) {
		boolean f = false;
		Conexion con = new Conexion();
		String sql = "delete from tb_producto where id_pr="+ cod;

		try {
			con.Ejecutar(sql);
			f = true;

		} catch (Exception e) {
			f = false;

		}

		return f;
	}
}
