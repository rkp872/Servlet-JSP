<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="/WEB-INF/mylib.tld" prefix="t" %>
<!DOCTYPE html>
<html>
	<head>
		<title>Welcome</title>
	</head>
	<body>
	<h1>Hello</h1>
	<t:mytag></t:mytag>
	<t:printTable num="20" color="red"></t:printTable>
	<t:printTable num="25" color="blue"></t:printTable>
	</body>
</html>