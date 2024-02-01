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
		String title = request.getParameter("title");
	 	String contents = request.getParameter("contents");
	 	String userId = (String)session.getAttribute("userId");
		
		
		String sql
			= "UPDATE TBL_MEMBER SET "
					+ "BBS_SEQ.NEXTVAL, "	// BOARDNO
		 			+ "'" + title + "',"	// TITLE
				 	+ "'" + contents + "',"	// CONTENTS
				 	+ "0,"					// HIT
				 	+ "'" + userId + "',"	// USERID
				 	+ "2,"					// KIND
				 	+ "SYSDATE,"			// CDATETIME
				 	+ "SYSDATE)"				// UDATETIME
				 	;
		 	stmt.executeUpdate(sql);
		
		out.println("수정되었습니다.");
	%>

</body>
</html>