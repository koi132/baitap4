<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quên mật khẩu</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f2f2f2;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
	margin: 0;
}

.container {
	background-color: white;
	padding: 20px;
	border-radius: 8px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	width: 300px;
}

h3.alert {
	color: red;
	text-align: center;
}

label {
	font-weight: bold;
	margin-top: 10px;
}

input[type="text"], input[type="password"] {
	width: 100%;
	padding: 10px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
}

button {
	background-color: #4CAF50;
	color: white;
	padding: 12px 20px;
	margin: 10px 0;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	width: 100%;
	font-size: 16px;
}

button:hover {
	background-color: #45a049;
}

.cancelbtn {
	background-color: red;
	width: 100%;
}

.psw a {
	color: #333;
	text-decoration: none;
	float: right;
}

.psw a:hover {
	color: #4CAF50;
}

.psw {
	display: flex;
	justify-content: right; /* Căn giữa */
	align-items: center;
}

.checkbox-container {
	margin-top: 20px;
}

.checkbox-container label {
	font-size: 14px;
}
</style>
</head>
<body>
	<div class="container">
		<form action="/ltweb/forgot-password" method="post">
			<c:if test="${alert !=null}">
				<h3 class="alert alert-danger">${alert}</h3>
			</c:if>
			<label for="uname">Username</label> 
			<input type="text" placeholder="Enter Username" name="name" required> 
				
			<label for="psw">Password</label> 
			<input type="password" placeholder="Enter Password" name="pass" required>

			<button type="submit">Change</button>
		</form>
	</div>
</body>
</html>