package control;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sun.xml.internal.bind.v2.runtime.unmarshaller.InterningXmlVisitor;

import Service.Servicios;
import datos.DatosUsuario;
import datos.DatosVideojuego;
import model.Categoria;
import model.Usuario;
import model.Videojuego;

/**
 * Servlet implementation class LoginServlet
 */

public class ViewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public ViewServlet() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session;
		RequestDispatcher view;
		List<Videojuego> arrayVideojuego = new ArrayList <>();
		Servicios se= new Servicios();
		Videojuego videojuego;
		String id=request.getParameter("identificador");
		
		session= request.getSession();
		videojuego =se.getVideoJuegoPorId(id);
		request.setAttribute("v", videojuego);
		
		arrayVideojuego= se.getVideojuegosCarrusel(videojuego);
		System.out.println(arrayVideojuego.size());
		
		request.setAttribute("mostrarVideojuegos", arrayVideojuego);
		//request.setAttribute("videojuego", videojuego);
		view=request.getRequestDispatcher("view.jsp");
		
		view.forward(request, response);



	}

	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
