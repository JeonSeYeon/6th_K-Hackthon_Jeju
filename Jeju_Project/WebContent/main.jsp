<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<link rel="stylesheet" href="jquery-ui.css" />
<script src="jquery.js"></script>
<script src="jquery-ui.js"></script>
<script src="ebsh_js.js" charset='EUC-KR'></script>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="ebsh_css.css">
<title>We Love Jeju!</title>
</head>

<body>


	<!-- 사이드 메뉴바 -->
	<div id="page-wrapper">
  		<div id="sidebar-wrapper">
    		<ul class="sidebar-nav">
      			<li><a href="#">설명</a></li>
      			<li><a href="info.jsp">정보</a></li>
      			<li><a href="#">안뇽</a></li>
    		</ul>
  		</div>
	</div>


	<!-- 로고 이미지 -->
	<div id="logo-size">
		<img src = 'images/logo.png' width=300px; height = auto;>
	</div>
	
	
	
	
	<!-- 제주도청 링크 -->
	<div id = "link-jeju">
		<a href='http://www.jeju.go.kr/' style="text-decoration: none; color: #fff;">제주특별자치도청 바로가기 >>></a>
	</div>
	
	
	
	<!-- 기본 지도 이미지 -->
	<div id="zido-size">
		<img src = 'images/jejuzido1 복사.png' id="zido" width = "1000px" height="auto">
	</div>
	
	
	
	<!-- 숙소 위치 선정 -->
	<div>
		<div id="term2">
			어디에 머무시나요?
		</div>
		<div id = "sukso-size">
			<select name="sukso" style="width:205px; height:23px;">
  				<option value="구좌읍">구좌읍</option>
  				<option value="남원읍">남원읍</option>
  				<option value="대정읍">대정읍</option>
  				<option value="서귀포시">서귀포시</option>
  				<option value="성산읍">성산읍</option>
  				<option value="안덕면">안덕면</option>
  				<option value="애월읍">애월읍</option>
  				<option value="조천읍">조천읍</option>
  				<option value="중문">중문</option>
  				<option value="제주시">제주시</option>	
	  			<option value="표선면">표선면</option>
  				<option value="한경면">한경면</option>
  				<option value="한림읍">한림읍</option>
			</select>
		</div>
	</div>
	
	
	
	
	<!-- 날짜 선택 -->
	<div>
		<div id="term">
			얼마나 머무시나요?
		</div>
		<div id="txtbox">
			<input type = "text" id="from" name = "from" value="from" style="width:95px;">
			<input type = "text" id="to" name = "to" value="to" style="width:95px;">
		</div>
		<div>
			<button id=btn class= "btn1" value="확인" OnClick="javascript:eb_btn()">설정하기</button>
		</div>
	</div>
	
		   <!-- The Modal -->
   <div id="myModal" class="modal">

      <!-- Modal content -->
      <div class="modal-content">
         <span class="close">x</span>
         <div id="play" class="tag_play"></div>
         <div id="food" class="tag_food"></div>
         <div id="party" class="tag_party"></div>
         <div id="con" class="container">
            <p id="content"></p>
         </div>
         <input style="margin-top:10px; margin-left:600px"  type="button" value="확인">
         <br><br><br><br><br><br>
      </div>

   </div>
   
	<div>
		<!-- 지도 부가 이미지  -->
		<div style = "position:fixed; margin-left:864px; margin-top:278px; opacity:0; ">
			<img id="jeju" src = "images/jejusi.png"  width="80%" height="auto"  onmouseover="zido.src='images/jejusiorange.png';" onmouseout="zido.src='images/jejuzido1 복사.png';">
		</div>
		<div style = "position:fixed; margin-left:703px; margin-top:305px; opacity:0;">
			<img id="aa" src = "images/aa.png"  width="80%" height="auto"  onmouseover="zido.src='images/aaoran.png';" onmouseout="zido.src='images/jejuzido1 복사.png';">
		</div>
		<div style = " position:fixed; margin-left:650px; margin-top:470px; opacity:0;">
			<img id="and" src = "images/anduk.png"  width="80%" height="auto"  onmouseover="zido.src='images/andukoran.png';" onmouseout="zido.src='images/jejuzido1 복사.png';">
		</div>
		<div style = "position:fixed; margin-left:1211px; margin-top:266px; opacity:0;">
			<img id="goo" src = "images/goozua.png"  width="80%" height="auto"  onmouseover="zido.src='images/goozuaoran.png';" onmouseout="zido.src='images/jejuzido1 복사.png';">
		</div>
		<div style = "position:fixed; margin-left:520px; margin-top:412px; opacity:0;">
			<img id="han" src = "images/hangung.png"  width="80%" height="auto" onmouseover="zido.src='images/hangungoran.png';" onmouseout="zido.src='images/jejuzido1 복사.png';">
		</div>
		<div style = "position:fixed; margin-left:593px; margin-top:355px;  opacity:0;">
			<img id="hanrim" src = "images/hanrim.png"  width="80%" height="auto"  onmouseover="zido.src='images/hanrimoran.png';" onmouseout="zido.src='images/jejuzido1 복사.png';">
		</div>
		<div style = "position:fixed; margin-left:1090px; margin-top:259px; opacity:0;">
			<img id="jochun" src = "images/jochunup.png"  width="80%" height="auto"  onmouseover="zido.src='images/jochunoran.png';" onmouseout="zido.src='images/jejuzido1 복사.png';">
		</div>
		<div style = "position:fixed; margin-left:739px; margin-top:509px; opacity:0; ">
			<img id="jung" src = "images/jungmun.png"  width="80%" height="auto" onmouseover="zido.src='images/jungmunoran.png';" onmouseout="zido.src='images/jejuzido1 복사.png';">
		</div>
		<div style = "position:fixed; margin-left:1005px; margin-top:505px; opacity:0; ">
			<img id="nam" src = "images/namwon.png"  width="80%" height="auto" onmouseover="zido.src='images/namwonoran.png';" onmouseout="zido.src='images/jejuzido1 복사.png';">
		</div>
		<div style = "position:fixed; margin-left:1180px; margin-top:466px; opacity:0;  ">
			<img id="pyo" src = "images/pyosun.png"  width="80%" height="auto" onmouseover="zido.src='images/pyosunoran.png';" onmouseout="zido.src='images/jejuzido1 복사.png';">
		</div>
		<div style = "position:fixed; margin-left:900px; margin-top:510px; opacity:0; ">
			<img id="sugui" src = "images/suguipo.png"  width="80%" height="auto" onmouseover="zido.src='images/seoguipooran.png';" onmouseout="zido.src='images/jejuzido1 복사.png';">
		</div>
		<div style = "position:fixed; margin-left:1300px; margin-top:430px; opacity:0;">
			<img id="sungsan" src = "images/sungsan.png"  width="80%" height="auto" onmouseover="zido.src='images/sungsanoran.png';" onmouseout="zido.src='images/jejuzido1 복사.png';">
		</div>
		<div style = "position:fixed; margin-left:500px; margin-top:500px; opacity:0;">
			<img id="dae" src = "images/daejung.png"  width="80%" height="auto" onmouseover="zido.src='images/daejungoran.png';" onmouseout="zido.src='images/jejuzido1 복사.png';">
		</div>	
		<!-- 지도 끝 -->
	</div>

	<!-- 몇 일차인지 보여주는 거랑 넥스트(확인) 버튼 -->
	<div>
		<div id="date-size">
			<p id = date>제주도</p>
		</div>
	
		<div id="next-size">
			<img src = "images/next.png" id=next OnClick="javascript:eb_next()">
		</div>
		
		<div id="pre-size">
			<img src = "images/pre.png" id=pre OnClick="javascript:eb_pre()">
		</div>
	</div>
</body>
</html>