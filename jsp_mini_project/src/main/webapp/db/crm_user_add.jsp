<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고객 추가 페이지</title>
<style>
	
</style>
</head>
<body>
	<%@ include file="dbconn.jsp" %>

	<form action="crm_add_save.jsp" name="userAdd">
	<h3>고객 추가</h3>
	
	<div>아이디: <input name="userId"></div>
	<div>이름: <input name="name"></div>
	<div>이메일: <input name="email"></div>
	<div>휴대전화: <input name="phone"></div>
	<div>주소(ex.oo시): <input name="district"></div>
	<div>상세주소: <input name="city"></div>
	<div><input type="button" onclick="userSave()" value="저장하기"></div>
	</form>
	
</body>
</html>
<script>
	function userSave(){
		var user = document.userAdd;
		var userId = user.userId.value;
		var engNum = /^[a-zA-Z0-9]*$/;
	
		if(user.userId.value == "" || user.userId.value == null || user.userId.value == undefined){
			alert("아이디를 입력해주세요.");
			return;
		} 
		
		if(!engNum.test(userId)){
			  alert("아이디는 영문자 대소문자와 숫자로 만들어주세요.");
		    return true;
		}
			
		if(user.name.value == "" || user.name.value == null || user.name.value == undefined){
			alert("이름을 입력해 주세요.");
			return;
		}
		
		if(user.email.value == "" || user.email.value == null || user.email.value == undefined){
			alert("이메일을 입력해 주세요.");
			return;
		}
		
		if(user.phone.value == "" || user.phone.value == null){
			alert("전화번호를 입력해 주세요.");
			return;
		}

		if(user.city.value == "" || user.city.value == null){
			alert("주소를 입력해 주세요.");
			return;
		}
		
		if(user.district.value == "" || user.district.value == null){
			alert("상세주소를 입력해 주세요.");
			return;
		}
		
		user.submit();
	}
	
</script>