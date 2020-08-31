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

@WebServlet("/Searching")
public class Searching extends HttpServlet {
	
	Connection conn;
	Statement stmt;
	String dbstring="jdbc:sqlserver://localhost:1433;databaseName=renga;user=vishaal;password=1234567";
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id=request.getParameter("id");
		
		
		try(PrintWriter out=response.getWriter())
		{
			try {
				Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
				conn=DriverManager.getConnection(dbstring);
				stmt=conn.createStatement();				
				String str="SELECT * from Student_details where STUDENT_ID='"+id+"'";
				ResultSet rs=stmt.executeQuery(str);
				
				while(rs.next())
				{
					String x=rs.getString("STUDENT_ID");
					String y=rs.getString("NAME");
					String c=rs.getString("DoB");
					String v=rs.getString("PHONE");
					String b=rs.getString("MAIL_ID");
					String n=rs.getString("DEPARTMENT");
					String m=rs.getString("GENDER");
					String q=rs.getString("Adress");
					
					System.out.println(x);
					out.println("<h1 style='text-align: center; padding-top:80px;'>Name of the student : "+y+" </h1>");
					out.print("<h2 style='text-align: center; padding-top:80px;'>Student_ID : "+x+"</h2>");
					out.print("<h2 style='text-align: center; padding-top:80px;'>Date of Birth : "+c+"</h2>");
					out.print("<h2 style='text-align: center; padding-top:80px;'>Gender : "+m+"</h2>");
					out.print("<h2 style='text-align: center; padding-top:80px;'>Mobile Number : "+v+"</h2>");
					out.print("<h2 style='text-align: center; padding-top:80px;'>E-mail ID : "+b+"</h2>");
					out.print("<h2 style='text-align: center; padding-top:80px;'>Field of Study : "+n+"</h2>");
					out.print("<h2 style='text-align: center; padding-top:80px;'>Adress of the student : "+q+"</h2>");
					out.println("<br><br><br><a href='admin.html' style='font-size: 20px;text-align:center; padding-top:40px;'>Back to Menu</a>");
				
				
					request.setAttribute("Name", y);
					request.setAttribute("Id", x);
					request.setAttribute("Dob", c);
					request.setAttribute("Gender", m);
					request.setAttribute("Mobile", v);
					request.setAttribute("Department", n);
					request.setAttribute("Mail", b);
					request.setAttribute("Adress", q);
					
			        RequestDispatcher requestDispatcher = request.getRequestDispatcher("dummy.jsp");
			 
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
