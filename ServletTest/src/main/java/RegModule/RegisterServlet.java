package RegModule;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String Name=request.getParameter("name");
		String Password=request.getParameter("password");
		String Email=request.getParameter("email");
		
		PrintWriter out=response.getWriter();
		out.println(Name);
		out.println(Password);
		response.setContentType("text/html");
		//connection
		try 
		{
			Thread.sleep(3000);
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","76448");
			String s="insert into UserData (name,password,email) values(?,?,?);";
			PreparedStatement st=con.prepareStatement(s);
			st.setString(1, Name);
			st.setString(2, Password);
			st.setString(3, Email);
			
			st.executeUpdate();
			out.println("<h1>Done...</h1>");
		} 
		catch (Exception e) 
		{	
			e.printStackTrace();
			out.print("<h1>Error...</h1>");
		}
		
		
	}

}
