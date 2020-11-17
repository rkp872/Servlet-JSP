<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
  <%@page errorPage="error.jsp" %>  
<!DOCTYPE html>
<html>
	<head>
		<title>Welcome</title>
	</head>
	<body>
		<h1>JSP Page</h1>
		<%!
			int n1=20;
			int n2=0;
		%>
		<%
			int div=n1/n2;
		%>
		<h1>Division=<%=div %></h1>
		<%
			out.println("This is my implicit Object");
			request.getParameter("name");
			response.setContentType("text/html");
			config.getInitParameter("name");
			application.getServerInfo();
			session.setAttribute("name", "Rohit");	
		%>
	</body>
</html>