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

<!-- <link rel="stylesheet" type="text/css" href="/css/myStyles.css"> -->

<jsp:include page="bootstrapHead.jsp" />
<jsp:include page="navbar.jsp" />

</head>
<body>
	<div class="d-flex p-2">
		<h1 class="text-primary">Fantasy Football Leaderboards</h1>
	</div>

	<h3>
		<a href="listAll.do">Show PPR Leaders</a>
	</h3>

	<div class="container">
		<div class="row">
			<div class="col-sm">
				<form action="creationBuffer.do" method="GET">
					Create A Player: <input type="submit" value="Create a Player">
				</form>
			</div>

			<div class="col-sm">
				<form action="getPlayer.do" method="GET">
					Player ID: <input type="text" name="pid" /><input type="submit"
						value="Show Player" />
				</form>
			</div>

			<div class="col-sm">
				<form action="keywordSearch.do" method="GET">
					Search Player by name: <br> <input type="text" name="keyword">
					<input type="submit" value="submit">
				</form>
			</div>
		</div>
	</div>
	<jsp:include page="bootstrapFoot.jsp" />

</body>
</html>