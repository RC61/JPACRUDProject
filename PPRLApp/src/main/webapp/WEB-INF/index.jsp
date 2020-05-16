<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PPR Leaderboards</title>
</head>
<body>
<h1>Hello</h1>

<h3>
<a href="listAll.do">Show PPR Leaders</a>
</h3>


<form action="getPlayer.do" method="GET">
	Player ID: <input type="text" name="pid" /><input type="submit"
		value="Show Player" />
</form>

</body>
</html>