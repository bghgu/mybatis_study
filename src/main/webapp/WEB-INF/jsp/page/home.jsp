<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>스터디</title>
</head>
<body>
	<h1>home</h1>
	<h1>아이디 : ${user.id}</h1>
	<h1>이름 : ${user.name}</h1>
	<h1>비밀번호 : ${user.password}</h1>
	<a class="btn btn-default" href="logout" role="button">logout</a>
</body>
</html>