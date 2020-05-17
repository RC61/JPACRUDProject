<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="pos-f-t">
	<div class="collapse" id="navbarToggleExternalContent">
		<div class="bg-dark p-4">
			<h4 class="text-white">Why does nothing work on this page??</h4>
				<a href="sandBox.do">Sandbox</a>
			
			<span class="text-muted">¯\_(ツ)_/¯</span>
		</div>
	</div>
	<nav class="navbar navbar-dark bg-dark">
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarToggleExternalContent"
			aria-controls="navbarToggleExternalContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
	</nav>
</div>

<nav class="navbar navbar-dark bg-dark">
	<tr class="navbar-nav">
		<th class="nav-item"><a class="nav-link" href="index.do"><p
					class="text-warning">Home</p></a></th>

		<th class="nav-item"><a class="nav-link" href="listAll.do"><p
					class="text-warning">Show All Players</p> </a></th>

		<th class="nav-item"><a class="nav-link"
			action="keywordSearch.do" method="GET">
				<p class="text-warning">Search Player by name:</p> <input
				type="text" name="keyword"> <input type="submit"
				value="submit">
		</a></th>
	</tr>
</nav>
