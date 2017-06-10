package Controller;

import Model.*;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginController extends HttpServlet {

	public LoginController() {
		super();
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		String username = request.getParameter("username");
		String password = request.getParameter("password");
		RequestDispatcher rd = null;

		Authenticator authenticator = new Authenticator();
		User user = new User(username, password);
		request.getSession().setAttribute("user", user);

		String result = authenticator.authenticate(username, password);
	
			rd = request.getRequestDispatcher("/" + result + ".jsp");
			rd.forward(request, response);
			
		
	}

}