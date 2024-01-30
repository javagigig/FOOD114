<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<%
	Connection conn;
	Statement stmt = null;
		Class.forName("oracle.jdbc.driver.OracleDriver");
		String db_url = "jdbc:oracle:thin:@localhost:1521:orcl";
		String db_id = "system";
		String db_pw = "test1234";
		conn = DriverManager.getConnection(db_url, db_id, db_pw);
		
		stmt = conn.createStatement();
	
		out.println("test?");
%>
<!-- stmt  ê°ì²´ ìì±
Statement í´ëì¤ : sql ë¬¸ì ì¤ííê¸° ìí´ Statement í´ëì¤ ì´ì©
ë°ì´í° ê²ìì ìí´ executeQuery()ë©ìëë¥¼ ì¬ì©íëë°, ì¶ê°, ìì  ì­ì ì ê°ì ë°ì´í° ë³ê²½ì
 executeQuery()ë©ìë ì¬ì© ê°ë¥í¨-->
</body>
</html>