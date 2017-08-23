package Service;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import datos.DatosUsuario;
import datos.DatosVideojuego;
import model.Usuario;
import model.Videojuego;

public class Servicios {
	
	private DatosVideojuego dv= new DatosVideojuego();
	private DatosUsuario du= new DatosUsuario();
	
	
	public Servicios() {
	
	}
	
	public int getDatosUsuario(String email, String password) {
		
		return du.selectUsuarioId(email, password);
	}
	public Usuario createUser(int idUsuario, String email, String password) {
		Usuario user=new Usuario(email,password);
		user.setIdUsuario(idUsuario);
		return user;
	}
	
	public ArrayList<Videojuego> getAllVideoGames(){
		
		return dv.selectVideojuego();	
	}
	
	public void addVideoGame(Videojuego v){
		dv.insertVideoJuego(v);
	}

	public void addImageToProject(File f)  {
		BufferedImage bufferedImage;
		
		try {
			bufferedImage=ImageIO.read(f);
			ImageIO.write(bufferedImage,"jpg", new File("C:\\Users\\admin\\Desktop\\Carpeta Ejercicios\\TiendaVideojuegos\\VideoGames\\WebContent\\img\\"+f.getName()));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void deleteVideoGame(int id) {
		dv.deleteVideojuego(id);
	}
	
	public void updateVideoGame(DatosVideojuego dv, Videojuego v) {
		dv.updateVideojuego(v);
	}
	
	public Videojuego busquedaVideoJuegos(String nombre) {
		return dv.busquedaVideojuego(nombre);
	}
	public ArrayList<Videojuego> getVideojuegosCarrusel(Videojuego v) {
		return dv.muestraVideojuegos(v);
	}
	
	public ArrayList<Videojuego> getVideojuegoPorCategoria(String categoria){
		
		return dv.selectVideojuegoCategoria(categoria);
		
	}
	public Videojuego getVideoJuegoPorId(String id) {
		
		return dv.selectVideojuegoId(Integer.parseInt(id));
	}
	public ArrayList<Videojuego> getRandomGame() {
		
		return dv.selectVideojuegoRandom();
	}


}
