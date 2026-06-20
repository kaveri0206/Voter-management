<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Voter Management System</title>

<style>
    body {
        margin: 0;
        font-family: Arial, sans-serif;
        background: linear-gradient(to right, #2c3e50, #3498db);
        height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .container {
        text-align: center;
        background: white;
        padding: 40px;
        border-radius: 12px;
        box-shadow: 0px 0px 15px rgba(0,0,0,0.3);
        width: 350px;
    }

    h1 {
        margin-bottom: 10px;
        color: #2c3e50;
    }

    p {
        color: #555;
        margin-bottom: 30px;
    }

    .btn {
        display: block;
        width: 100%;
        padding: 12px;
        margin: 10px 0;
        text-decoration: none;
        color: white;
        border-radius: 6px;
        font-weight: bold;
        transition: 0.3s;
    }

    .login {
        background-color: #27ae60;
    }

    .login:hover {
        background-color: #1e8449;
    }

    .register {
        background-color: #2980b9;
    }

    .register:hover {
        background-color: #1f618d;
    }

    footer {
        margin-top: 20px;
        font-size: 12px;
        color: #888;
    }
</style>

<script>
    function welcomeMsg() {
        console.log("Voter Management System Loaded");
    }
</script>

</head>

<body onload="welcomeMsg()">

<div class="container">
    <h1>Voter System</h1>
    <p>A secure and efficient way to manage voter records</p>

    <!-- LINKS -->
    <a href="login" class="btn login">Login</a>
    <a href="register" class="btn register">Register Voter</a>

    <footer>
        © 2026 Voter Management System
    </footer>
</div>

</body>
</html>