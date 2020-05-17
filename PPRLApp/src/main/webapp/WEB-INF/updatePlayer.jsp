<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update a Player</title>
<jsp:include page="bootstrapHead.jsp" />
<jsp:include page="navbar.jsp" />
</head>
<body>

	<h1>Update ${player.firstName } ${player.lastName}</h1>
	<h4>Choose the following to update:</h4>

	<form action="finishUpdatePlayer.do" method="POST">
		First Name: <input type="text" name="firstName" size="45" value = "${player.firstName}" required> 
		<br>
		Last Name: <input type="text" name="lastName" size="45" value = "${player.lastName}" required> 
		<br>
		Position: <input type="text" name="position" size="45" value = "${player.position}"required> 
		<br>
		Total PPR Points: <input type="number" name="pprPoints" value = "${player.pprPoints}" size="5" required>
		<br>
		Rush Attempts: 
		<input type="text" name="rushAttempts" value = "${player.rushAttempts}" size="10" required> 
		<br>
		Rush Yards: <input type="text" name="rushYards" value = "${player.rushYards}" size="10" required> 
		<br>
		Receptions: 
		<input type="text" name="receptions" value = "${player.receptions}" size="10" required> 
		<br>
		Receiving Yards: <input type="text" name="recYards" value = "${player.recYards}" size="10" required> 
		<br>
		Average Draft Positon: <input type="text" name="adp" value = "${player.adp}" size="10" required> 
		
		<br>
		<input type="submit" class="button" value="Submit" />
		<input type="hidden" value="${player.id}" name="id">
	</form>
</body>
</html>