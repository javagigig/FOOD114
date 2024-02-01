<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        .container {
            width: 300px;
            margin: 0 auto;
            margin-top: 100px;
        }
        input[type="text"], input[type="password"] {
            width: 100%;
            padding: 10px;
            margin: 5px 0;
            box-sizing: border-box;
        }
    
        input[type="submit"]:hover {
            background-color: rgb(102, 2, 102);
        }

        input[type="submit"] {
            width: 100%;
            background-color: rgb(170, 125, 170);
            color: white;
            padding: 10px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            font-weight: bold;
            cursor: pointer;
        }

        h1 {
            text-align: center;
        }
        .join {
            color: grey;
            font-size: 15px;
            text-align: center;
        }
      
        input {
            accent-color: rgb(102, 2, 102);
        }
    </style>
</head>

<body>
	<%@ include file="dbconn.jsp" %>
<form action="user_login_view.jsp"  id="loginForm" onsubmit="return validateForm()">
    <div class="container">
        <h1>Login</h1>
        <div class="join">
        <input type="radio" name="radio"> 일반회원
        <input type="radio" name="radio"> 관리자
        </div>
        <br>
        	
            <label for="username"></label>
            <input type="text" id="userId" name="USERID" placeholder="아이디를 입력해주세요" required>

            <label for="password"></label>
            <input type="password" id="password" name="PASSWORD" placeholder="비밀번호를 입력해주세요" required>
			
			
            <input type="submit" value="Login">
    	</div>
     </form>
</body>
</html>
<script>

         function validateForm() {
            var userId = document.getElementById("USERID").value;
            var pwd = document.getElementById("PWSSWORD").value;

  
            if (userId === "" || pwd === "") {
                alert("Please fill in all fields");
                return false;
            }
            return true;
        }
        
       
</script>