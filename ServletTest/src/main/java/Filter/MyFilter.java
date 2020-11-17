package Filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class MyFilter implements Filter
{

	public void init(FilterConfig filterConfig) throws ServletException 
	{
		
		
	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException 
	{
		
		//PreProcessing task.... 
		System.out.println("Before Filter.....");
		//.....
		//......
		//End of preprocessing task
		
		
		chain.doFilter(request, response);
		
		//Post Processing task....
		System.out.println("After Servlet");
		//....
		//....
		//End of pprocessing task
		
	}

	public void destroy() 
	{
		
		
	}
	
}
