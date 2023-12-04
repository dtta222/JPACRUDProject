<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>USA Men's Roster</title>
<style>
body {
	font-family: 'Arial', sans-serif;
	background-color: #f5f5f5;
	margin: 0;
	padding: 20px;
	display: flex;
	flex-direction: column;
	align-items: center;
}

h1 {
	color: #333;
}

#links {
	display: flex;
	flex-wrap: wrap;
	justify-content: space-around;
	width: 70%;
	margin-top: 20px;
}

a {
	display: block;
	margin: 5px;
	padding: 10px;
	background-color: #007bff;
	color: #fff;
	text-decoration: none;
	border-radius: 5px;
	transition: background-color 0.3s;
}

a:hover {
	background-color: #0056b3;
}

footer {
	margin-top: 20px;
	text-align: center;
}

footer a {
	display: inline-block;
	padding: 8px 16px;
	background-color: #333;
	color: #fff;
	text-decoration: none;
	border-radius: 5px;
	transition: background-color 0.3s;
}

footer a:hover {
	background-color: #555;
}
</style>
</head>
<body>

	<h1>USA Men's Roster</h1>

	<div id="links">
		<c:forEach var="player" items="${playerList}">
			<a href="getPlayer.do?playerId=${player.id}"> ${player.firstName}
				${player.lastName} </a>
		</c:forEach>
	</div>

	<footer>
		<a href="/home.do">Return Home</a>
	</footer>
</body>
</html>
