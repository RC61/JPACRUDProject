<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Player Info</title>
<link rel="stylesheet" type="text/css" href="css/myStyles.css"> 
<jsp:include page="bootstrapHead.jsp" />
<jsp:include page="navbar.jsp" />

</head>
<body>
	<div class="playerBody">
	<h1>Task Outcome</h1>
	<h2>${advisory}</h2>
	
	<form action="index.do" method="GET">
	<input type="submit" value="Head Back Home">
	</form>
	
	</div>
</body>
</html>