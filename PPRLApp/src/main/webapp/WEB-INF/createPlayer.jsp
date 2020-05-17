<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create a Player</title>
<jsp:include page="bootstrapHead.jsp" />
<jsp:include page="navbar.jsp" />
</head>
<body>

	<h1>Create a Player</h1>
	<h4>Fill out the form below:</h4>

	<form action="createPlayer.do" method="POST">
		First name: <input type="text" name="firstName" size="45" required> 
		<br>
		Last name: <input type="text" name="lastName" size="45" required> 
		<br>
		Position:<input type="text" name="position" size="45" required> 
		<br>
		Total PPR Points: <input type="text" name="pprPoints" size="5" required> 
		<br>
		Rush Attempts: <input type="number" name="rushAttempts" size="10" required>
		<br>
		Rush Yards: <input type="number" name="rushYards" size="10" required>
		<br>
		Receptions: <input type="number" name="receptions" size="10" required>
		<br>
		Receiving Yards: <input type="number" name="recYards" size="10" required>
		<br>
		Average Draft Position: <input type="number" name="adp" size="4" required>
		<br>
		<input type="submit" class="button" value="Submit" />
	</form>
</body>
</html>