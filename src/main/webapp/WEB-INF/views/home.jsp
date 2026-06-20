<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home - Voter Management System</title>

<style>

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family: Arial, sans-serif;
}

body{
    background:#f4f6f9;
}

.header{
    background: linear-gradient(to right, #1e3c72, #2a5298);
    color:white;
    padding:20px;
    text-align:center;
}

.container{
    width:80%;
    margin:40px auto;
    display:grid;
    grid-template-columns: repeat(3, 1fr);
    gap:20px;
}

.card{
    background:white;
    padding:20px;
    text-align:center;
    border-radius:10px;
    box-shadow:0 0 10px rgba(0,0,0,0.1);
    transition:0.3s;
}

.card:hover{
    transform:scale(1.05);
}

.card a{
    text-decoration:none;
    display:block;
    margin-top:10px;
    padding:10px;
    background:#28a745;
    color:white;
    border-radius:5px;
}

.logout{
    margin-top:30px;
    text-align:center;
}

.logout a{
    text-decoration:none;
    background:red;
    color:white;
    padding:10px 20px;
    border-radius:5px;
}

</style>

</head>

<body>

<div class="header">
    <h1>Voter Management System</h1>
    <p>Welcome to Admin Dashboard</p>
</div>

<div class="container">

    <div class="card">
        <h3>View All Voters</h3>
        <a href="viewAllVoters">Open</a>
    </div>

    <div class="card">
    <h3>Update Voter</h3>
    <a href="viewAllVoters">Go to List & Update</a>
</div>

<div class="card">
    <h3>Delete Voter</h3>
    <a href="viewAllVoters">Go to List & Delete</a>
</div>

    <div class="card">
        <h3>Logout</h3>
        <a href="/">Logout</a>
    </div>

</div>

</body>
</html>