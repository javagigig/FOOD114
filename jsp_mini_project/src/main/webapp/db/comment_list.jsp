<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form name="commPop">
	<%@ include file="dbconn.jsp"%>
	<%
		String boardNo = request.getParameter("boardNo");
		String sql = "SELECT * FROM TBL_COMMENT"
					+ " WHERE BOARDNO = " + boardNo;
		String userId = (String)session.getAttribute("userId");
		
		ResultSet rs = stmt.executeQuery(sql);
		while(rs.next()){
		%>
			<div>
				<span><%= rs.getString("USERID") %> : </span>
				<span><%= rs.getString("CMT") %></span>
				<input 
				style="font-size: xx-small;"
				type="button" 
				value="삭제"
				onclick="commentDelete(<%=rs.getString("commentNo")%>, <%= boardNo %>)"
				>
				
				<input 
				style="font-size: xx-small;"
				name="inserBtn"
				type="button" 
				value="댓글저장"
				onclick="commentUpdate('<%=rs.getString("CMT")%>')"
				>
				
				<input 
				style="display : none;"
				name="updateBtn"
				type="button" 
				value="댓글수정"
				onclick="commentSave(<%= boardNo%>)"
				>
			</div>
		
		<%
			};
		%>
		
		<hr>
		<div>
		<textarea name="comment" rows="3" cols="30"></textarea>
		<input name="inserBtn" type="button" value="댓글저장" onclick="commAdd(<%= boardNo %>, '<%= userId %>')">
		</div>
		</form>
</body>
</html>

<script>
	function commAdd(boardNo, userId){
		var form = document.commPop;
		var comment = form.comment.value;
		location.href 
			= "comment_add.jsp?boardNo="+boardNo
			+ "&comment="+ comment
			+ "&userId=" + userId
	}
	
	function commentDelete(commentNo, boardNo){
		if(confirm("정말 삭제 할까요?")){
			location.href 
			= "comment_delete.jsp?boardNo="+boardNo
			+ "&commentNo="+ commentNo;
		}
	
		function commentUpdate(comment){
			var form = document.commPop;
			form.comment.value = comment;
			form.insertBtn.style.display ="none";
			form.insertBtn.style.display ="inline";
		}
			
		
	}
</script>