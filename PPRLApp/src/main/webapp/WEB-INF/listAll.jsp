<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List All Players</title>
</head>
<body>

<h1>PPR LEADERS OF 2019</h1>

<h3>Click on a player to view their details</h3>

	<ul>
	<c:forEach var="p" items="${players}">
	<li><a href="getPlayer.do?pid=${p.id}">${p.firstName} ${p.lastName}</a></li>
	</ul>
	
	</c:forEach>

</body>
</html>