package datos;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import model.Usuario;



public class DatosUsuario {
	
	Connection con = null;
	Statement st = null;
	ResultSet rs= null;
	String driverClassName= "com.mysql.jdbc.Driver"; 
	public static final String driverUrl = "jdbc:mysql://localhost/videojuegos";
	public static final String user = "root";
	public static final String password= "1111";

	public DatosUsuario() {
	}

	public Connection startDataBase(){
		try {
			Class.forName(driverClassName);
			con= DriverManager.getConnection(driverUrl,  user, password);
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return con;
		
	}

	public void closeDataBase() {
		try {
			if(rs!=null){
				rs.close();
			}
			if(st!=null){
				st.close();
			}
			if(con!=null){
				con.close();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public ArrayList<Usuario> selectUsuario(){
		Usuario u;
		ArrayList<Usuario> usuarios= new ArrayList<>();
		try {
			st= (Statement) startDataBase().createStatement();
			String query= "select * from usuario";
			rs= st.executeQuery(query);
			
			while(rs.next()){
				u= new Usuario();
				u.setIdUsuario(Integer.parseInt(rs.getString(1)));
				u.setNombre(rs.getString(2));
				u.setApellidos(rs.getString(3));
				u.setDireccion(rs.getString(4));
				u.setEmail(rs.getString(5));
				u.setPass(rs.getString(6));
				usuarios.add(u);
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		}finally{		
			closeDataBase();
		}
		return usuarios;
	}
	
	

	public int selectUsuarioId(String email,String password){
		int iduser = 0;
		ArrayList<Usuario> usuarios= new ArrayList<>();
		try {
			st= (Statement) startDataBase().createStatement();
			String query= "select idUsuario from usuario where email='"+email+"' and password='"+password+"'";
			rs= st.executeQuery(query);
			if(rs!=null){
				while(rs.next()){
					iduser=Integer.parseInt(rs.getString(1));
				}
			}else{
				iduser=0;
			}
			
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}finally{		
			closeDataBase();
		}
		return iduser;
	}
	
	
	public void updateUsuario(Usuario u){
		try {
			st= (Statement) startDataBase().createStatement();
			String nombre = u.getNombre();
			String apellido = u.getApellidos();
			String direccion = u.getDireccion();
			String email = u.getEmail();
			String password = u.getPass();
			
			
			String query= "UPDATE usuario SET nombre='"+nombre+"',apellidos='"+apellido+"',direccion='"+direccion+
					"',email='"+email+"',password='"+password+"' where idUsuario="+u.getIdUsuario();
			int num= st.executeUpdate(query);
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{		
				closeDataBase();
		}
	}
	
	public void insertUsuario(Usuario u){
		String prepearedQuery="Insert into usuario (nombre,apellidos,direccion,email,password) VALUES(?,?,?,?,?)" ;
		PreparedStatement ps;
		try {
			Class.forName(driverClassName);
			con= DriverManager.getConnection(driverUrl, user, password);
			ps=con.prepareStatement(prepearedQuery);
			
			ps.setString(1,u.getNombre());
			ps.setString(2,u.getApellidos());
			ps.setString(3,u.getDireccion());
			ps.setString(4,u.getEmail());
			ps.setString(5,u.getPass());
			ps.execute();
			
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();	
		}
	}
	
	public void deleteUsuario(Usuario u){
		int id = u.getIdUsuario();
		String preparedQuery="DELETE FROM usuario WHERE idUsuario="+id+"";
		PreparedStatement ps;
		try {
			Class.forName(driverClassName);
			con=DriverManager.getConnection(driverUrl,user,password);
			ps=con.prepareStatement(preparedQuery);
			ps.execute();
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
	}
}
