<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	table, tr, td {
		border : 1px solid black;
		padding : 5px 10px;
		border-collapse: collapse;
		text-align: center;
	}
	th {
		background-color: #eee;
	}
	
</style>
</head>
<body>
	<%@ include file="dbconn.jsp"%>
	<%
		String sql = "SELECT * FROM TBL_MEMBER";
		ResultSet rs = stmt.executeQuery(sql);
	%>
	<!-- 	아이디	이름	핸드폰번호	성별	취미1	취미2	취미3 -->
	
	<table border="1">
		<tr>
			<th>아이디</th>
			<th>이름</th>
			<th>핸드폰번호</th>
			<th>성별</th>
			<th>취미1</th>
			<th>취미2</th>
			<th>취미3</th>
			<th>수정</th>
			<th>삭제</th>
			<th>비밀번호<br>초기화</th>
		</tr>
	<%
		while(rs.next()){
	%>	
		<tr>
			<td><%= rs.getString("USERID") %></td>
			<td><%= rs.getString("USERNAME") %></td>
			<td><%= rs.getString("PHONE") %></td>
			<td><%= rs.getString("GENDER") %></td>
			<td><%= rs.getString("HOBBY1") %></td>
			<td><%= rs.getString("HOBBY2") %></td>
			<td><%= rs.getString("HOBBY3") %></td>
			<td><input type="button" onclick="userUpdate('<%= rs.getString("USERID") %>')" value="수정"></td>
			<td><input type="button" onclick="userDelete('<%= rs.getString("USERID") %>')"" value="삭제"></td>
			<td>
				<%
					if(rs.getInt("CNT") >= 4){
				%>
				<input type="button" onclick="userInit('<%= rs.getString("USERID") %>')"" value="초기화">
				<%
					}
				%>
			</td>
		</tr>	
	<%
		}
	%>	
	</table>
</body>
</html>
<script>
	function userUpdate(userId){
		location.href="user_update.jsp?userId=" + userId;
	}
	
	function userDelete(userId){
		location.href="user_delete.jsp?userId=" + userId;
	}
	
	function userInit(userId){
		location.href="user_Init.jsp?userId=" + userId;
	}
</script>



