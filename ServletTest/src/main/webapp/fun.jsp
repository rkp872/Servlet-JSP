<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
  <%@ page isELIgnored="false" %>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
	<head>
		<title>Fun</title>
	</head>
	<body>
		<h1>Fun page</h1>
		<c:set var="name" value="RohitINDIA"></c:set>
		<h1><c:out value="${name }"></c:out></h1>
		<h1>Length of name is : <c:out value="${fn:length(name) }"></c:out> </h1>
		<h1><c:out value="${fn:toLowerCase(name) }"></c:out> </h1>
		<h1><c:out value="${fn:toUpperCase(name) }"></c:out> </h1>
		<h1><c:out value="${fn:contains(name,'INDIA') }"></c:out> </h1>
	</body>
</html>