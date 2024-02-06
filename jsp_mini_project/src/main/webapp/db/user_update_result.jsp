<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet" href="../css/user_update_result.css">
<body>
	<%@ include file="dbconn.jsp"%>
	
	<%

	 	/* String userId = (String)session.getAttribute("userId"); */
		String userId = request.getParameter("userId");
		String name = request.getParameter("name");
	 	String email = request.getParameter("email");
	 	String phone = request.getParameter("phone");
	 	String city = request.getParameter("city");
	 	String district = request.getParameter("district");
	 	String d_addless = request.getParameter("d_addless");
	 	
	 	String sql
		= "UPDATE PSY_USER SET "
		+ "NAME = '" + name + "',"
		+ "EMAIL = '" + email + "',"
		+ "PHONE = '" + phone + "',"
		+ "CITY = '" + city + "',"
		+ "DISTRICT = '" + district + "',"
		+ "DETAIL_ADDRESS = '" + d_addless + "' "
		+ "WHERE USERID = '" + userId + "'";
	 	
		stmt.executeUpdate(sql);
	%>
	<div class="container">
	<div class="container-txt">
	<br>
	<%
		out.println("수정되었습니다.");
	%>
	</div>
	<input type="submit" value="되돌아가기" onclick="history.back(),history.back()">
	</div>
	

</body>
</html>