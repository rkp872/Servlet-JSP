package SessionTracking;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class servlet2 extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//String name=request.getParameter("name");
		PrintWriter out=response.getWriter();
		Cookie cookies[]= request.getCookies();
		boolean f=false;
		String name="";
		if(cookies==null)
		{
			out.println("You are new user..Go to homepage..");
		}
		else
		{
			for(Cookie c : cookies)
			{
				String tname=c.getName();
				if(tname.equals("User_Name"))
				{
					f=true;
					name=c.getValue();
				}
			}
		}
		response.setContentType("text/html");
		
		if(f)
		{
			out.println("<h1>Hello , "+name+" welcome back to my website..</h1>");
			out.println("<h2>Thank You</h2>");
		}
		else
		{
			out.println("You are new user..Go to homepage..");
		}
	}

}
