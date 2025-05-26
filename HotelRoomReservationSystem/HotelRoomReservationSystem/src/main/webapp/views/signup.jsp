<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Signup</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;700&display=swap" rel="stylesheet">
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(135deg, #ff416c 0%, #ff4b2b 100%);
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .form-container {
            background-color: #fff;
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.2);
            width: 320px;
            animation: fadeIn 0.7s ease;
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: scale(0.95);
            }
            to {
                opacity: 1;
                transform: scale(1);
            }
        }

        h2 {
            text-align: center;
            margin-bottom: 20px;
            color: #333;
        }

        input[type="text"],
        input[type="email"],
        input[type="password"],
        input[type="tel"],
        input[type="submit"] {
            width: 100%;
            padding: 10px;
            margin-top: 10px;
            border: none;
            border-radius: 8px;
            box-sizing: border-box;
            font-size: 14px;
        }

        input[type="text"],
        input[type="email"],
        input[type="password"],
        input[type="tel"] {
            background: #f0f0f0;
        }

        input[type="submit"] {
            background: #ff4b2b;
            color: white;
            font-weight: bold;
            margin-top: 20px;
            cursor: pointer;
            transition: background 0.3s ease;
        }

        input[type="submit"]:hover {
            background: #e43d1b;
        }
    </style>
</head>
<body>
<div class="form-container">
    <h2>Signup</h2>
    <form action="/signup" method="post">
        <input type="text" name="username" placeholder="Username" required/>
        <input type="email" name="email" placeholder="Email" required/>
        <input type="tel" name="mobile" placeholder="Mobile Number" required pattern="[0-9]{10}"/>
        <input type="password" name="password" placeholder="Password" required/>
        <input type="password" name="confirmPassword" placeholder="Confirm Password" required/>
        <input type="submit" value="Signup"/>
    </form>
</div>
</body>
</html>
