<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet" href="../css/m_user.css">
<body>
	<%@ include file="dbconn.jsp" %>
	
	<%
		/* out.println(session.getAttribute("userId"));   ==> null 값 나옴*/
		String sql = "SELECT * FROM PSY_USER";
		String keyword = request.getParameter("keyword");
		if(keyword != null){	
			sql += " WHERE NAME LIKE '%" + keyword + "%'"
					+ " OR USERID LIKE '%" + keyword + "%'"
					;
			
		}else{keyword="";}
		
		ResultSet rs = stmt.executeQuery(sql);
	%>
	
	<form name="m_user">
		<div class="search"> 검색어: 
			<input type="text" name="keyword" value="<%= keyword %>">
			<input type="submit" value="회원검색" onclick="search()">
		</div>
	<table border="1">
		<tr>
			<th>아이디</th>
			<th>이름</th>
			<th>이메일</th>
			<th>핸드폰</th>
			<th>주소1</th>
			<th>주소2</th>
			<th>주소3</th>
			<th>생일</th>
			<th>성별</th>
			<th>등급</th>
			<th>포인트</th>
			<th>휴면여부</th>
			<th>회원정보 수정</th>
			<th>회원정보 삭제</th>
			<th>회원정보 초기화</th>
		</tr>
	<%
		while(rs.next()){
	%>	
		<tr>
			<td><%= rs.getString("USERID") %></td>
			<td><%= rs.getString("NAME") %></td>
			<td><%= rs.getString("EMAIL") %></td>
			<td><%= rs.getString("PHONE") %></td>
			<td><%= rs.getString("CITY") %></td>
			<td><%= rs.getString("DISTRICT") %></td>
			<td><%= rs.getString("DETAIL_ADDRESS") %></td>
			<td><%= rs.getString("BIRTH") %></td>
			<td><%= rs.getString("GENDER") %></td>
			<td><%= rs.getString("GRADE") %></td>
			<td><%= rs.getString("POINT") %></td>
			<td><%= rs.getString("STATUS") %></td>
			<td><input type="button" onclick="userUpdate('<%= rs.getString("USERID") %>')" value="수정"></td>
			<td><input type="button" onclick="userDelete('<%= rs.getString("USERID") %>')" value="삭제"></td>
			<td>
				<%
					if(rs.getInt("CNT") >= 4){
				%>
				<input type="button" onclick="userInit('<%= rs.getString("USERID") %>')" value="초기화">
				<%
					}
				%>
			</td>
		</tr>	
	<%
		}
	%>	
	</table>
	<input type="submit" value="회원추가" formaction="crm_user_add.jsp">
</body>
</html>
<script>
	function userUpdate(userId){
		if(confirm("정말 수정할까요?")){
			location.href="user_update.jsp?userId=" + userId;
		}else{
			return;
		}
	}
	
	function userDelete(userId){
		if(confirm("정말 삭제할까요?")){
			location.href="user_delete.jsp?userId=" + userId;
		} else{
			return;
		}
	}
	
	function userInit(userId){
		location.href="user_Init.jsp?userId=" + userId;
	}
	
	var user = document.m_user;
	function search() {
		location.href = "m_user.jsp?keyword=" + user.keyword.value;
	}

</script>



