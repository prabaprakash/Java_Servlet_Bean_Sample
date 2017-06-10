package Controller;

import java.io.IOException;

import javax.servlet.Servlet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.User;

public class Checking  extends HttpServlet {

	   protected void doPost(HttpServletRequest request,
	            HttpServletResponse response) throws ServletException, IOException {
	 
User oUser=(User)request.getAttribute("user");
response.getWriter().println(oUser.getUsername()+"iam in checking");
	   }

}
