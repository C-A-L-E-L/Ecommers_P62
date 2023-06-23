package com.productos.seguridad;

import java.sql.ResultSet;

import com.productos.datos.*;

public class Usuario {
	
	public String Login;
	public String Clave;
	public int Perfil;
	public String Nombre;
	
	public String getLogin() {
		return Login;
	}
	
	public void setLogin(String login) {
		Login=login;
	}
	
	public String getClave() {
		return Clave;
	}
	
	public void setClave(String clave) {
		Clave=clave;
	}
	
	public int getPerfil(){
		return Perfil;
	}
	
	public void setPerfil(int perfil) {
		Perfil=perfil;
	}
	
	public String getNombre() {
		return Nombre;
	}
	
	public void setNombre(String nombre) {
		Nombre=nombre;
	}
	
	public Usuario() {
		// TODO Auto-generated constructor stub
	}

	public boolean verificarUsuario(String nlogin, String nclave)
	{
		boolean respuesta=false;
		String sentencia= "Select * from tb_usuario where login_us='"+nlogin+
				"' and clave_us='"+nclave+"';";
		//System.out.print(sentencia);
		try
		{
			ResultSet rs;
			Conexion clsCon=new Conexion();
			rs=clsCon.Consulta(sentencia);
			if(rs.next())
			{
				respuesta=true;
				this.setLogin(nlogin);
				this.setClave(nclave);
				
				this.setPerfil(rs.getInt(6));
				
				this.setNombre(rs.getString(3));
			}
			else
			{
				respuesta=false;
				rs.close();
			}
		}
		catch(Exception ex)
		{
			System.out.println( ex.getMessage());
		}
		return respuesta;
	}
}
