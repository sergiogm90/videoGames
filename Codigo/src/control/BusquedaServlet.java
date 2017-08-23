package control;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Service.Servicios;
import datos.DatosVideojuego;
import model.Categoria;
import model.Videojuego;

/**
 * Servlet implementation class BusquedaServlet
 */
@WebServlet("/BusquedaServlet")
public class BusquedaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ArrayList <Videojuego> videojuego = new ArrayList <>();
	private Videojuego v;
	private Servicios se=new Servicios();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BusquedaServlet() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		RequestDispatcher view;
		
		String nombre=request.getParameter("busqueda");
		v=se.busquedaVideoJuegos(nombre);
		
		if(v==null){
		
		view=request.getRequestDispatcher("CategoriaServlet");
		view.forward(request, response);
		
		}else{
			videojuego=se.getVideojuegosCarrusel(v);
			request.setAttribute("v", v);
			request.setAttribute("mostrarVideojuegos", videojuego);
			
			view=request.getRequestDispatcher("view.jsp");
			view.forward(request, response);
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
