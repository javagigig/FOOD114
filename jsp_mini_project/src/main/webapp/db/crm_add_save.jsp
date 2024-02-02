<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="dbconn.jsp" %>
		<%
		String userId = request.getParameter("userId");
	 	String name = request.getParameter("name");
	 	String email = request.getParameter("email");
	 	String phone = request.getParameter("phone");
	 	String city = request.getParameter("city");
	 	String district = request.getParameter("district");
	 	
	 
		String sql
			= "INSERT INTO PSY_USER(USERID, NAME, EMAIL, PHONE, CITY, DISTRICT) "
			+ "VALUES('"
			+ userId + "', '"
			+ name + "', '"
			+ email + "', '"
			+ phone + "', '"
			+ city + "', '"
			+ district + "')";
		
		stmt.executeUpdate(sql);
	%>
</body>
</html>
<script>

	// alert("저장되었습니다.");
	location.href="m_user.jsp";
</script>