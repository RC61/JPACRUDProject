<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Player info</title>
<jsp:include page="bootstrapHead.jsp" />
<jsp:include page="navbar.jsp" />
</head>
<body>

	<c:choose>
		<c:when test="${!empty player }">
			<h1>Are you sure you want to delete this player?</h1>
			<br>
			<h1>First name: ${player.firstName}</h1>
			<h1>Last name: ${player.lastName}</h1>
			<h2>ID: ${player.id }</h2>
			

			<form action="deletePlayer.do" method=POST>
				<input type="submit" value="Delete Player">
				<input type="hidden" value="${player.id }" name="id">
			</form>

		</c:when>
		<c:otherwise>
			<p>No Player Found</p>
		</c:otherwise>
	</c:choose>
</body>
</html>