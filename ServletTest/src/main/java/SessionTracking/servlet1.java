package SessionTracking;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class servlet1 extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	String name=request.getParameter("name");
	Cookie cookie=new Cookie("User_Name" , name);
	response.addCookie(cookie);
	
	response.setContentType("text/html");
	PrintWriter out=response.getWriter();
	out.println("<h1>Hello , "+name+" welcome to my website..</h1>");
	out.println("<h1><a href='servlet2'>Go to servlet 2</a></h1>");
	
	}

}
