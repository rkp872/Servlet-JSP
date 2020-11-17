<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
  <%@ page isELIgnored="false" %> 
<!DOCTYPE html>
<html>
	<head>
		<title>TagExample</title>
	</head>
	<body>
			<!-- 1. out tag   -->
			<!-- 2. set tag -->
			<c:set var="i" value="23" scope="application"></c:set>
			<c:out value="${i }"></c:out>
			
			
			<!-- 3. remove tag -->
			<c:remove var="i"/>
			<c:out value="${i }">this is default value</c:out>
			
			<hr>
			
			<!-- 4. if tag -->
			<c:set var="i" value="0" scope="application"></c:set>
			<c:if test="${i==23 }">
				<h1>Condition is true...</h1>
			</c:if>
			
			<!-- 5. switch,when,otherwise : java switch -->
			<c:choose>
				<c:when test="${i>0 }">
					<h1>this is case 1 : num is positive</h1>
				</c:when>
				
				<c:when test="${i<0 }">
					<h1>this is case 2 : num is negative </h1>
				</c:when>
				
				<c:otherwise>
					<h1>this is default case : num is zero</h1>
				</c:otherwise>
			</c:choose>
			
			<!-- 6. forEach tag :  Iterative statement  -->
			<c:forEach var="j" begin="1" end="10">
				<h1>Value of j is  : <c:out value="${j }"></c:out> </h1>
			</c:forEach>
			
			<!-- 7. url , redirect -->
			<c:url var="myurl" value="https://www.google.com/search">
				<c:param name="q" value="servlet tutorial"></c:param>
			</c:url>
			<c:out value="${myurl }"></c:out>
			<c:redirect url="${myurl }"></c:redirect>
			
	</body>
</html>