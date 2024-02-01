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
		String id = request.getParameter("id");
	
		String sql
			= "DELETE FROM TBL_MEMBER "
			+ "WHERE USERID = '" + id + "'";
		
		int cnt = stmt.executeUpdate(sql);
		
		if(cnt > 0){
			out.println("삭제되었습니다.");
		}else{
			out.println("다시 시도해 주세요!");
		}
	
	%>

</body>
</html>