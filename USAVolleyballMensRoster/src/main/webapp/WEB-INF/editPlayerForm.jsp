<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <title>Edit Player</title>
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

        form {
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            margin-bottom: 20px;
            width: 400px;
            box-sizing: border-box;
        }

        label {
            display: block;
            margin: 10px 0;
        }

        input {
            width: calc(100% - 20px);
            padding: 10px;
            margin: 5px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }

        input[type="submit"] {
            background-color: #007bff;
            color: #fff;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }

        a {
            color: #dc3545;
            text-decoration: none;
            margin-top: 10px;
            display: inline-block;
            transition: color 0.3s;
        }

        a:hover {
            color: #c82333;
            background-color: #fff;
            text-decoration: none;
            border: 1px solid #dc3545;
            border-radius: 5px;
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

    <form action="editPlayer.do" method="post">
        <label for="playerId">Player ID:</label> <input type="text"
            id="playerId" name="playerId" value="${player.id}" required readonly>
        <br> <label for="firstName">First Name:</label> <input
            type="text" id="firstName" name="firstName"
            value="${player.firstName}" required> <br> <label
            for="lastName">Last Name:</label> <input type="text" id="lastName"
            name="lastName" value="${player.lastName}" required> <br>

        <label for="jerseyNumber">Jersey Number:</label> <input type="text"
            id="jerseyNumber" name="jerseyNumber" value="${player.jerseyNumber}"
            required> <br> <label for="position">Position:</label> <input
            type="text" id="position" name="position" value="${player.position}"
            required> <br> <label for="height">Height:</label> <input
            type="text" id="height" name="height" value="${player.height}"
            required> <br> <label for="birthDate">Birth
            Date:</label> <input type="date" id="birthDate" name="birthDate"
            value="${player.birthDate}" required> <br> <input
            type="submit" value="Edit Player">
    </form>

    <a href="removePlayer.do?playerId=${player.id}">Remove Player</a>

</body>
<footer>
    <a href="/home.do">Return Home</a>
</footer>
</html>
