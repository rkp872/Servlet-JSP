package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.GenericServlet;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class SecondServlet extends GenericServlet
{
	public void service(ServletRequest req,ServletResponse res) throws IOException
	{
		System.out.println("Servicing using Generic Servlet");
		PrintWriter out=res.getWriter();
		out.println("Servicing using Generic Servlet----");
	}

}
