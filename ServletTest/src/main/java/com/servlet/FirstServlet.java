package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.*;
public class FirstServlet implements Servlet 
{
	ServletConfig conf;
	//Life cycle method
	public void init(ServletConfig conf)
	{
		this.conf=conf;
		System.out.println("Creating Object");
	}
	public void service(ServletRequest req,ServletResponse res) throws IOException
	{
		System.out.println("Servicing.....");
		PrintWriter out=res.getWriter();
		out.println("Servicing----");
		
	}
	public void destroy()
	{
		System.out.println("Going to destroy .....");
	}
	
	//Non Life Cycle methods
	
	public ServletConfig getServletConfig()
	{
		return conf;
	}
	public String getServletInfo()
	{
		return("Servlet created by Rohit pandey ...");
	}
}