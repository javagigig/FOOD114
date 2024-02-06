<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet" href="../css/user_delete.css">
<body>
	<%@ include file="dbconn.jsp"%>
	
	<%
		String userId = request.getParameter("userId");
	
		String sql
			= "DELETE FROM PSY_USER "
			+ "WHERE USERID = '" + userId + "'";
		
		int cnt = stmt.executeUpdate(sql);
		%>
		<div class="container">
		<div class="container-txt">
		<br>
		<%
		if(cnt > 0){
			out.println("삭제되었습니다.");
		}else{
			out.println("다시 시도해 주세요.");
		}
		%>
	
	<input type="submit" value="되돌아가기" onclick="history.back()">
	</div></div>
</body>
</html>