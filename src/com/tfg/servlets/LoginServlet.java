package com.tfg.servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;
import org.apache.commons.codec.digest.DigestUtils;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

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
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*Enumeration <String> attr = request.getParameterNames();
		String parametro="";
		while(attr.hasMoreElements()){
			parametro=attr.nextElement();
			request.setAttribute(parametro, request.getParameter(parametro));
			System.out.println(parametro+"-"+request.getParameter(parametro));
		}*/
		System.out.println("A - Se lanza el POST en "+request.getParameter("thisPage"));
		webselector(request, response);
	}
	
	private void webselector(HttpServletRequest request, HttpServletResponse response) throws ServletException,IOException {
		
		try{
			//String nextPage = (String)request.getAttribute("nextPage");
			String nextPage =request.getParameter("nextPage");
			System.out.println("B - En el webselector me dirijo a: " +nextPage);
			ServletContext sc = getServletContext();
			RequestDispatcher rd=null;
			
			if(nextPage.equals("login.jsp")){
				
				String usuario= request.getParameter("user");
				String password=request.getParameter("password");
				//Ciframos la password ya que en la base de datos se encuantra cifrada
				String passEncriptadoConMD5=DigestUtils.md5Hex(password); 
								
				System.out.println("Usuario: " + usuario);
				System.out.println("Contraseña: " + password);
				System.out.println("A - Se lanza el POST en "+request.getParameter("thisPage"));
				
				rd= sc.getRequestDispatcher("/mostrardatos.jsp");
				rd.forward(request, response);
				
				/*Usuario userAux = new Usuario();	// Usuario auxiliar
				Usuario user = new Usuario();			// Objeto de busqueda(Usario)
				
				// Rellenamos los campos del objeto de busqueda --------------------------------------------------------------------------
				user.setUsuario(usuario);					// Nombre del usuario(creao que es con getParameter())
				user.setPassword(passEncriptadoConMD5);	// Contraseña de usuario Deberia crear un algoritmo de cifrado de la pass
				// -----------------------------------------------------------------------------------------------------------------------
				//Realizamos la busqueda por usuario en la base de datos para asegurarnos que este existe
				userAux = helper.buscarJPA(user);	// recuperamos el usuario de la bbdd
				//Si el usuario existe le dejamos continuar a la pagina de busqueda
				if(!userAux.isEmpty()) {

					// Saltamos a la pagina de inicio
					rd= sc.getRequestDispatcher("/mostrardatos.jsp");
					rd.forward(request, response);
				}
				else {
					// Saltamos a la pagina de contraseña
					rd= sc.getRequestDispatcher("/registro.jsp");
					rd.forward(request, response);
				}*/			
			}
			else if(nextPage.equals("registro.jsp")){
				
				String usuario= request.getParameter("user");
				String password=request.getParameter("pass");
				//Ciframos la password ya que en la base de datos se encuantra cifrada
				String passEncriptadoConMD5=DigestUtils.md5Hex(password);
				
				System.out.println("Usuario: " + usuario);
				System.out.println("Contraseña: " + password);
				System.out.println("A - Se lanza el POST en "+request.getParameter("thisPage"));
				
				rd= sc.getRequestDispatcher("/mostrardatos.jsp");
				rd.forward(request, response);
				
				/*Usuario user = new User();	// Objeto de insercion
				
				// Rellenamos los campos del objeto de insercion ------------------------------------------------------------------------------
				user.setUsuario(usuario);									// Nombre de usuario
				user.setPassword(passEncriptadoConMD5);					// Password encriptada
				// ----------------------------------------------------------------------------------------------------------------------------
				
				helper.insertarJPA(user);	// insertamos los datos en la bbdd
				
				// Saltamos a la pagina de mostrar datos 
				rd = sc.getRequestDispatcher("/mostrardatos.jsp");
				rd.forward(request, response);*/			
			} 
			else if(nextPage.equals("mostrardatos.jsp")){
				/*List produce = new ArrayList();		// Lista auxiliar
				Sensores sensors = new Sensores();	// Objeto de busqueda
								
				//recogemos el valor introducido en la busqueda y hacemos la busqueda en la base de datos
				// Rellenamos los campos del objeto de busqueda ------------------------------------------------------------------------------
				sensors.setUser(usuario);									// Nombre de usuario
				sensors.setAcelerometro(passEncriptadoConMD5);
				sensors.setGiroscopio();
				// ---------------------------------------------------------------------------------------------------------------------------
				
				produce = helper.buscarJPA(product); //Recuperamos los datos de la bbdd
				
				// Añadimos el resultado al request
				request.setAttribute("Produce", produce);
				request.setAttribute("NumProduct", produce.size()+""); // Numero de productos
				*/
				// Saltamos a la pagina de mostrar datos
				rd= sc.getRequestDispatcher("/mostrardatos.jsp");
				rd.forward(request, response);
			} else{
				rd.forward(request, response);
			}
		}
		catch(Exception e){
			e.printStackTrace();
			ServletContext sc = this.getServletContext();
			RequestDispatcher rd = sc.getRequestDispatcher("/error.jsp");
			rd.forward(request, response);
		}
	}
}
