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
    background: linear-gradient(to right, #74ebd5, #ACB6E5);
    height: 100vh;
    display: flex;
    justify-content: center;
    align-items: center;
}

.container{
    width: 450px;
    background: white;
    padding: 25px;
    border-radius: 10px;
    box-shadow: 0 0 15px rgba(0,0,0,0.2);
}

h2{
    text-align: center;
    margin-bottom: 20px;
}

input, select, textarea{
    width: 100%;
    padding: 10px;
    margin: 8px 0;
    border: 1px solid #ccc;
    border-radius: 5px;
}

button{
    width: 100%;
    padding: 12px;
    background: green;
    color: white;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    font-size: 16px;
}

button:hover{
    background: darkgreen;
}

</style>

<script>
function validateForm(){
    let name = document.getElementById("name").value;
    let age = document.getElementById("age").value;

    if(name === ""){
        alert("Name is required");
        return false;
    }

    if(age < 18){
        alert("Age must be 18 or above");
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

    <input type="text" id="name" name="name" placeholder="Full Name" required>

    <input type="number" id="age" name="age" placeholder="Age" required>

    <select name="gender" required>
        <option value="">Select Gender</option>
        <option>Male</option>
        <option>Female</option>
        <option>Other</option>
    </select>

    <input type="email" name="email" placeholder="Email" required>

    <input type="text" name="mobile" placeholder="Mobile" required>

    <textarea name="address" placeholder="Address" required></textarea>

    <input type="text" name="username" placeholder="Username" required>

    <input type="password" name="password" placeholder="Password" required>

    <button type="submit">Register</button>

</form>

</div>

</body>
</html>