<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
</head>
<link rel="stylesheet" href="../css/user_login.css">
<body>
    <%@ include file="dbconn.jsp" %>
    <form action="user_login_view.jsp" name="login">
        <div class="container">
            <h1>Login</h1>
            <div class="join">
                <label><input type="radio" id="user" name="status" checked> 일반회원</label>
                <label><input type="radio" id="admin" name="status"> 관리자</label>
            </div>
            <br>
            <label for="userId">         
                <input type="text" id="userId" name="id" placeholder="아이디를 입력해주세요" required>
            </label>        
            <label for="password">
                <input type="password" id="password" name="pwd" placeholder="비밀번호를 입력해주세요" required>
            </label>
            <input type="submit" value="Login" onclick="fnLogin()">
        </div>
    </form>

    <script>
        function fnLogin() {
            var form = document.login;
            var loginFlg = document.querySelector('input[name="status"]:checked').id;
            var userId = form.id.value;
            var password = form.pwd.value;

            if (loginFlg === "user" && userId === "user1" && password === "pw1234") {
                form.action = "main.jsp"; // 일반 유저 로그인 페이지
            } else if (loginFlg === "admin" && userId === "admin" && password === "admin") {
                form.action = "crm_login_page.jsp"; // 관리자 로그인 페이지
            } else {
                alert("아이디 또는 비밀번호가 올바르지 않습니다.");
                return false;
            }
            // 폼 전송
            form.submit();
        }
    </script>
</body>
</html>
