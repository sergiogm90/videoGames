package datos;

import java.sql.Statement;
import java.util.ArrayList;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import model.Categoria;
import model.Videojuego;

public class DatosVideojuego {
	
	

	Connection con = null;
	Statement st = null;
	ResultSet rs= null;
	String driverClassName= "com.mysql.jdbc.Driver"; 
	public static final String driverUrl = "jdbc:mysql://localhost/videojuegos?useSSL=false";
	public static final String user= "root";
	public static final String password= "1111";
	
	
	
	public DatosVideojuego() {
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

	public Videojuego selectVideojuegoId(int id){
		Videojuego v = null;
		ArrayList<Videojuego> videojuegos= new ArrayList<>();
		try {
			st= (Statement) startDataBase().createStatement();
			String query= "select * from videojuego where idvideojuego="+id;
			rs= st.executeQuery(query);
			if(rs!=null){
				while(rs.next()){
					v= new Videojuego();
					v.setId(Integer.parseInt(rs.getString(1)));
					v.setNombre(rs.getString(2));
					v.setPrecio(Double.parseDouble(rs.getString(3)));
					v.setCategoria(Categoria.valueOf(rs.getString(4)));
					v.setLanzamiento(rs.getString(5));
					v.setIdPlataforma(Integer.parseInt(rs.getString(6)));
					v.setImagen(rs.getString(7));
					v.setStock(Integer.parseInt(rs.getString(8)));
					v.setDescripcion(rs.getString(9));
				}
			}
			
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}finally{		
			closeDataBase();
		}
		return v;
	}
	
	public ArrayList<Videojuego> selectVideojuego(){
		
		Videojuego v;
		ArrayList<Videojuego> videojuegos= new ArrayList<>();
		try {
			st= (Statement) startDataBase().createStatement();
			String query= "select * from videojuego";
			rs= st.executeQuery(query);
			
			while(rs.next()){
				v= new Videojuego();
				v.setId(Integer.parseInt(rs.getString(1)));
				v.setNombre(rs.getString(2));
				v.setPrecio(Double.parseDouble(rs.getString(3)));
				v.setCategoria(Categoria.valueOf(rs.getString(4)));
				v.setLanzamiento(rs.getString(5));
				v.setIdPlataforma(Integer.parseInt(rs.getString(6)));
				v.setImagen(rs.getString(7));
				v.setStock(Integer.parseInt(rs.getString(8)));
				v.setDescripcion(rs.getString(9));
				videojuegos.add(v);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			
				closeDataBase();
			
		}
		return videojuegos;
	}	
public ArrayList<Videojuego> selectVideojuegoRandom(){
		
		Videojuego v;
		ArrayList<Videojuego> videojuegos= new ArrayList<>();
		try {
			st= (Statement) startDataBase().createStatement();
			String query= "select * from videojuego ORDER BY RAND() LIMIT 6";
			rs= st.executeQuery(query);
			
			while(rs.next()){
				v= new Videojuego();
				v.setId(Integer.parseInt(rs.getString(1)));
				v.setNombre(rs.getString(2));
				v.setPrecio(Double.parseDouble(rs.getString(3)));
				v.setCategoria(Categoria.valueOf(rs.getString(4)));
				v.setLanzamiento(rs.getString(5));
				v.setIdPlataforma(Integer.parseInt(rs.getString(6)));
				v.setImagen(rs.getString(7));
				v.setStock(Integer.parseInt(rs.getString(8)));
				v.setDescripcion(rs.getString(9));
				videojuegos.add(v);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			
				closeDataBase();
			
		}
		return videojuegos;
	}
	
		public ArrayList<Videojuego> selectVideojuegoCategoria(String cat){
			
			Videojuego v;
			ArrayList<Videojuego> videojuegos= new ArrayList<>();
			try {
				st= (Statement) startDataBase().createStatement();
				String query= "select * from videojuego where categoria = '"+cat+"'";
				rs= st.executeQuery(query);
				
				while(rs.next()){
					v= new Videojuego();
					v.setId(Integer.parseInt(rs.getString(1)));
					v.setNombre(rs.getString(2));
					v.setPrecio(Double.parseDouble(rs.getString(3)));
					v.setCategoria(Categoria.valueOf(rs.getString(4)));
					v.setLanzamiento(rs.getString(5));
					v.setIdPlataforma(Integer.parseInt(rs.getString(6)));
					v.setImagen(rs.getString(7));
					v.setStock(Integer.parseInt(rs.getString(8)));
					v.setDescripcion(rs.getString(9));
					videojuegos.add(v);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally{
					closeDataBase();
			}

		return videojuegos;
	}
	
	public void updateVideojuego(Videojuego v){
		try {
			st= (Statement) startDataBase().createStatement();
			String nombre = v.getNombre();
			Double precio = v.getPrecio();
			String año = v.getLanzamiento();
			int idp = v.getIdPlataforma();
			String imagen = v.getImagen();
			int stock = v.getStock();
			
			String query= "UPDATE videojuego SET nombre='"+nombre+"',precio="+precio+",categoria='"+Categoria.valueOf(v.getCategoria().toString()).toString()+
					"',año='"+año+"',idplataforma="+idp+",imagen='"+imagen+"',stock="+
					stock+" where idvideojuego="+v.getId();
			int num= st.executeUpdate(query);
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			
				closeDataBase();
			
		}
		
	}
	
	public Videojuego busquedaVideojuego(String nombre){
		Videojuego v=null;
		try {
			st= (Statement) startDataBase().createStatement();
			String query= "select * from videojuego where nombre LIKE'%"+nombre+"%'";
			rs= st.executeQuery(query);
			
			while(rs.next()){
				v= new Videojuego();
				v.setId(Integer.parseInt(rs.getString(1)));
				v.setNombre(rs.getString(2));
				v.setPrecio(Double.parseDouble(rs.getString(3)));
				v.setCategoria(Categoria.valueOf(rs.getString(4)));
				v.setLanzamiento(rs.getString(5));
				v.setIdPlataforma(Integer.parseInt(rs.getString(6)));
				v.setImagen(rs.getString(7));
				v.setStock(Integer.parseInt(rs.getString(8)));
				v.setDescripcion(rs.getString(9));
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			
				closeDataBase();
			
		}
		
		
		
		
		return v;
	}
	
	public void insertVideoJuego(Videojuego v){
		String prepearedQuery="Insert into videojuego (nombre,precio,categoria,año,idplataforma,imagen,stock,descripcion) VALUES(?,?,?,?,?,?,?,?)" ;
		PreparedStatement ps;
		try {
			Class.forName(driverClassName);
			con= DriverManager.getConnection(driverUrl,  user, password);
			ps=con.prepareStatement(prepearedQuery);
			
			ps.setString(1,v.getNombre());
			ps.setDouble(2,v.getPrecio());
			ps.setString(3,Categoria.valueOf(v.getCategoria().toString()).toString());
			ps.setString(4,v.getLanzamiento());
			ps.setInt(5,v.getIdPlataforma());
			ps.setString(6, v.getImagen());
			ps.setInt(7, v.getStock());
			ps.setString(8,v.getDescripcion());
			
			ps.execute();
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

	public void deleteVideojuego(int id){
		String preparedQuery = "delete from videojuego where idvideojuego="+id+"";
		PreparedStatement ps;
		
		try {
			Class.forName(driverClassName);
			con=DriverManager.getConnection(driverUrl,user,password);
			ps=con.prepareStatement(preparedQuery);
			ps.execute();
			
		} catch (SQLException | ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	public ArrayList<Videojuego> muestraVideojuegos(Videojuego v){
		
		Videojuego vd= null;
		
		ArrayList <Videojuego> videojuegos = new ArrayList <>();
			
			try {
				st= (Statement) startDataBase().createStatement();
				String query= "select * from videojuego where categoria='"+v.getCategoria()+"'and nombre <>'"+v.getNombre()+"'";
				rs= st.executeQuery(query);
				
				while(rs.next()){
					vd= new Videojuego();
					vd.setId(Integer.parseInt(rs.getString(1)));
					vd.setNombre(rs.getString(2));
					vd.setPrecio(Double.parseDouble(rs.getString(3)));
					vd.setCategoria(Categoria.valueOf(rs.getString(4)));
					vd.setLanzamiento(rs.getString(5));
					vd.setIdPlataforma(Integer.parseInt(rs.getString(6)));
					vd.setImagen(rs.getString(7));
					vd.setStock(Integer.parseInt(rs.getString(8)));
					vd.setDescripcion(rs.getString(9));
					videojuegos.add(vd);
				}
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally{
				
					closeDataBase();
				
			}
			
			return videojuegos;
		
	}
}
