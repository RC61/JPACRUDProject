<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Player Details</title>
<link rel="stylesheet" type="text/css" href="/css/myStyles.css"> 
<jsp:include page="bootstrapHead.jsp" />
<jsp:include page="navbar.jsp" />
</head>
<body>

	<div class="playerBody">

	<h2>First Name: ${player.firstName}</h2>
	<h2>Last Name: ${player.lastName}</h2>
	<h2>Position: ${player.position}</h2>
	<h2>Total PPR Points: ${player.pprPoints}</h2>
	<h2>Rush Attempts: ${player.rushAttempts}</h2>
	<h2>Rush Yards: ${player.rushYards}</h2>
	<h2>Receptions: ${player.receptions}</h2>
	<h2>Receiving Yards: ${player.recYards}</h2>
	<h2>Average Draft Position: ${player.adp}</h2>
	
	<form action="index.do" method="GET">
	<input type="submit" value="Head Back Home">
	</form>


	<form action="deletionBuffer.do" method=GET>
				<input type="submit" value="Delete Player">
				<input type="hidden" name = "id" value="${player.id}">
			</form>
			
	<form action="updatePlayer.do" method=GET>
				<input type="submit" value="Edit/Update Player">
				<input type="hidden" name = "id" value="${player.id}">
			</form>
	
	</div>

</body>
</html>