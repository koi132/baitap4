<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>đăng ký</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
/* Flexbox để căn giữa nội dung theo cả hai trục */
body, html {
	height: 100%;
	margin: 0;
	display: flex;
	justify-content: center; /* Căn giữa theo chiều ngang */
	align-items: center; /* Căn giữa theo chiều dọc */
	background-color: #f5f5f5; /* Màu nền nhẹ */
}

.container {
	background-color: white; /* Màu nền cho form */
	padding: 50px;
	border-radius: 8px; /* Góc bo tròn */
	box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.1); /* Đổ bóng */
	width: 100%;
	max-width: 400px; /* Đảm bảo form không quá rộng */
}
</style>
</head>
<body>
	<form action="/ltweb/register" method="post" class="container mt-4">
		<c:if test="${alert !=null}">
			<h3 class="alert alert-danger">${alert}</h3>
		</c:if>

		<div class="form-group">
			<label>Email</label>
			<div class="input-group">
				<span class="input-group-addon"><i class="fa fa-envelope"></i></span>
				<input type="text" placeholder="Email" name="email"
					class="form-control" required>
			</div>
		</div>

		<div class="form-group">
			<label>Tài khoản</label>
			<div class="input-group">
				<span class="input-group-addon"><i class="fa fa-user"></i></span> <input
					type="text" placeholder="Tài khoản" name="username"
					class="form-control" required>
			</div>
		</div>

		<div class="form-group">
			<label>Họ và tên</label>
			<div class="input-group">
				<span class="input-group-addon"><i class="fa fa-user"></i></span> <input
					type="text" placeholder="Họ và tên" name="fullname"
					class="form-control" required>
			</div>
		</div>

		<div class="form-group">
			<label>Mật khẩu</label>
			<div class="input-group">
				<span class="input-group-addon"><i class="fa fa-lock"></i></span> <input
					type="text" placeholder="Mật khẩu" name="password"
					class="form-control" required>
			</div>
		</div>

		<div class="form-group">
			<label>Số điện thoại</label>
			<div class="input-group">
				<span class="input-group-addon"><i class="fa fa-phone"></i></span> <input
					type="text" placeholder="Số điện thoại" name="phone"
					class="form-control" required>
			</div>
		</div>

		<button type="submit" class="btn btn-primary btn-block"
			onclick="window.location.href='/ltweb/views/register-success.jsp'; return false;">Register</button>
		<button type="button" class="btn btn-danger btn-block"
			onclick="window.location.href='/ltweb/views/login.jsp'; return false;">Cancel</button>

	</form>
</body>
</html>