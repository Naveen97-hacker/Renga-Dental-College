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

@WebServlet("/stuverify")
public class stuverify extends HttpServlet {
            
	Connection conn;
	Statement stmt;
	String dbstring="jdbc:sqlserver://localhost:1433;databaseName=renga;user=vishaal;password=1234567";
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id=request.getParameter("id");
		String pass=request.getParameter("pass");
		
		try(PrintWriter out=response.getWriter())
		{
			try {
				Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
				conn=DriverManager.getConnection(dbstring);
				stmt=conn.createStatement();
				String query="SELECT * from Login where  STUDENT_ID='"+id+"';";
				ResultSet r=stmt.executeQuery(query);
				while(r.next())
				{
					String p=r.getString("PASSWORD");
					if(pass.equals(p))
					{
						r.close();
					
				String str="SELECT * from Login where STUDENT_ID='"+id+"' and PASSWORD='"+pass+"' ";
				ResultSet rs=stmt.executeQuery(str);
				
				while(rs.next())
				{
					String x=rs.getString("STUDENT_ID");
					String y=rs.getString("NAME");
					String c=rs.getString("PASSWORD");
					String v=rs.getString("FIRST_TIME");
					System.out.println(x);
					
					if (v.equals("Y")) 
					{
						request.setAttribute("Name", y);
						request.setAttribute("Id", x);
						request.setAttribute("Password", c);					
						RequestDispatcher requestDispatcher = request.getRequestDispatcher("validating.jsp");					
						requestDispatcher.forward(request, response);	
						rs.close();
					}
					else 
					{
						String str1="SELECT * from Student_details where STUDENT_ID='"+id+"'";
						ResultSet rs1=stmt.executeQuery(str1);
						
						while(rs1.next())
						{
							String x1=rs1.getString("STUDENT_ID");
							String y1=rs1.getString("NAME");
							String c1=rs1.getString("DoB");
							String v1=rs1.getString("PHONE");
							String b=rs1.getString("MAIL_ID");
							String n=rs1.getString("DEPARTMENT");
							String m=rs1.getString("GENDER");
							String q=rs1.getString("Adress");
							
							System.out.println(x1);
						
							request.setAttribute("Name", y1);
							request.setAttribute("Id", x1);
							request.setAttribute("Dob", c1);
							request.setAttribute("Gender", m);
							request.setAttribute("Mobile", v1);
							request.setAttribute("Department", n);
							request.setAttribute("Mail", b);
							request.setAttribute("Adress", q);
							
					        RequestDispatcher requestDispatcher = request.getRequestDispatcher("dummy.jsp");
					 
					        requestDispatcher.forward(request, response);
						
						}
					}	
				}
					}
					else
					{
						response.sendRedirect("stud.jsp");
					}
				
				}
			}
		catch(Exception e) 
			{
				//out.println("<h1 style='text-align: center; padding-top:80px;'>Incoorect Student ID or Password<h1>");
				//out.println("<br><br><br><a href='stud.jsp' style='font-size: 20px;text-align:center; padding-top:40px;'>Back to login page...</a>");
				System.out.println(e);
			}
		}	
	}
}
