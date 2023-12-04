<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <title>Add Player</title>
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
        }

        label {
            display: block;
            margin: 10px 0;
        }

        input {
            width: 100%;
            padding: 10px;
            margin: 5px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }

        input[type="submit"] {
            background-color: #28a745;
            color: #fff;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        input[type="submit"]:hover {
            background-color: #218838;
        }
    </style>
</head>
<body>

    <h1>Add Player</h1>

    <form action="addPlayer.do" method="post">
        <label for="firstName">First Name:</label>
        <input type="text" id="firstName" name="firstName" required>
        <br>

        <label for="lastName">Last Name:</label>
        <input type="text" id="lastName" name="lastName" required>
        <br>

        <label for="jerseyNumber">Jersey Number:</label>
        <input type="text" id="jerseyNumber" name="jerseyNumber">
        <br>

        <label for="position">Position:</label>
        <input type="text" id="position" name="position">
        <br>

        <label for="height">Height:</label>
        <input type="text" id="height" name="height">
        <br>

        <label for="birthDate">Birth Date:</label>
        <input type="date" id="birthDate" name="birthDate">
        <br>

        <input type="submit" value="Add Player">
    </form>

</body>
<footer><a href="/home.do">Return Home</a></footer>
</html>