<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<title>List All Players</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
  
<jsp:include page="navbar.jsp" />
</head>
<body>

<h1>PPR LEADERS OF 2019</h1>

<h3>Click on a player to view their details</h3>

<div class="container">
	<table class="table table-bordered">
	<thead>
		<tr>
		<th>Player</th>
		</tr>
	</thead>
	<tbody>
	<c:forEach var="p" items="${players}">
	<tr>
	<td><a href="getPlayer.do?pid=${p.id}">${p.firstName} ${p.lastName} ${p.position}
	</a></td>
	</tr>
	</c:forEach>
	</tbody>
	</table>
</div>

</body>
</html>