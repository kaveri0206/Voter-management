<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Voter Management System - Login</title>

<style>

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family: Arial, sans-serif;
}

body{
    background: linear-gradient(to right, #4facfe, #00f2fe);
    height:100vh;
    display:flex;
    justify-content:center;
    align-items:center;
}

.login-container{
    background:white;
    width:400px;
    padding:30px;
    border-radius:10px;
    box-shadow:0px 0px 15px rgba(0,0,0,0.3);
}

h2{
    text-align:center;
    margin-bottom:25px;
    color:#333;
}

.form-group{
    margin-bottom:15px;
}

label{
    display:block;
    margin-bottom:5px;
    font-weight:bold;
}

input{
    width:100%;
    padding:10px;
    border:1px solid #ccc;
    border-radius:5px;
}

button{
    width:100%;
    padding:12px;
    background-color:#28a745;
    color:white;
    border:none;
    border-radius:5px;
    font-size:16px;
    cursor:pointer;
}

button:hover{
    background-color:#218838;
}

.error{
    color:red;
    text-align:center;
    margin-bottom:15px;
}

.footer{
    text-align:center;
    margin-top:15px;
}

.footer a{
    text-decoration:none;
    color:blue;
}

</style>

<script>

function validateLogin(){

    let username =
        document.getElementById("username").value.trim();

    let password =
        document.getElementById("password").value.trim();

    if(username==""){
        alert("Username is required");
        return false;
    }

    if(password==""){
        alert("Password is required");
        return false;
    }

    return true;
}

</script>

</head>
<body>

<div class="login-container">

    <h2>Voter Login</h2>

    <% if(request.getAttribute("msg") != null){ %>
        <div class="error">
            <%= request.getAttribute("msg") %>
        </div>
    <% } %>

    <form action="login" method="post"
          onsubmit="return validateLogin()">

        <div class="form-group">
            <label>Username</label>
            <input type="text"
                   id="username"
                   name="username"
                   placeholder="Enter Username">
        </div>

        <div class="form-group">
            <label>Password</label>
            <input type="password"
                   id="password"
                   name="password"
                   placeholder="Enter Password">
        </div>

        <button type="submit">Login</button>

    </form>

    <div class="footer">
        New Voter?
        <a href="register">Register Here</a>
    </div>

</div>

</body>
</html>