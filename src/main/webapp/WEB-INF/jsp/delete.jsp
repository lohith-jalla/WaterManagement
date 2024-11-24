<!DOCTYPE html>
<html>
<head>
    <title>Delete Note</title>
    <style>
        *{
            box-sizing: border-box;
            margin: 0;
            padding: 0;
            font-family: Arial, Helvetica, sans-serif;
            font-size: 1.2rem;
        }
        body{
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            background-color: white;
        }
        form{
            width: 30rem;
            height: 30rem;
            border: 1px solid black;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            background-color: #F5F5DC;
            border-radius: 20px;
            gap:1rem;
        }
        input{
            border: 1px solid black;
            padding:0.3rem;
            border-radius: 0.6rem;
        }
        textarea{
            border: 1px solid black;
            padding:0.7rem;
        }
        button{
            border: 1px solid black;
            padding:0.4rem;
            border-radius: 0.4rem;
            cursor: pointer;
        }
        button:hover{
            background-color: black;
            color:white;
        }
        a{
            color:black;
            margin-top:2rem;
        }
    </style>
</head>
<body>

<h2>Delete Note</h2>

<form method="post">
    <label for="id">Enter the Meter Id to delete</label>
    <input type="text" id="id" name="id" placeholder="id" />

    <button type="submit">Delete</button>
    <a href="/index">Cancel</a>
</form>

</body>
</html>
