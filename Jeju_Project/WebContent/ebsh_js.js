
		var eb_date = 1; //은비_시작일수
		var eb_check = 1; //은비_설정하기 버튼을 눌러야만 지도 클릭이 가능하게끔 체크할 수 있는 변수
		var eb_max = 0; //은비_최대일수
		
		function eb_btn(){ //은비_맨 처음 설정하기 버튼을 누르면 일차가 나오는 함수
			if(eb_check ==1){
				document.getElementById('date').innerHTML = eb_date + "일차";
				eb_check = 2;
				var from=new Date(document.getElementById("from").value);//시작 날짜
			    var to=new Date(document.getElementById("to").value);//끝 날짜
			    eb_max=((to.getTime()-from.getTime())/1000/60/60/24)+1;
			}
		}
		
		function eb_next(){ //넥스트 버튼을 누르면 다음 일차로 넘어가는 함수
			if(eb_check != 1){
				if(eb_date+1 <= eb_max){
					eb_date += 1;
					document.getElementById('date').innerHTML = eb_date + "일차";	
				}
				else if(eb_date == eb_max){
					eb_date += 1;
					document.getElementById('date').innerHTML = "저  장";	
				}
			}
		}
		
		function eb_pre(){ //이전 버튼을 누르면 이전 일차로 돌아가는 함수
			if(eb_check != 1){
				if(eb_date-1 >= 1){
					eb_date -= 1;
					document.getElementById('date').innerHTML = eb_date + "일차";	
				}
			}
		}
		
	
		   $( function() {                      //여기부터
		       var dateFormat = "mm/dd/yy",
		         from = $( "#from" )
		           .datepicker({
		             defaultDate: "+1w",
		             changeMonth: true,
		             numberOfMonths: 1,
		           minDate:0
		           })
		           .on( "change", function() {
		             to.datepicker( "option", "minDate", getDate( this ) );
		           }),
		         to = $( "#to" ).datepicker({
		           defaultDate: "+1w",
		           changeMonth: true,
		           numberOfMonths: 1
		         })
		         .on( "change", function() {
		           from.datepicker( "option", "maxDate", getDate( this ) );
		         });
		    
		       function getDate( element ) {
		         var date;
		         try {
		           date = $.datepicker.parseDate( dateFormat, element.value );
		         } catch( error ) {
		           date = null;
		         }
		    
		         return date;
		       }
		     } );  //여기까지 달력 제이쿼리 이다
		   window.onload=function(){   
		   var sh_land;//선택한 장소 표시
	
		      // Get the modal
		      var sh_modal = document.getElementById('myModal');//팝업을 위한 변수
	
		      // Get the button that opens the modal
		      var sh_jeju = document.getElementById("jeju");//제주시를 클릭했을 때를 위한 변수
		      var sh_aa = document.getElementById("aa");//애월
		      var sh_and = document.getElementById("and");//안덕
		      var sh_goo = document.getElementById("goo");//구좌
		      var sh_han = document.getElementById("han");//한경
		      var sh_hanrim = document.getElementById("hanrim");//한림
		      var sh_jochun = document.getElementById("jochun");//조천
		      var sh_jung = document.getElementById("jung");//중문
		      var sh_nam = document.getElementById("nam");//남원
		      var sh_pyo = document.getElementById("pyo");//표선
		      var sh_sugui = document.getElementById("sugui");//서귀포
		      var sh_sungsan = document.getElementById("sungsan");//성산
		      var sh_dae = document.getElementById("dae");//대정
	
		      // Get the <span> element that closes the modal
		      var sh_span = document.getElementsByClassName("close")[0];//닫힘 버튼을 위함
	
		      var sh_play = document.getElementById("play");//광관지 탭을 눌렀을 때를 위함
		      var sh_food = document.getElementById("food");//음식점
		      var sh_party = document.getElementById("party");//축제
		      var sh_con = document.getElementById("con");//모달 내부 컨테이너의 보더를 컨트롤 하기 위한 변수
		      var sh_content = document.getElementById("content");//내용을 바꾸기 위한 변수
	
		      function sh_showp() {
		         switch (sh_land) {
		         case 0:
		              var string="<table valign='middle'><tr><td><img src='images/loveland.jpg' width=200px height=150px></td><td align=center width=250>러브 랜드</td><td align=center width=400>19금 박물관 야경이 좋다.</td><td align=center width=400>제주특별자치도 제주시 1100로 2894-72 </td><td align=center width=50><input type='checkbox' name='play' value='loveland'/></td></tr>";
		            string+="<tr height=80><td colspan='5'><hr width = 100% color = ''#D5D5D5' align = 'center' size = '1'/></td></tr>";
		            string +=" <tr><td><img src='images/analoggul.jpg' width=200px height=150px></td><td align=center width=100>아날로그감귤밭</td><td align=center width=400> 감귤체험도 할 수 있고 디저트도 있는 감귤밭</td><td align=center width=400>제주 제주시 해안마을8길 46</td><td align=center width=100><input type='checkbox' name='play' value='analog'/></td></tr>";
		            string+="<tr height=80><td colspan='5'><hr width = 100% color = ''#D5D5D5' align = 'center' size = '1'/></td></tr>";
		            string +="<tr><td><img src='images/hanrasumok.jpg' width=200px height=150px></td><td align=center width=100>한라수목원</td><td align=center width=400> 교목원, 관목원, 약용·식용원, 희귀 특산 수종원, 만목원, 화목원, 도외수종원, 죽림원, 초본원, 수생식물원 등 전문수종원 10개원과 온실, 양묘전시포, 삼림욕장, 시청각실, 휴게실, 체력단련시설, 편의시설 등이 갖추어져 있다.</td><td align=center width=400> 제주 제주시 수목원길 72</td><td align=center width=100><input type='checkbox' name='play' value='hanra'/></td></tr>";
		            string+="<tr height=80><td colspan='5'><hr width = 100% color = ''#D5D5D5' align = 'center' size = '1'/></td></tr>";
		            string +="<tr><td><img src='images/nexon.jpg' width=200px height=150px></td><td align=center width=100>넥슨컴퓨터박물관</td><td align=center width=400>컴퓨터와 게임 문화의 역사를 수집하고 보존하는 넥슨컴퓨터박물관은 넥슨의 기업 문화와 경영 철학을 바탕으로 디지털과 교육, 예술을 결합하여 새로운 문화를 창출하고 이를 바탕으로 지역사회와 교류하고 상생하는 사회교육기관</td><td align=center width=400>제주 제주시 1100로 3198-8</td><td align=center width=100><input type='checkbox' name='play' value='nexon'/></td></tr>";
		            string+="<tr height=80><td colspan='5'><hr width = 100% color = ''#D5D5D5' align = 'center' size = '1'/></td></tr>";
		            string +="<tr><td><img src='images/campus.jpg' width=200px height=150px></td><td align=center width=100>브릭캠퍼스</td><td align=center width=400>브릭캠퍼스는 브릭에 관한 모든 것을 즐기고 감상하고 체험할 수 있는 특별한 공간 </td><td align=center width=400>제주특별자치도 제주시 1100로 3045 </td><td align=center width=100><input type='checkbox' name='play' value='campus'/></td></tr>";
		            string +="</table>";   
		            sh_content.innerHTML = string;
		            break;
		         case 1:
		            var string="<table valign='middle'><tr><td><img src='images/beachload.jpg' width=200px height=150px></td><td align=center width=250>한담해안산책로</td><td align=center width=400>제주특별자치도 제주시 애월읍 애월리에서 곽지리까지 해안을 따라 나 있는 유명한 산책로.</td><td align=center width=400>제주 제주시 애월읍 </td><td align=center width=50><input type='checkbox' name='play' value='beachload'/></td></tr>";
		            string+="<tr height=80><td colspan='5'><hr width = 100% color = ''#D5D5D5' align = 'center' size = '1'/></td></tr>";
		            string +=" <tr><td><img src='images/sabyulorm.jpg' width=200px height=150px></td><td align=center width=100>새별오름</td><td align=center width=400>새별오름은 바리메오름·누운오름·당오름·금오름 등 많은 오름이 있는 밀집해있는 서부 중산간 오름지대 중에서 으뜸가는 서부의 대표오름이다.</td><td align=center width=400>제주 제주시 애월읍 봉성리 산59-8</td><td align=center width=50><input type='checkbox' name='play' value='sabyul'/></td></tr>";
		            sh_content.innerHTML = string;
		            break;
		         default:
		            sh_content.innerHTML = "뭔가 잘못됨 "+sh_land;
		         }
		      }
		      function sh_showf(){
		         switch(sh_land){
		         case 0:
		            sh_content.innerHTML="아직 구현을 안했으요";
		            break;
		         case 1:
		            var string="<table valign='middle'><tr><td><img src='images/food3.jpg' width=200px height=150px></td><td align=center width=250>몽상드애월</td><td align=center width=400>이제는 매각 되어 빅뱅 지드래곤의 소유가 아니나, (전) 지디카페로 유명한 카페. 화려한 외관과 지드래곤 덕분에 국/해외 관광객에게 고루 인기가 많다.</td><td align=center width=400>제주 제주시 애월읍 애월북서길 56-1</td><td align=center width=50><input type='checkbox' name='food' value='food3'/></td></tr>";
		            string+="<tr height=80><td colspan='5'><hr width = 100% color = ''#D5D5D5' align = 'center' size = '1'/></td></tr>";
		            string +=" <tr><td><img src='images/food6.jpg' width=200px height=150px></td><td align=center width=100>* 놀맨</td><td align=center width=400>직접 잡은 해물로 끓인 해물 라면의 단일 메뉴. 현무암으로 이루어진 돌담과 그 위에 걸린 잠수복 등이 제주도의분위기를 느낄 수 있고, 반려견,반려묘 동반 가능하다.</td><td align=center width=400>제주 제주시 애월읍 애월로1길 24</td><td align=center width=100><input type='checkbox' name='food' value='analog'/></td></tr>";
		            string +="</table>";
		            sh_content.innerHTML=string;
		            break;
		         default:
		            sh_content.innerHTML = "뭔가 잘못됨 "+sh_land;   
		         }
		      }
		      
		      sh_play.onclick = function() {
		         sh_con.style.border = "2px solid #E48250";
		         sh_showp();
		      }
		      sh_food.onclick = function() {
		         sh_con.style.border = "2px solid#FBD066";
		         sh_showf()
		      }
		      sh_party.onclick = function() {
		         sh_con.style.border = "2px solid #BCD24A";
	
		      }
		      // When the user clicks the button, open the modal 
		      sh_jeju.onclick = function() {
		    	  if(eb_check == 1){
		    		  alert("제주도에서 머무실 위치와 기간을 입력해주세요!");
		    	  }else{
		    		 sh_modal.style.display = "block";
			         sh_land = 0;
			         sh_showp();
			      }
		      }
		      sh_aa.onclick = function() {
		         sh_modal.style.display = "block";
		         sh_land = 1;
		         sh_showp();
		      }
	
		      // When the user clicks on <span> (x), close the modal
		      sh_span.onclick = function() {
		         sh_modal.style.display = "none";
		      }
	
		      // When the user clicks anywhere outside of the modal, close it
		      window.onclick = function(event) {
		         if (event.target == sh_modal) {
		            sh_modal.style.display = "none";
		         }
		      }
		   }