<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Search Results</title>
<jsp:include page="navbar.jsp" />


</head>
<body>

	<c:forEach var="play" items="${players}">
	<h1>First Name: ${play.firstName}</h1>
	<h1>Last Name: ${play.lastName}</h1>
	<h1>Position: ${play.position}</h1>
	<h4>Total PPR Points: ${play.pprPoints}</h4>
	<h4>Rush Attempts: ${play.rushAttempts}</h4>
	<h4>Rush Yards: ${play.rushYards}</h4>
	<h4>Receptions: ${play.receptions}</h4>
	<h4>Receiving Yards: ${play.recYards}</h4>
	<h4>Average Draft Position: ${play.adp}</h4>
	<br>
	<form action="deletionBuffer.do" method=GET>
				<input type="submit" value="Delete Player">
				<input type="hidden" name = "id" value="${play.id}">
			</form>
			
	<form action="updatePlayer.do" method=GET>
				<input type="submit" value="Edit/Update Player">
				<input type="hidden" name = "id" value="${play.id}">
			</form>
</c:forEach>
	
	


</body>
</html>