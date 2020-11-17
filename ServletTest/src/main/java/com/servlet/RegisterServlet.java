package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class RegisterServlet extends HttpServlet
{
	public void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException, ServletException
	{
		String Name=request.getParameter("uname");
		String Password=request.getParameter("pass");
		String Email=request.getParameter("uemail");
		String Gender=request.getParameter("gender");
		String Cource=request.getParameter("cource");
		String terms=request.getParameter("condition");
		
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		out.println("<h1>Welcome to register servlet<h1>");
		if(terms!=null)
		{
			if(terms.equals("checked"))
			{
				out.println("<h2>Name : "+Name+"</h2>");
				out.println("<h2>Password : "+Password+"</h2>");
				out.println("<h2>Email : "+Email+"</h2>");
				out.println("<h2>Gender : "+Gender+"</h2>");
				out.println("<h2>Cource : "+Cource+"</h2>");
				
				// Assume data saved to DB
				
				RequestDispatcher rd=request.getRequestDispatcher("/success");
				rd.forward(request, response);
			}
		}
		else
		{
			out.println("<h2>You have not acceped terms and condition </h2>");
			
			
			//We have to include index.html
			
			RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
			rd.include(request, response);
		}
		
				
	}
}
