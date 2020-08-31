package Newproj;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Details")
public class Details extends HttpServlet {
	Connection conn;
	Statement stmt;
	String dbstring="jdbc:sqlserver://localhost:1433;databaseName=renga;user=vishaal;password=1234567";
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=request.getParameter("name");
		String dob=request.getParameter("dob");
		String number=request.getParameter("number"); 
		String id=request.getParameter("id");
		String dept=request.getParameter("dept");	
		String passing=request.getParameter("passing");
		String mark=request.getParameter("mark");
		String adress=request.getParameter("adress");
		String gender=request.getParameter("gender");
		
		try(PrintWriter out=response.getWriter())
		{
			try {
				Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
				conn=DriverManager.getConnection(dbstring);
				stmt=conn.createStatement();
				String query="insert into Student_details values('"+name+"','"+dob+"','"+number+"','"+id+"','"+dept+"','"+passing+"','"+mark+"','"+adress+"','"+gender+"');";
				stmt.execute(query);
				System.out.println("INSERTED SUCCESSFULLY");
				
				String r="SELECT STUDENT_ID,NAME from Student_details where MAIL_ID='"+id+"'";
				ResultSet rp=stmt.executeQuery(r);
				
				while(rp.next())
				{
					String x=rp.getString("STUDENT_ID");
					String y=rp.getString("NAME");
					String qw="Y";
					String z="INSERT into Login values('"+x+"','"+y+"','"+x+"','"+qw+"');";
					stmt.execute(z);
					System.out.println(x);
					request.setAttribute("Name", y);
					request.setAttribute("Id", x);
					RequestDispatcher requestDispatcher = request.getRequestDispatcher("New.jsp");
					 
			        requestDispatcher.forward(request, response);
			       }		
			}
		catch(Exception e) 
			{
				e.printStackTrace();
			}
		}	
	}
}
