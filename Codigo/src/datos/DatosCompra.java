package datos;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import model.Categoria;
import model.Compra;
import model.Videojuego;

public class DatosCompra {
	
	Connection con = null;
	Statement st = null;
	ResultSet rs= null;
	String driverClassName= "com.mysql.jdbc.Driver"; 
	public static final String driverUrl = "jdbc:mysql://localhost/videojuegos";
	public static final String user= "root";
	public static final String password= "1111";
	
	
	public DatosCompra() {
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
	
public ArrayList<Compra> selectCompra(){
		
		Compra c;
		ArrayList<Compra> compras= new ArrayList<>();
		try {
			st= (Statement) startDataBase().createStatement();
			String query= "select * from compra";
			rs= st.executeQuery(query);
			
			while(rs.next()){
				c= new Compra();
				c.setIdCompra(rs.getInt(1));
				c.setFecha(rs.getDate(2));
				c.setIdDetalle(rs.getInt(3));
				c.setIdUsuario(rs.getInt(4));
		
				compras.add(c);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			
				closeDataBase();
			
		}
		
		
		
		
		return compras;
	}

	

	
	public void updateCompra(Compra c){
		try {
			
			st= (Statement) startDataBase().createStatement();
		
			Date año = (Date) c.getFecha();
			int iddetalle = c.getIdDetalle();
			int idusuario = c.getIdUsuario();
		
			String query= "UPDATE videojuego SET fecha="+año+",idusuario="+idusuario+" where idcompra="+c.getIdCompra();
			int num= st.executeUpdate(query);
		
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
		
			closeDataBase();
		
	}
	
}
	
	public void insertCompra(Compra c){
		

		String prepearedQuery="Insert into compra(fecha,idusuario) values (?,?)";
		PreparedStatement ps;
		try {
			Class.forName(driverClassName);
			con= DriverManager.getConnection(driverUrl,  user, password);
			ps=con.prepareStatement(prepearedQuery);
			
			ps.setDate(1,(Date) c.getFecha());
			//ps.setInt(2, c.getIdCompra());
			ps.setInt(2, c.getIdUsuario());
			
			ps.execute();
			
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

}
