package DClear.registration;

import java.io.IOException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import java.sql.*;


@WebServlet("/studentRegistrationClass")
public class UserRegistration extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String firstname=request.getParameter("firstname");
		String lastname=request.getParameter("lastname");
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		String gender=request.getParameter("gender");
		RequestDispatcher dispatcher=null;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://user.c70w4go4kkwp.eu-north-1.rds.amazonaws.com/user","arunkumar","Arunr!90085");
			PreparedStatement ps=con.prepareStatement("insert into user values(?,?,?,?,?)");
			ps.setString(1, firstname);
			ps.setString(2, lastname);
			ps.setString(3, email);
		
			ps.setString(4, password);
			ps.setString(5, gender);
			
			int rowCount=ps.executeUpdate(); 
			
			
			if(rowCount>0)
			{
				request.setAttribute("status", "success");
				dispatcher =request.getRequestDispatcher("studentlogin.jsp");
			}
			else
			{
				request.setAttribute("status", "failed");
				dispatcher =request.getRequestDispatcher("studentRegistration.jsp");
			}
			dispatcher.forward(request, response);
		}catch(Exception e)
		{
			System.out.println(e);
		}
		
	}

}
