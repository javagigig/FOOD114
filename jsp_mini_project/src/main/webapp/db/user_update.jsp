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
			= "SELECT * FROM PSY_USER "
			+ "WHERE USERID = '" + userId + "'";
		ResultSet rs = stmt.executeQuery(sql);
		rs.next();
	%>
	<form action="user_update_result.jsp">
		<input name="userId" value="<%= rs.getString("USERID")%>" hidden>
		<div>아이디: <input value="<%= rs.getString("USERID")%>" disabled></div>
		<div>이름: <input name="name" value="<%= rs.getString("NAME")%>"></div>
		<div>이메일: <input name="email" value="<%= rs.getString("EMAIL")%>"></div>
		<div>핸드폰번호: <input name="phone" value="<%= rs.getString("PHONE")%>"></div>
		<div>주소1<input name="city" value="<%= rs.getString("CITY")%>"></div>
		<div>주소2<input name="district" value="<%= rs.getString("DISTRICT")%>"></div>
		<div>주소3<input name="d_addless" value="<%= rs.getString("DETAIL_ADDRESS")%>"></div>
	
		 <div><input type="submit" value="수정하기"></div>
	</form>

</body>
</html>