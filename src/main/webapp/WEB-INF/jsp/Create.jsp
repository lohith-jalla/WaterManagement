<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Expense Create Form</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f5f5dc;
        }
        header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            background-color: #dce4b3;
            padding: 10px 20px;
        }
        header h1 {
            font-size: 24px;
            color: #333;
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
        .form-container {
            width: 50%;
            margin: 50px auto;
            background-color: #dce4b3;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .form-container h2 {
            text-align: center;
            margin-bottom: 20px;
            font-size: 24px;
            color: #333;
        }
        form {
            display: flex;
            flex-direction: column;
        }
        label {
            font-weight: bold;
            margin-bottom: 5px;
        }
        input, select {
            padding: 10px;
            font-size: 16px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        .form-buttons {
            display: flex;
            justify-content: space-between;
        }
        button {
            border: none;
            padding: 10px 20px;
            font-size: 16px;
            font-weight: bold;
            cursor: pointer;
            border-radius: 5px;
        }
        .submit-btn {
            background-color: green;
            color: white;
        }
        .cancel-btn {
            background-color: red;
            color: white;
        }
        .submit-btn:hover {
            background-color: #88cc88;
        }
        .cancel-btn:hover {
            background-color: #cc8888;
        }
    </style>
</head>
<body>
<header>
    <h1>Water Meter</h1>
</header>
<div class="form-container">
    <h2>Create Meter</h2>
    <form  method="POST">
        <label for="desc">Location</label>
        <input type="text" id="desc" name="location" placeholder="Enter location" required>

        <label for="date">Current Reading</label>
        <input type="number" id="date" name="CurrReading" placeholder="Enter Reading" required>

        <label for="amount">Consumption</label>
        <input type="number" id="amount" name="WaterConsumption" placeholder="Enter Consumption" step="0.01" required>

        <label for="amount">Status</label>
        <input type="text" id="amount1" name="Status" placeholder="Enter status" required>

        <div class="form-buttons">
            <button type="submit" class="submit-btn">Submit</button>
            <button type="button" class="cancel-btn" onclick="window.location.href='/index'">Cancel</button>
        </div>
    </form>
</div>
</body>
</html>
