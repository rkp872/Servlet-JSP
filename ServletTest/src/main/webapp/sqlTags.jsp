<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
  <%@ page isELIgnored="false" %>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
	<head>
		<title>Sql tags</title>
	</head>
	<body>
		<h1>SQL Tag</h1>
		<sql:setDataSource driver="com.mysql.cj.jdbc.Driver" url="jdbc:mysql://localhost:3306/test" user="root" password="76448" var="ds"></sql:setDataSource>
		<sql:query var="rs" dataSource="${ds }">select * from user;</sql:query>
		
		<table>
			<tr>
				<td>User Id</td>
				<td>User Name</td>
				<td>User Phone</td>
			</tr>
			<c:forEach items="${rs.rows }" var="row">
				<tr>
					<td><c:out value="${row.UserID }"></c:out> </td>
					<td><c:out value="${row.UserName }"></c:out> </td>
					<td><c:out value="${row.Phone }"></c:out> </td>
				</tr>
			</c:forEach>
		</table>
	</body>
</html>