<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Player Details</title>
</head>
<body>

	<h1>First Name: ${player.firstName}</h1>
	<h1>Last Name: ${player.lastName}</h1>
	<h1>Position: ${player.position}</h1>
	<h1>Total PPR Points: ${player.pprPoints}</h1>
	<h1>Rush Attempts: ${player.rushAttempts}</h1>
	<h1>Rush Yards: ${player.rushYards}</h1>
	<h1>Receptions: ${player.receptions}</h1>
	<h1>Receiving Yards: ${player.recYards}</h1>
	<h1>Average Draft Position: ${player.adp}</h1>
	
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
	

</body>
</html>