<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PPR Leaderboards</title>


</head>
<body>
<h1>Fantasy Football Leaders</h1>
<jsp:include page="navbar.jsp" />

<h3>
<a href="listAll.do">Show PPR Leaders</a>
</h3>


<form action="creationBuffer.do" method="GET">
	<input type="submit" value="Create a Player">
</form>

<form action="getPlayer.do" method="GET">
	Player ID: <input type="text" name="pid" /><input type="submit"
		value="Show Player" />
</form>

	<form action="keywordSearch.do" method="GET">
		Search Player by name <br> <input type="text" name="keyword"> <input
			type="submit" value="submit">
	</form>

<jsp:include page="bootstrapFoot.jsp"/>


</body>
</html>