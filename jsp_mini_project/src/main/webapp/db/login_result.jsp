<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="dbconn.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Result</title>
</head>
<body>
   
    <%
        String userId = request.getParameter("USERID");
        String pwd = request.getParameter("PASSWORD");
        
        // Prepared statement 사용 추천
        String sql = "SELECT * FROM PSY_USER WHERE USERID = ? AND PASSWORD = ?";
        PreparedStatement pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, userId);
        pstmt.setString(2, pwd);
        
        ResultSet rs = pstmt.executeQuery();
        
        if(rs.next()){
            int loginAttempts = rs.getInt("CNT");
            if(loginAttempts >= 4){
                out.println("비밀번호 5번 이상 실패! 관리자 문의 하세요");
            } else {
            	
                out.println("로그인 성공!");
                
                // 로그인 성공 시 카운트 초기화
                sql = "UPDATE PSY_USER SET CNT = 0 WHERE USERID = ?";
                pstmt = conn.prepareStatement(sql);
                pstmt.setString(1, userId);
                pstmt.executeUpdate();
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
            // 아이디가 존재하지 않거나 비밀번호가 일치하지 않는 경우
            out.println("아이디 또는 비밀번호를 확인해주세요!");
        }
        pstmt.close();
        conn.close();
    %>
    <input type="button" value="되돌아가기" onclick="history.back()">
</body>
</html>
