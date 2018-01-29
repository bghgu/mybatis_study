<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>로그인</title>
</head>
<body>
	<H1>로그인</H1>
	<!-- <form method="post">
		<div class="form-group">
			<label for="exampleInputEmail1">아이디</label> 
			<input type="text" class="form-control" name="id" placeholder="아이디를 입력하세요">
		</div>
		<div class="form-group">
			<label for="exampleInputPassword1">암호</label> 
			<input type="password" class="form-control" name="password" placeholder="암호">
		</div>
		<button type="submit" class="btn btn-default">제출</button>
	</form> -->
	
	<p><c:if test="${loginError}">아이디/비밀번호가 잘못되었습니다.</c:if></p>
	
	<form:form method="post" modelAttribute="User" action="/login-processing">
		<div class="field">
			<label for="id">아이디</label> 
			<!-- <input type="text" class="form-control" name="id" placeholder="아이디를 입력하세요"> -->
			<form:input path = "id" id = "id"/>
		</div>
		<div class="field">
			<label for="password">암호</label> 
			<!-- <input type="password" class="form-control" name="password" placeholder="암호"> -->
			<form:input path = "password" type = "password" id = "password"/>
		</div>
		<button type="submit" class="btn btn-default">제출</button>
	</form:form>
	<a class="btn btn-default" href="signup" role="button">SignUp</a>
</body>
</html>