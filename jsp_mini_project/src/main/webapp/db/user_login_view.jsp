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
		String userId = request.getParameter("USERID");
		String pwd = request.getParameter("PASSWORD");
		
		String sql 
			= "SELECT * FROM PSY_USER "
			+ "WHERE USERID = '" 
			+ userId + "' AND PASSWORD = '"
			+ pwd + "'";
		ResultSet rs = stmt.executeQuery(sql);
		
		if(rs.next()){
			if(rs.getInt("CNT") >= 4){
				out.println("비밀번호 5번 이상 실패! 관리자 문의 하세요");
			} else {
				out.println("로그인 성공!");
				sql = "UPDATE PSY_USER SET "
						+ "CNT = 0 "
						+ "WHERE USERID = '" + userId + "'";
				stmt.executeUpdate(sql);
		%>
			<form name="userInfo" action="user_update.jsp">
				<div>
					<input name="userId" value="<%= userId %>" hidden>
					<input type="submit" value="회원정보 수정" formaction="user_update.jsp">
					<input type="submit" value="회원 삭제" formaction="user_delete.jsp">
				</div>
			</form>
		<%
			}
		} else {		
			String idSql 
				= "SELECT * FROM PSY_USER "
				+ "WHERE USERID = '" + userId + "'";
			ResultSet rsId = stmt.executeQuery(idSql);
			if(rsId.next()){
				// 1. 아이디는 있는데 패스워드가 다를 경우
				int cnt = rsId.getInt("CNT");
				if((cnt+1) >= 5){
					out.println("5번 이상 실패! 관리자 문의 하셈");
				} else {
					out.println((cnt+1) + "번 실패!");
					stmt.executeUpdate(
						"UPDATE PSY_USER SET "
						+ "CNT = CNT+1 "
						+ "WHERE USERID = '" + userId + "'"
					);
				}
			} else {
				// 2. 아이디가 없는 경우
				out.println("아이디를 확인해주세요!");
			}
			
	%>
		<input type="button" value="되돌아가기" onclick="history.back()">
	<%
		}
	%>
</body>
</html>
<script>
	function btn(txt){
		var userInfo = document.userInfo;
		if(txt == "u"){
			userInfo.action = "user_update.jsp";
		} else {
			userInfo.action = "user_delete.jsp";
		}
		userInfo.submit();
	}
</script>




