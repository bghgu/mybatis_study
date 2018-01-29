<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
<title>스터디</title>
</head>
<body>

	<form:form method="post" modelAttribute="User">
		<div class="field">
			<label for="id">아이디</label> 
			<form:input path = "id" id = "id"/>
		</div>
		<div class="field">
			<label for="name">이름</label> 
			<form:input path="name" type="text" id="name"/>
		</div>
		<div class="field">
			<label for="password">암호</label> 
			<form:input path = "password" type = "password" id = "password"/>
		</div>
		<button type="submit" class="btn btn-default">제출</button>
	</form:form>
	
</body>
</html>