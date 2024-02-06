<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원가입</title>
</head>
<link rel="stylesheet" href="../css/login.css">
<body>
	<%@ include file="dbconn.jsp"%>
    <div class="container">
        <h2>회 원 가 입</h2>
        <h6 style="text-align: right;"><span style="color: red;">* </span>필수입력사항
        <hr style="border: solid 1px black;"></h6>
    
        <br>
        <form action="crm_user_add2.jsp" id="membershipForm" onsubmit="return submitForm()">
            <label for="userId"><div class="test">아이디<span style="color: red;">*</span></div>
            <input type="text" id="userId" name="userId" placeholder="아이디를 입력해주세요" required>
            <input type="button" id="userIdCheck" name="userId" value="중복확인"></label>

            <label for="password"><div class="test">비밀번호<span style="color: red;">*</span></div>
            <input type="password" id="password" name="password" placeholder="비밀번호를 입력해 주세요" required></label>

            <label for="passwordCheck"><div class="test">비밀번호 확인<span style="color: red;">*</span></div>
            <input type="password" id="passwordCheck" name="passwordCheck" placeholder="비밀번호를 한 번 더 입력해 주세요" required></label>

            <label for="name"><div class="test">이름<span style="color: red;">*</span></div>
            <input type="text" id="name" name="name" placeholder="이름을 입력해 주세요" required></label>

            <label for="email"><div class="test">이메일<span style="color: red;">*</span></div>
            <input type="email" id="email" name="email" placeholder="예: theJoeun@joeun.com" required></label>

            <label for="phone"><div class="test">휴대폰<span style="color: red;">*</span></div>
            <input type="text" id="phone" name="phone" placeholder="숫자만 입력해 주세요" required></label>

            <label for="address"><div class="test">주소<span style="color: red;">*</span></div>
            <input type="text" id="address" name="address" placeholder="주소를 입력해 주세요" required></label>
            
                        <label for="birth"><div class="test">생년월일</div>
                        <input type="text" id="birth" name="birth" placeholder="YYYY  |  MM  |  DD" required></label>

            <label for="gender"><div class="test">성별</div>
            <input type="radio" id="gender" name="gender" required checked>남자
            <input type="radio" id="gender" name="gender" required>여자</label>
            <br>
            <hr>
            <label>
                <div class="test2">이용약관 동의<span style="color: red;">*</span><br></div>
                    <br>
                    <div class="eventyn" style="font-size: 17px; font-weight: bold; color: rgb(49, 49, 49);"><input type="checkbox">전체 동의합니다.</div>
                    <div class="eventyn"><input type="checkbox"> 이용약관 동의(필수)</div>
                    <div class="eventyn"><input type="checkbox"> 개인정보 수집·이용 동의(필수)</div>
                    <div class="eventyn"><input type="checkbox">개인정보 수집·이용 동의(선택)</div>
                    <div class="eventyn"><input type="checkbox">무료배송, 할인쿠폰 등 혜택/정보 수신동의(선택)</div>
                    <div class="eventyn"><input type="checkbox">본인은 만 14세 이상입니다.(필수)</div>
                    <br><br>
          
            <div><input type="submit" value="가입하기"></div>
        </form>
    </div>
</body>
</html>
    <script>
        function submitForm() {
            var fullname = document.getElementById("fullname").value;
            var email = document.getElementById("email").value;
            var password = document.getElementById("password").value;

          
            console.log("Full Name:", fullname);
            console.log("Email:", email);
            console.log("Password:", password);

            return false;
        }
    </script>