<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Show Player Details</title>
<style>
body {
	font-family: 'Arial', sans-serif;
	background-color: #f5f5f5;
	margin: 0;
	display: flex;
	flex-direction: column; /* Updated to column layout */
	align-items: center;
	justify-content: center;
	height: 100vh;
}

div {
	background-color: #fff;
	padding: 20px;
	border-radius: 8px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	text-align: center;
	margin-bottom: 20px; /* Added margin to separate div and footer */
	max-width: 400px; /* Added max-width for better readability */
}

p {
	margin: 5px 0;
	font-size: 18px;
	color: #333;
}

a {
	display: inline-block;
	padding: 8px 16px;
	margin-top: 10px;
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

	<div>
		<p>${player.firstName} ${player.lastName}</p>
		<p>Jersey Number: ${player.jerseyNumber}</p>
		<p>Position: ${player.position}</p>
		<p>Height: ${player.height}</p>
		<p>Birth Date: ${player.birthDate}</p>

		<a href="editPlayerForm?playerId=${player.id}">Edit Player</a>
	</div>

	<footer>
		<a href="/home.do">Return Home</a>
	</footer>

</body>
</html>
