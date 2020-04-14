<%@ page contentType="text/html; charset=utf-8" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>제주 정보</title>
<link rel="stylesheet"
	href="http://netdna.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link href="css/jquery.scrolling-tabs.css" rel="stylesheet"
	type="text/css">
<style>
.container {
	margin: 150px auto;
}
</style>
</head>


<body>
	<div class="container">
		<!-- Nav tabs -->
		<ul class="nav nav-tabs" role="tablist">
			<li role="presentation" class="active"><a href="#tab1"
				role="tab" data-toggle="tab">1월</a></li>
			<li role="presentation"><a href="#tab2" role="tab"
				data-toggle="tab">2월</a></li>
			<li role="presentation"><a href="#tab3" role="tab"
				data-toggle="tab">3월</a></li>
			<li role="presentation"><a href="#tab4" role="tab"
				data-toggle="tab">4월</a></li>
			<li role="presentation"><a href="#tab5" role="tab"
				data-toggle="tab">5월</a></li>
			<li role="presentation"><a href="#tab6" role="tab"
				data-toggle="tab">6월</a></li>
			<li role="presentation"><a href="#tab7" role="tab"
				data-toggle="tab">7월</a></li>
			<li role="presentation"><a href="#tab8" role="tab"
				data-toggle="tab">8월</a></li>
			<li role="presentation"><a href="#tab9" role="tab"
				data-toggle="tab">9월</a></li>
			<li role="presentation"><a href="#tab10" role="tab"
				data-toggle="tab">10월</a></li>
			<li role="presentation"><a href="#tab11" role="tab"
				data-toggle="tab">11월</a></li>
			<li role="presentation"><a href="#tab12" role="tab"
				data-toggle="tab">12월</a></li>
		</ul>

		<table width="550" border="1">

			<%
				Connection conn = null; // null로 초기화 한다.

				PreparedStatement pstmt = null;
				
				ResultSet rs = null;

				try {

					String url = "jdbc:mysql://localhost:3306/jeju"; // 사용하려는 데이터베이스명을 포함한 URL 기술

					String id = "root"; // 사용자 계정

					String pw = "1234"; // 사용자 계정의 패스워드

					Class.forName("com.mysql.jdbc.Driver"); // 데이터베이스와 연동하기 위해 DriverManager에 등록한다.

					conn = DriverManager.getConnection(url, id, pw); // DriverManager 객체로부터 Connection 객체를 얻어온다.

					String sql = "select * from tourism_up"; // sql 쿼리

					pstmt = conn.prepareStatement(sql); // prepareStatement에서 해당 sql을 미리 컴파일한다.

					pstmt.setString(1, "test");

					rs = pstmt.executeQuery(); // 쿼리를 실행하고 결과를 ResultSet 객체에 담는다.

					while (rs.next()) { // 결과를 한 행씩 돌아가면서 가져온다.

						String place = rs.getString("place");

						String content = rs.getString("content");

						String local = rs.getString("local");
			%>

			<tr>

				<td width="100"><%=place%></td>

				<td width="100"><%=content%></td>

				<td width="100"><%=local%></td>

			</tr>

			<%
				}

				} catch (Exception e) { // 예외가 발생하면 예외 상황을 처리한다.

					e.printStackTrace();

					out.println("tourism_up 테이블 호출에 실패했습니다.");

				} finally { // 쿼리가 성공 또는 실패에 상관없이 사용한 자원을 해제 한다.  (순서중요)

					if (rs != null)
						try {
							rs.close();
						} catch (SQLException sqle) {
						} // Resultset 객체 해제

					if (pstmt != null)
						try {
							pstmt.close();
						} catch (SQLException sqle) {
						} // PreparedStatement 객체 해제

					if (conn != null)
						try {
							conn.close();
						} catch (SQLException sqle) {
						} // Connection 해제

				}
			%>
			</table>


			<!-- Tab panes -->
			<div class="tab-content">
				<div role="tabpanel" class="tab-pane active" id="tab1"></div>

				<div role="tabpanel" class="tab-pane" id="tab2">
					<p>d</p>
				</div>
				<div role="tabpanel" class="tab-pane" id="tab3">
					<p>sadsadsa</p>
				</div>
				<div role="tabpanel" class="tab-pane" id="tab4">
					<p>dsad</p>
				</div>
				<div role="tabpanel" class="tab-pane" id="tab5">
					<p></p>
				</div>
				<div role="tabpanel" class="tab-pane" id="tab6">
					<p>df</p>
				</div>

			</div>
	</div>


	<script src="http://code.jquery.com/jquery-1.12.0.min.js"></script>
	<script
		src="http://netdna.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	<script src="script/jquery.scrolling-tabs.js"></script>

	<script>
		$('.nav-tabs').scrollingTabs();
	</script>

</body>
</html>
