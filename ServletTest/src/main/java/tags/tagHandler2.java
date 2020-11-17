package tags;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

public class tagHandler2 extends TagSupport
{
	public int num;
	public String color;
	public void setColor(String color) {
		this.color = color;
	}

	public void setNum(int num) 
	{
		this.num = num;
	}
	
	@Override
	public int doStartTag() throws JspException
	{
		JspWriter out=pageContext.getOut();
		
		try 
		{
			out.println("<div style='color:"+color+"'>");
			for(int i=1;i<=10;i++)
			{
				out.println(i*num+"<br>" );
				
			} 
			out.println("</div>");
		}
		catch (IOException e) 
		{
			
			e.printStackTrace();
		}
		
		return SKIP_BODY;
	}

}
