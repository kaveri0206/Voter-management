<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Voters</title>

<style>
body{
    font-family: Arial;
    background:#f4f4f4;
}

.container{
    width:80%;
    margin:30px auto;
    background:white;
    padding:20px;
}

table{
    width:100%;
    border-collapse: collapse;
}

th, td{
    border:1px solid #ccc;
    padding:10px;
    text-align:center;
}

th{
    background:navy;
    color:white;
}
</style>

</head>

<body>

<div class="container">

<h2>All Voters</h2>

<table>

<tr>
    <th>ID</th>
    <th>Name</th>
    <th>Age</th>
    <th>Gender</th>
    <th>Email</th>
    <th>Mobile</th>
    <th>Address</th>
    <th>Actions</th>
</tr>

<c:forEach var="v" items="${voters}">
<tr>
    <td>${v.voterId}</td>
    <td>${v.name}</td>
    <td>${v.age}</td>
    <td>${v.gender}</td>
    <td>${v.email}</td>
    <td>${v.mobile}</td>
    <td>${v.address}</td>

    <td>
        <a href="updateVoter?id=${v.voterId}">Edit</a> |
        <a href="deleteVoter?id=${v.voterId}" onclick="return confirm('Are you sure?')">Delete</a>
    </td>
</tr>
</c:forEach>

</table>

</div>

</body>
</html>