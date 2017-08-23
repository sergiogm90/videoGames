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

import Service.Servicios;
import datos.DatosUsuario;
import datos.DatosVideojuego;
import model.Usuario;
import model.Videojuego;

/**
 * Servlet implementation class LoginServlet
 */

public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Servicios se=new Servicios();
	private List<Videojuego> videojuegos=new ArrayList<>();
	private ArrayList<Videojuego> videojuegos2=new ArrayList<>();

    /**
     * Default constructor. 
     */
    public LoginServlet() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
			RequestDispatcher view;
			
			HttpSession session;
			
			
			int idUsuario=0;
			
			String email=request.getParameter("email");
			String password= request.getParameter("password");
			idUsuario = se.getDatosUsuario( email, password);
			
			if(idUsuario==1){
				Usuario user =se.createUser(idUsuario, email, password);
				session= request.getSession();
				session.setAttribute("user", user);
				
				videojuegos=se.getAllVideoGames();
				request.setAttribute("videojuegos", videojuegos);
				view=request.getRequestDispatcher("admin-page.jsp");
				view.forward(request, response);
				return;
			}
			if(idUsuario>1){
				Usuario user =se.createUser(idUsuario, email, password);
				session= request.getSession();
				session.setAttribute("user", user);
				view=request.getRequestDispatcher("index.html");
				view.forward(request, response);
				return;
			}else{
				view=request.getRequestDispatcher("login.html");
				view.forward(request, response);
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
