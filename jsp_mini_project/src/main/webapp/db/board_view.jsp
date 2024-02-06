<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	table, tr, th {
		border : 1px solid black;
		padding : 5px 10px;
		border-collapse: collapse;
		text-align: center;
	}
	table {
		width : 800px;
	}
	td {
		width : 75%;
	}
	th {
		width : 25%;
		background-color: #eee;
	}
</style>
</head>
<body>
	<form name="boardView">
	<input name="commentNo" hidden>
	<%@ include file="dbconn.jsp"%>
	
	<%
		String boardNo = request.getParameter("boardNo"); 
		String sessionId = (String) session.getAttribute("userId");
		ResultSet rs = stmt.executeQuery(
			"SELECT * FROM TBL_COMMENT "
			+ "WHERE BOARDNO = " + boardNo
		);
		while(rs.next()){
			out.print("<div style='margin-bottom:5px;'>");
			out.print("<span style='font-weight:bold;'>" + rs.getString("USERID") + " : </span>");
			out.print("<span style='display : inline-block; width : 450px;'>" + rs.getString("CMT") + "</span>");
			out.print("<span>" + rs.getString("UDATETIME") + "</span>");
			out.print("<a href='#' onclick='cmtDelete(" + rs.getString("COMMENTNO") + "," + boardNo +")'>✖</a>");
		%>
		<!-- 업데이트 버튼, COMMENTNO를 같이 보냄 -->
		<a href="#" onclick="cmtUpdate('<%= rs.getString("CMT") %>', <%= rs.getString("COMMENTNO") %>)">✏</a>
		<%
			out.print("</div>");
		}
	%> 
	<div>
		<textarea name="comment" rows="4" cols="100"></textarea>
		<!-- 수정 버튼 추가 및 이름 부여 -->
		<input name="insertBtn" type="button" onclick="fnComment(<%= boardNo %>, '<%= sessionId %>', 'add')" value="댓글달기">
		<input name="updateBtn" style="display:none;" type="button" onclick="commUpdate()" value="수정하기"> 
	</div>
	
	
	</form>
</body>
</html>
<script>

	function cmtUpdate(comment, commentNo){
		var obj = document.boardView;
		obj.comment.value = comment;
		obj.updateBtn.style.display = "inline";
		obj.insertBtn.style.display = "none";
		obj.commentNo.value = commentNo;
	}
	
	function commUpdate(){
		var obj = document.boardView;
		var comment = obj.comment.value;
		var commentNo = obj.commentNo.value;
		location.href="comment_update.jsp?comment="+ comment+"&commentNo"+commentNo;
	}
</script>