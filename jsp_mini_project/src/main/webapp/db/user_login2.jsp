<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
</head>
<link rel="stylesheet" href="../css/style.css">
<body>
	<%@ include file="dbconn.jsp" %>
	<form action="user_login_view.jsp"  name="login">
    <div class="container">
        <h1>Login</h1>
        <div class="join">
       
        <label><input type="radio" id="user" name="status" checked> 일반회원</label>
        <label><input type="radio" id="admin" name="status"> 관리자</label>
        </div>
        <br>
          <label for="username">         
          <input type="text" id="userId" name="id" placeholder="아이디를 입력해주세요" required></label>        
          <label for="password">
          <input type="password" id="password" name="pwd" placeholder="비밀번호를 입력해주세요" required></label>
	      <input type="submit" value="Login" onclick="fnLogin()">
     </form>
</body>
</html>
<script>

		function fnLogin(){
			var form = document.login;
			var loginFlg = document.querySelector("#user").checked;
			if(loginFlg){
				// 일반 유저 로그인 페이지
				// ex
				form.action="main.jsp";
			} else {
				// 관리자 로그인 페이지
				// ex
				form.action="crm_login_page.jsp";
			}
			form.submit();
		}
         
         
       /*   function validateForm() {
             var userId = document.getElementById("USERID").value;
             var pwd = document.getElementById("PWSSWORD").value;

   
             if (userId === "" || pwd === "") {
                 alert("Please fill in all fields");
                 return false;
             }
             return true;
         } */
        
       
</script>