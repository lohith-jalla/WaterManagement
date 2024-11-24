<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Expense Tracker</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f5f5dc;
            font-size: 1.3rem;
        }
        header {
            display: flex;
            justify-content: center;
            align-items: center;
            background-color: #dce4b3;
            padding: 10px 20px;
            text-align: center;
        }
        header h1 {
            font-size: 2rem;
            color: black;
        }
        header a {
            text-decoration: none;
            color: black;
            font-weight: bold;
            background-color: #fff;
            padding: 5px 15px;
            border-radius: 20px;
            border: 1px solid #ccc;
        }
        .main-content {
            text-align: center;
            margin-top: 20px;
        }
        .main-content h2 {
            font-size: 32px;
            margin-bottom: 30px;
            color: #333;
        }
        .buttons {
            margin-bottom: 20px;
        }
        .buttons button {
            border: none;
            border-radius: 10px;
            padding: 15px 40px;
            font-size: 18px;
            font-weight: bold;
            cursor: pointer;
            margin: 0 10px;
        }
        .buttons .expense {
            background-color: red;
            border:2px solid Black;
            color: #fff;
        }
        .buttons .income {
            background-color: green;
            border:2px solid Black;
            color: #fff;
        }
        a .update{
            background-color: #f2f2f2;
            border:2px solid Black;
        }

    </style>
</head>
<body>
<header>
    <h1>Smart Water Management System</h1>
</header>
<div class="main-content">
    <h2>See Meters Here</h2>
    <div class="buttons">
        <a href="Create"><button class="expense">Create Meter</button></a>
        <a href="update"><button class="update">Update Meter</button></a>
        <a href="delete"><button class="income">Delete Meter</button></a>
        <a href="All"><button class="expense">All Meter</button></a>
    </div>
</div>
</div>
</body>
</html>
