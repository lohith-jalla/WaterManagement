<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="com.TODO.NoteMaker.model.note" %>
<%@ page import="java.util.List" %>
<%@ page import="com.lohith.ExpenceTracker.models.WaterMeter" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>All Notes</title>
    <style>
        /* Page background and text styling */
        body {
            background-color: goldenrod;
            color: white;
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 20px;
        }

        h1 {
            text-align: center;
            font-size: 2em;
            margin-bottom: 20px;
        }

        /* Table styling */
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #5a9bd3;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
            color:black;
        }

        tr:nth-child(odd) {
            background-color: white;
            color:black;
        }

        .container {
            text-align: center;
            margin-top: 20px;
        }

        .btn {
            background-color: #5a9bd3;
            color: white;
            padding: 10px 20px;
            text-decoration: none;
            border-radius: 5px;
            font-weight: bold;
        }

        .btn:hover {
            background-color: #3878a3;
        }
    </style>
</head>
<body>
<h1>All Notes</h1>

<table>
    <tr>
        <th>Id</th>
        <th>Location</th>
        <th>Current Reading</th>
        <th>Water Consumption</th>
        <th>Status</th>
    </tr>

    <%
        List<WaterMeter> wm = (List<WaterMeter>) request.getAttribute("e");

        for (WaterMeter n : wm) {
    %>
    <tr>
        <td><%= n.getMeterId() %></td>
        <td><%= n.getLocation()%></td>
        <td><%= n.getCurrentReading() %></td>
        <td><%= n.getWaterConsumption() %></td>
        <td><%= n.getStatus() %></td>
    </tr>
    <%
        }
    %>
</table>

<div class="container">
    <a href="index" class="btn">Home</a>
</div>
</body>
</html>
