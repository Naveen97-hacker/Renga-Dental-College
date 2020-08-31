package Newproj;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/verify")
public class verify extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		String user=request.getParameter("id");
		String pass=request.getParameter("pass");
		if((user.equals("vishaal"))&&(pass.equals("Vishaal19")))
		{
			response.sendRedirect("Display.html");
		}
		else
		{
			response.sendRedirect("admin.html");	
		}
	}

}
