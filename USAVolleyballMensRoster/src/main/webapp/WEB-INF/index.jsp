<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>USA Men's Volleyball</title>
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

#content {
	width: 60%;
	margin: 20px auto;
	padding: 20px;
	background-color: #fff;
	border-radius: 8px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	text-align: center;
}

h1 {
	color: #333;
}

form {
	margin-top: 20px;
}

label {
	margin-right: 10px;
}

input[type="text"], input[type="submit"] {
	padding: 10px;
	margin-right: 10px;
}

a {
	display: inline-block;
	margin: 10px;
	padding: 15px;
	width: 200px; /* Adjust the width as needed */
	background-color: #007bff;
	color: #fff;
	text-decoration: none;
	border-radius: 5px;
	transition: background-color 0.3s;
}

a:hover {
	background-color: #0056b3;
}
</style>
</head>
<body>

	<div id="content">
		<h1>USA Men's Volleyball</h1>

		<form action="searchPlayers.do" method="GET">
			<label for="search">Search Players:</label> <input type="text"
				id="search" name="search" /> <input type="submit" value="Search" />
		</form>

		<a href="getPlayers.do">Show Full Roster</a> <a href="addPlayerForm">Add
			Player</a>
	</div>

</body>
</html>
