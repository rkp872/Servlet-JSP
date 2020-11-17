package URLRewritting;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class urlServlet1 extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out= response.getWriter();
		response.setContentType("text/html");
		String name=request.getParameter("name");
		out.println("<h1>Your name : "+ name+"</h1>");
		//out.println("<a href='urlServlet2?name="+name+"'>Go to second Servlet</a>");
		out.println("<form action='urlServlet2'><input type='hidden' name='name' value="+name+"><button type='submit'>Go to Servlet 2</button></form>");
	}

}
