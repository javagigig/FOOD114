<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    <link rel="stylesheet" href="../css/style.css">
</head>
<body>
    <%@ include file="dbconn.jsp" %>
    <form action="login_result.jsp" name="login" method="post"> <!-- 수정: 로그인 결과 페이지로 이동하도록 변경 -->
        <div class="container">
            <h1>Login</h1>
            <div class="join">
                <label><input type="radio" id="user" name="status" checked> 일반회원</label>
                <label><input type="radio" id="admin" name="status"> 관리자</label>
            </div>
            <br>
            <label for="userId">         
                <input type="text" id="userId" name="USERID" placeholder="아이디를 입력해주세요" required> <!-- 수정: name 속성 변경 -->
            </label>        
            <label for="password">
                <input type="password" id="password" name="PASSWORD" placeholder="비밀번호를 입력해주세요" required> <!-- 수정: name 속성 변경 -->
            </label>
            <input type="submit" value="Login"> <!-- 수정: onclick 이벤트 제거 -->
        </div>
    </form>
</body>
</html>
