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

import Service.Servicios;
import datos.DatosVideojuego;
import model.Categoria;
import model.Videojuego;

/**
 * Servlet implementation class UpdateServlet
 */

public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Servicios se= new Servicios();
	private DatosVideojuego dv=new DatosVideojuego();
	private List<Videojuego> videojuegos=new ArrayList<>();
	private Videojuego v;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
				RequestDispatcher view;

				String id=request.getParameter("id");
				String nombre=request.getParameter("nombre");
				String precio= request.getParameter("precio");
				Categoria categoria=Categoria.valueOf(request.getParameter("categoria"));
				String mes= request.getParameter("fecha_mes");
				String anno=request.getParameter("fecha_ano");
				String idplataforma=request.getParameter("plataforma");
				int idplataform=0;
				if(idplataforma.toUpperCase().equals("PS4")){
					idplataform=1;
				}else if(idplataforma.toUpperCase().equals("XBOX ONE")){
					idplataform=2;
				}else if(idplataforma.toUpperCase().equals("PC")){
					idplataform=3;
				}else if(idplataforma.toUpperCase().equals("SWITCH")){
					idplataform=4;
				}
				String stock=request.getParameter("stock");
		
				
				v=new Videojuego(Integer.parseInt(id),nombre,Double.parseDouble(precio),categoria,mes+" "+anno,idplataform,Integer.parseInt(stock));
				se.updateVideoGame(dv, v);
				videojuegos=dv.selectVideojuego();
				request.setAttribute("videojuegos", videojuegos);
			
				view=request.getRequestDispatcher("admin-page.jsp");
				
				view.forward(request, response);
				return;

			
	}

	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
