<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.regex.Pattern" %>
<%
	request.setCharacterEncoding("euc-kr");
	
	try {	
		
		Class.forName("com.mysql.jdbc.Driver");
		String url = "jdbc:mysql://localhost:3306/JEJU"; //�������ּҿ� port�� DB���� �Է��մϴ�.
		String id = "root"; // DB USER��
		String pass = "3208"; // DB ��й�ȣ
		ResultSet rs = null;
		
		String loc = request.getParameter("sukso");
		String date = request.getParameter("date");
		
		Connection conn = DriverManager.getConnection(url,id,pass);
		
		String sql = "INSERT INTO travel(date,loc) VALUES(?,?)";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		
		pstmt.setString(1, date);
		pstmt.setString(2, loc);
		
		pstmt.execute();
		pstmt.close();
		
		conn.close();
	} catch(SQLException e) {
		out.println( e.toString() );
	}
%>


<script Type = "text/javascript">
   
	location.href="javascript:history.back()";

</script>