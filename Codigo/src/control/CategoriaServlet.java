package control;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Service.Servicios;
import datos.DatosUsuario;
import datos.DatosVideojuego;
import model.Videojuego;

/**
 * Servlet implementation class IndexServlet
 */

public class CategoriaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CategoriaServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		RequestDispatcher view;
		Servicios se=new Servicios();
		HttpSession session;
		String categoria = request.getParameter("categoria");
		if(categoria == null){
			request.setAttribute("videojuegos", se.getRandomGame() );
			request.getRequestDispatcher("index.jsp").forward(request, response);
			return;
		}else{
			request.setAttribute("videojuegos", se.getVideojuegoPorCategoria(categoria));
			request.getRequestDispatcher("index.jsp").forward(request, response);
				return;
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
