<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link href="https://fonts.googleapis.com/css2?family=Anton&display=swap"
	rel="stylesheet">

<title>PPR Leaderboards</title>

<link rel="stylesheet" type="text/css" href="/css/myStyles.css"> 

<jsp:include page="bootstrapHead.jsp" />
<jsp:include page="navbar.jsp" />

</head>
<body>
	<div>
		<h2 class="indexBody">
			<br>
			<br>
			<br>
			<br>
			<div class="container">
				<form action="creationBuffer.do" method="GET">
					Create A Player: <input type="submit" value="Create a Player">
				</form>
			</div>
			<br>

			<div class="container">
				<form action="getPlayer.do" method="GET">
					Player ID: <input type="text" name="pid" /><input type="submit"
						value="Show Player" />
				</form>
			</div>
			<br>


			<div class="container">
				<form action="keywordSearch.do" method="GET">
					Search Player by name: <br> <input type="text" name="keyword">
					<input type="submit" value="Search">
				</form>
			</div>
			<br>

		</h2>

	</div>
</body>
</html>