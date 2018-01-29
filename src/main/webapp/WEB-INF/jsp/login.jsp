<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<!-- �������� �ּ�ȭ�� �ֽ� CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- �ΰ����� �׸� -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!-- �������� �ּ�ȭ�� �ֽ� �ڹٽ�ũ��Ʈ -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>�α���</title>
</head>
<body>
	<H1>�α���</H1>
	<!-- <form method="post">
		<div class="form-group">
			<label for="exampleInputEmail1">���̵�</label> 
			<input type="text" class="form-control" name="id" placeholder="���̵� �Է��ϼ���">
		</div>
		<div class="form-group">
			<label for="exampleInputPassword1">��ȣ</label> 
			<input type="password" class="form-control" name="password" placeholder="��ȣ">
		</div>
		<button type="submit" class="btn btn-default">����</button>
	</form> -->
	
	<p><c:if test="${loginError}">���̵�/��й�ȣ�� �߸��Ǿ����ϴ�.</c:if></p>
	
	<form:form method="post" modelAttribute="User" action="/login-processing">
		<div class="field">
			<label for="id">���̵�</label> 
			<!-- <input type="text" class="form-control" name="id" placeholder="���̵� �Է��ϼ���"> -->
			<form:input path = "id" id = "id"/>
		</div>
		<div class="field">
			<label for="password">��ȣ</label> 
			<!-- <input type="password" class="form-control" name="password" placeholder="��ȣ"> -->
			<form:input path = "password" type = "password" id = "password"/>
		</div>
		<button type="submit" class="btn btn-default">����</button>
	</form:form>
	<a class="btn btn-default" href="signup" role="button">SignUp</a>
</body>
</html>