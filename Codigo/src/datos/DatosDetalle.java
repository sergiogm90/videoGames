package datos;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import model.Detalle;

public class DatosDetalle {
	
	Connection con = null;
	Statement st = null;
	ResultSet rs= null;
	String driverClassName= "com.mysql.jdbc.Driver"; 
	public static final String driverUrl = "jdbc:mysql://localhost/videojuegos";
	public static final String user = "root";
	public static final String password= "1111";
	
	public DatosDetalle() {
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

	public ArrayList<Detalle> selectDetalle(){
		Detalle d;
		ArrayList<Detalle> detalles= new ArrayList<>();
		try {
			st= (Statement) startDataBase().createStatement();
			String query= "select * from detalle";
			rs= st.executeQuery(query);
			
			while(rs.next()){
				d= new Detalle();
				d.setIdDetalle(Integer.parseInt(rs.getString(1)));
				d.setIdCompra(Integer.parseInt(rs.getString(2)));
				d.setId(Integer.parseInt(rs.getString(3)));
				detalles.add(d);
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		}finally{		
			closeDataBase();
		}
		return detalles;
	}
	
	public void insertDetalle(Detalle d){
		String prepearedQuery="Insert into detalle (iddetalle,idcompra,idvideojuego) VALUES(?,?,?)" ;
		PreparedStatement ps;
		try {
			Class.forName(driverClassName);
			con= DriverManager.getConnection(driverUrl, user, password);
			ps=con.prepareStatement(prepearedQuery);
			
			ps.setInt(1,d.getIdDetalle());
			ps.setInt(2,d.getIdCompra());
			ps.setInt(3,d.getId());
			ps.execute();
			
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();	
		}
	}
	
	public void deleteDetalle(Detalle d){
		int id = d.getIdDetalle();
		String preparedQuery="DELETE FROM detalle WHERE idDetalle="+id+"";
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
