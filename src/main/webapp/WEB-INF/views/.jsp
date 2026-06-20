<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register Voter</title>

<style>

body{
    font-family: Arial;
    background:#eef2f3;
}

.container{
    width:500px;
    margin:30px auto;
    background:white;
    padding:25px;
    border-radius:10px;
    box-shadow:0 0 10px gray;
}

h2{
    text-align:center;
    margin-bottom:20px;
}

input, select, textarea{
    width:100%;
    padding:10px;
    margin:8px 0;
    border:1px solid #ccc;
    border-radius:5px;
}

button{
    width:100%;
    padding:12px;
    background:green;
    color:white;
    border:none;
    border-radius:5px;
}

button:hover{
    background:darkgreen;
}

.error{
    color:red;
    text-align:center;
}

</style>

<script>

function validateForm(){

    let name = document.getElementById("name").value;
    let age = document.getElementById("age").value;

    if(name == ""){
        alert("Name required");
        return false;
    }

    if(age < 18){
        alert("Age must be 18+");
        return false;
    }

    return true;
}

</script>

</head>

<body>

<div class="container">

<h2>Register Voter</h2>

<form action="saveVoter" method="post" onsubmit="return validateForm()">

<input type="text" id="name" name="name" placeholder="Name">

<input type="number" id="age" name="age" placeholder="Age">

<select name="gender">
    <option>Male</option>
    <option>Female</option>
    <option>Other</option>
</select>

<input type="email" name="email" placeholder="Email">

<input type="text" name="mobile" placeholder="Mobile">

<textarea name="address" placeholder="Address"></textarea>

<input type="text" name="username" placeholder="username">

<input type="password" name="password" placeholder="password">

<button type="submit">Register</button>

</form>

</div>

</body>
</html>