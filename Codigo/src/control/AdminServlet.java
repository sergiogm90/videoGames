package control;

import java.awt.image.BufferedImage;
import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;

import javax.imageio.ImageIO;
import javax.imageio.stream.FileImageInputStream;
import javax.imageio.stream.FileImageOutputStream;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Service.Servicios;
import datos.DatosVideojuego;
import model.Categoria;
import model.Videojuego;


/**
 * Servlet implementation class AdminServlet
 */
public class AdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private List<Videojuego> videojuegos=new ArrayList<>();
	private Servicios se=new Servicios();
	private BufferedImage bufferedImage ;
	private Videojuego v;

       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException {
		 RequestDispatcher view;
		
			try {
				String nombre=request.getParameter("nombre");
				String precio= request.getParameter("precio");
				Categoria categoria=Categoria.valueOf(request.getParameter("categoria"));
				String mes= request.getParameter("fecha_mes");
				String anno=request.getParameter("fecha_ano");
				String idplataforma=request.getParameter("plataforma");
				String imagen=request.getParameter("foto");
				File f=new File(imagen);
				se.addImageToProject(f);
				String stock=request.getParameter("stock");
				String descripcion=request.getParameter("descripcion");
				
				v=new Videojuego(nombre,Double.parseDouble(precio),categoria,mes+" "+anno,Integer.parseInt(idplataforma),f.getName(),Integer.parseInt(stock),descripcion);
				se.addVideoGame(v);
				videojuegos=se.getAllVideoGames();
				request.setAttribute("videojuegos", videojuegos);
			
				view=request.getRequestDispatcher("admin-page.jsp");
				view.forward(request, response);
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}

			
		
		
	}

	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
