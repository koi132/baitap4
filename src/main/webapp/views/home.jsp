<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>trang chủ của user</h1>
	
	<form action="${pageContext.request.contextPath}/logout" method="post">
        <button type="submit">Đăng xuất</button>
    </form>
</body>
</html>