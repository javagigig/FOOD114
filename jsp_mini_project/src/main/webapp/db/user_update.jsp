<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="dbconn.jsp"%>
	<%
		String userId = request.getParameter("userId");
		String sql
			= "SELECT * FROM TBL_MEMBER "
			+ "WHERE USERID = '" + userId + "'";
		ResultSet rs = stmt.executeQuery(sql);
		rs.next();
	%>
	<form action="user_update_result.jsp">
		<input name="userId" value="<%= rs.getString("USERID")%>" hidden>
		<div>아이디: <input value="<%= rs.getString("USERID")%>" disabled></div>
		<div>이름: <input name="userName" value="<%= rs.getString("USERNAME")%>"></div>
		<div>핸드폰번호: <input name="phone" value="<%= rs.getString("phone")%>"></div>
		<div>성별:
		<%
			if(rs.getString("GENDER").equals("남성")){
		%>
			<label><input type="radio" name="gender" value="남성" checked>남성</label>
			<label><input type="radio" name="gender" value="여성">여성</label>
		<%
			}else{
		%>
			<label><input type="radio" name="gender" value="남성">남성</label>
			<label><input type="radio" name="gender" value="여성" checked>여성</label>
		<%
			}
		 %>
		 <div>
		 운동<input name="hobby1" value="<%= rs.getString("HOBBY1")%>" type="checkbox">
		 독서<input name="hobby2" value="<%= rs.getString("HOBBY2")%>" type="checkbox">
		 영화<input name="hobby3" value="<%= rs.getString("HOBBY3")%>" type="checkbox">
		 </div>
		 <div><input type="submit" value="수정하기"></div>
	</form>

</body>
</html>