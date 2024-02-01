<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>회원가입</h3>
	<form action="user_join_save.jsp" name="join">
	<div>아이디: <input name="userId"></div>
	<div>비밀번호: <input name="pwd" type="password"></div>
	<div>이름: <input name="userName"></div>
	<div>성별: <label><input type="radio" name="gender" value="남성"  checked>남성</label>
	<label><input type="radio" name="gender" value="여성">여성</label></div>
	<div><input type="submit" value="가입하기"></div>
	</form>
</body>
</html>