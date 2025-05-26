<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Hotel Login</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;600&display=swap" rel="stylesheet">

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Poppins', sans-serif;
            background-color:rgb(240,230,140);
            background-size: cover;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            animation: fadeInBody 1s ease-in;
        }

        @keyframes fadeInBody {
            from { opacity: 0; }
            to { opacity: 1; }
        }

        .login-box {
    background: rgba(37, 117, 252, 0.9);
    padding: 40px 30px;
    border-radius: 15px;
    box-shadow: 0 10px 30px rgba(0,0,0,0.3);
    backdrop-filter: blur(8px);
    width: 350px;
    animation: slideUp 0.6s ease-out;
    color: #fff;
}

        @keyframes slideUp {
            from {
                transform: translateY(40px);
                opacity: 0;
            }
            to {
                transform: translateY(0);
                opacity: 1;
            }
        }

        .login-box h2 {
            text-align: center;
            color: #fff;
            margin-bottom: 25px;
        }

        .login-box input[type="text"],
        .login-box input[type="password"] {
            width: 100%;
            padding: 12px;
            margin: 10px 0;
            border: none;
            border-radius: 8px;
            background: rgba(255, 255, 255, 0.2);
            color: #fff;
            font-size: 14px;
        }

        .login-box input[type="text"]::placeholder,
        .login-box input[type="password"]::placeholder {
            color: #eee;
        }

        .login-box input[type="submit"] {
            width: 100%;
            padding: 12px;
            border: none;
            border-radius: 8px;
            background-color: #ffcc00;
            color: #000;
            font-weight: bold;
            font-size: 16px;
            margin-top: 15px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .login-box input[type="submit"]:hover {
            background-color: #e6b800;
        }

        .login-box .forgot {
            text-align: right;
            margin-top: 10px;
        }

        .login-box .forgot a {
            color: #fff;
            font-size: 12px;
            text-decoration: none;
        }

        .login-box .forgot a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

<div class="login-box">
    <h2>Login</h2>
    <form action="/login1" method="post">
        <input type="text" name="username" placeholder="Username or Email" required />
        <input type="password" name="password" placeholder="Password" required />
        <input type="submit" value="Login" />
        <div class="forgot">
            <a href="#">Forgot Password?</a>
        </div>
        <div class="signup">
        <p>Don't have an account? <a href="/signup">Sign up</a></p>
    </div>
    </form>
</div>

</body>
</html>
