<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Voter</title>

<style>
body{
    font-family: Arial;
    background:#eef2f3;
}

.container{
    width:500px;
    margin:30px auto;
    background:white;
    padding:20px;
    border-radius:10px;
    box-shadow:0 0 10px gray;
}

input, textarea{
    width:100%;
    padding:10px;
    margin:8px 0;
}
button{
    width:100%;
    padding:10px;
    background:orange;
    border:none;
    color:white;
}
</style>

</head>

<body>

<div class="container">

<h2>Update Voter</h2>

<form action="updateVoter" method="post">

<input type="hidden" name="voterId" value="${voter.voterId}">

<input type="text" name="name" value="${voter.name}" required>

<input type="number" name="age" value="${voter.age}" required>

<input type="text" name="gender" value="${voter.gender}">

<input type="email" name="email" value="${voter.email}" required>

<input type="text" name="mobile" value="${voter.mobile}" required>

<textarea name="address">${voter.address}</textarea>

<button type="submit">Update</button>

</form>

</div>




</body>
</html>