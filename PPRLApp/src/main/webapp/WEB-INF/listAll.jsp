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

	<ul>
	<c:forEach var="p" items="${players}">
	<li><a href="getPlayer.do?pid=${p.id}">${player.firstName}</a></li>
	</ul>
	
	</c:forEach>

</body>
</html>