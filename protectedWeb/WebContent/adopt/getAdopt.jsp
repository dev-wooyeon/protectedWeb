<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<!DOCTYPE html>

<html lang="ko">
	
<head>
	<title>보호할개 · 분양글 상세조회</title>
	<meta charset="utf-8">
	
	<meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >    
    <style>
    
    	.row {
/* 			transform: rotate(0.03deg); */
		}
    
	    #carouselExampleIndicators{
        	max-height: 450px;
	    }
	    
       	img {
        	max-height: 450px;
        }
        
        #mapDiv{
/*         	padding-left: 0px; */
/*         	padding-right: 0px; */
        	padding: 0px;
        }
        .offset-lg-1{
        	position: relative;
        	height: 450px;
        	display: flex;
         	padding-right: 0px !important;
        }
        .card_area{
        	position: absolute;
        	left: 0px;
        	bottom: 0px !important;
        }
        
        #appendTr>td{
        	align: letf;
        	word-break: break-all;	
        }
        
        @media screen and (min-width: 768px) { 
	        .modal:before {
	                display: inline-block;
/* 	                vertical-align: middle; */
	                content: " ";
/* 	                height: 100%; */
	        }
		}
		
        .modal{
      	  display: inline-block;
        	vertical-align: middle;
        }
        
/*         #modiButton, #delButton, #listButton { */
/* 		    padding: 0px 10px; */
/*  		    line-height: 20px;  */
/*  		    border-radius: 3px;  */
/* 		} */
		
/* 		button { */
/* /* 		    display: inline-block; */ */
/* 		    background: #94BFCA; */
/* 		    padding: 0px 10px; */
/* 		    letter-spacing: 0.25px; */
/* 		    color: #fff; */
/* 		    font-size: 30px; */
/* 		    font-weight: 500; */
/* 		    line-height: 44px; */
/* 		    outline: none !important; */
/* 		    box-shadow: none !important; */
/* 		    text-align: center; */
/* 		    border: 1px solid #94BFCA; */
/* 		    cursor: pointer; */
/* 		    text-transform: uppercase; */
/* 		    transition: all 300ms linear 0s; */
/* 		    border-radius: 5px; */
/* 		} */
		
		.col-md-2 {
			padding-right: 0px !important;
		}
 		
		.col-md-10 {
			padding-right: 15px !important;
		}
 		
        .glyphicon-heart-empty {
         	color: #f04f23;
         	padding-top: 5px;
        }
         
        ol.carousel-indicators {
         	width: 70% !important;
        }
        
/*         .offset-lg-1 { */
         	
/*         } */
        .s_product_inner {
        
        	padding-right: 0px !important;
        }
        .s_product_text {
         	flex: 1;
        }
         
         
	
        

    </style>
  <jsp:include page="/layout/toolbar.jsp"></jsp:include>
  </head>
  
  <body>
    
    <!--================Header Menu Area =================-->

    
    
    <div class="hero-wrap hero-bread" style="padding-bottom: 30px; padding-top : 60px;">
      <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center">
          <div class="col-md-9 ftco-animate text-center">
             <p ><span class="mr-2">Get</span> <span>Adopt</span></p>
            <font size="7">분양상세조회</font>
          </div>
        </div>
      </div>
    </div>


    <!--================Single Product Area =================-->
    
    <div class="product_image_area">
      <div class="container">
      <div class="col-md-12"><hr/><br/></div>
        <div class="row s_product_inner col-md-12">
        
          <div class="col-lg-6">
<!--             <div class="s_product_img"> -->
              <div
                id="carouselExampleIndicators"
                class="carousel slide"
                data-ride="carousel"
              >
                <ol class="carousel-indicators">
                
                
                  <c:forEach var="i" begin="0" end="${fn:length(file)-1}" step="1">			
					<c:if test="${i eq 0}">	
	                  <li
	                    data-target="#carouselExampleIndicators"
	                    data-slide-to="${i}"
	                    class="active"
	                  >
	                </c:if>
					<c:if test="${!(i eq 0)}">	
	                  <li
	                    data-target="#carouselExampleIndicators"
	                    data-slide-to="${i}"
	                  >
	                </c:if>	                
                  </c:forEach>               
                     
                </ol>
                
                <div class="carousel-inner">
					<c:forEach var="name" items="${file}" varStatus="status">
						<c:if test="${status.first}">	
							<c:set var ="className" value="carousel-item active"/>
		                </c:if>
						<c:if test="${!(status.first)}">	
							<c:set var ="className" value="carousel-item"/>
		                </c:if>	                
	                    <div class="${className}">	                
		                    <img 
		                      class="d-block w-100" style="width:100%;background:url('../resources/file/fileAdopt/${name.fileName}') no-repeat center center;background-size:cover; " 
		                      height="450px;" />
	                  	</div>			
	                </c:forEach>
                </div>
                
              </div>
<!--             </div> -->
          </div>
          <div class="col-lg-6 offset-lg-1">
            <div class="s_product_text">
            
<%--              <span style="text-align: justify;"> <font size="5px">${adopt.postTitle}</font> &nbsp;&nbsp;${adopt.id}&nbsp;&nbsp; ${ adopt.regDate }</span><hr/> --%>
              
              
<!--               <ul class="list" > -->
              	
              	<input type="hidden" name="postNo" value="${adopt.postNo}">
              	<input type="hidden" name="userId" value="${user.id}">
              	<input type="hidden" name="levels" value="${user.levels}">
              	
<!--                 <li> -->
                   	<div class="row" style="position:relative;height:35px;">
			        	<div class="col-xs-11 col-md-11" style="position:absolute;height:35px; left:0px; bottom:0px;" >
			        		<font id="title" size="5px"><strong>${adopt.postTitle}</strong></font>
<%-- 			        	&nbsp;&nbsp;${adopt.id} --%>
			        	</div>
			        	
			        	<div class="col-xs-1 col-md-1" style="position:absolute;height:35px; right:0px; bottom:0px;padding-left: 0;" >
							<font size="5px" id="heartIcon"><span class="glyphicon glyphicon-heart-empty"></span></font>
			        	</div>
			        	
<!-- 			        	<div class="col-xs-2 col-md-2" align="right" style="position:absolute; right:0px; bottom:0px; " > -->
<%-- 			        	<font size="5px"></font>${adopt.id} --%>
<%-- 			        	${adopt.regDate} --%>
<!-- 			        	</div> -->
			        </div>
<!--                 </li> -->
                
                <hr/>
              	
<!--                 <li> -->
                   	<div class="row">
				  		<div class="col-md-2 " ><font size="4px"><strong>작성자</strong></font></div>
						<div class="col-md-4 "><font size="4px">${adopt.id}</font></div>
						
						<div class="col-md-2 " style="padding-left: 0px;"><font size="4px"><strong>작성일자</strong></font></div>
						<div class="col-md-4 "><font size="4px">${adopt.regDate}</font></div>
					</div>
                   	<div class="row">
				  		<div class="col-md-2 " ><font size="4px"><strong>견종</strong></font></div>
						<div class="col-md-4 "><font size="4px">${adopt.dogBreed}</font></div>
						
						<div class="col-md-2 " style="padding-left: 0px;"><font size="4px"><strong>크기</strong></font></div>
						<div class="col-md-4 "><font size="4px">${adopt.dogSize}</font></div>
					</div>
<!--                 </li> -->
                
<!--                 <li> -->
                   	<div class="row">
				  		<div class="col-md-2 "><font size="4px"><strong>체중</strong></font></div>
						<div class="col-md-4 "><font size="4px">${adopt.dogWeight}kg</font></div>
			
				  		<div class="col-md-2 " style="padding-left: 0px;"><font size="4px"><strong>성별</strong></font></div>
						<div class="col-md-4 "><font size="4px">${adopt.dogGender}</font></div>
					</div>
<!--                 </li> -->
                
<!--                 <li> -->
                   	<div class="row">
				  		<div class="col-md-2 "><font size="4px"><strong>
					  		<c:if test="${adopt.boardCode eq 'AD' }">책임비</c:if>
<%-- 						    <c:if test="${adopt.boardCode eq 'MS' }">사례비</c:if> --%>
				  		</font></strong></div>
						<div class="col-md-4 "><font size="4px"><fmt:formatNumber value="${ adopt.dogPay }" pattern="#,###" />원</font></div>
			
				  		<div class="col-md-2 " style="padding-left: 0px;"><font size="4px"><strong>
				  			<c:if test="${adopt.boardCode eq 'AD' }">발견일자</c:if>
<%-- 						    <c:if test="${adopt.boardCode eq 'MS' }">실종일자</c:if> --%>
				  		</font></strong></div>
						<div class="col-md-4"><font size="4px">${adopt.dogDate}</font></div>
					</div>

                	<div class="row">
				  		<div class="col-md-2  "><font size="4px"><strong>상태</strong></font></div>
						<div class="col-md-10 "><font size="4px">${adopt.dogStatus}</font></div>
					</div>

                	<div class="row">
				  		<div class="col-md-2  "><font size="4px"><strong>성격</strong></font></div>
						<div class="col-md-10 "><font size="4px">${adopt.dogPersonality}</font></div>
					</div>
					
                	<div class="row">
				  		<div class="col-md-2  "><font size="4px"><strong>특징</strong></font></div>
						<div class="col-md-10 "><font size="4px">${adopt.dogChar}</font></div>
					</div>
         
	               	<div class="row">
				  		<div class="col-md-2  "><font size="4px"><strong>글내용</strong></font></div>
						<div class="col-md-10 " style="padding-right: 0px;" ><font size="4px">${adopt.postContent}</font></div>
					</div>
					
<!-- 	               	<div class="row"> -->
<!-- 				  		<div class="col-md-12 card-area "> -->
<!-- 				  			분양 메뉴일때  -->
<%-- 			              	<c:if test="${adopt.boardCode eq 'AD' }"> --%>
<%-- 				              		<c:if test="${adopt.statusCode ne '3' && user.id ne adopt.id }"> --%>
<!-- 				              			<button id="adoptApply" class="btn btn-default" >입양신청</button> -->
<%-- 				              		</c:if> --%>
				              		
<%-- 				              		<c:if test="${adopt.statusCode eq '2' && user.id eq adopt.id }"> --%>
<!-- 				              			<button class="btn btn-default"  id="confirmButton">신청서확인</button> -->
<!-- 				              			<button class="btn btn-default"  id="adoptCompleteButton">분양완료</button> -->
<%-- 				              		</c:if> --%>
				              		
<%-- 				              		<c:if test="${adopt.statusCode eq '1' && user.id eq adopt.id }"> --%>
<!-- 				              			<button class="btn btn-default" id="noApply" style="width: 475px;" id="confirmButton">아직 신청서가 등록되지 않았습니다.</button> -->
<%-- 				              		</c:if> --%>
<%-- 			              	</c:if> --%>
			              	
<!-- 			              	실종 메뉴일때  -->
<%-- 			              	<c:if test="${adopt.boardCode eq 'MS' }"> --%>
<%-- 			              		<c:if test="${adopt.statusCode eq '1' && user.id eq adopt.id }"> --%>
<!-- 			              			<button class="btn btn-default"  id="missingCompleteButton">찾기완료</button> -->
<%-- 			              		</c:if> --%>
<%-- 			              	</c:if> --%>
			              	
<!-- 			              	공통  -->
<%-- 			              	<c:if test="${adopt.statusCode ne '3' &&  user.id ne adopt.id   }"> --%>
<!-- 			               		<button class="btn btn-default" href="#" >문의하기</button> -->
<!-- 			               		<a class="icon_btn" href="#"><i class="lnr lnr lnr-heart"></i></a> -->
<%-- 			               	</c:if> --%>
			               	
<%-- 			              	<c:if test="${adopt.statusCode eq '3'}"> --%>
<!-- 			               		<button class="btn btn-default" id="noApply" style="width: 475px;" id="confirmButton">완료된 글입니다.</button> -->
<%-- 			               	</c:if> --%>
				  		
<!-- 				  		</div> -->
<!-- 					</div> -->

				
              
              
              
<!--               <div class="product_count"> -->
<!--                 <button -->
<!--                   onclick="var result = document.getElementById('sst'); var sst = result.value; if( !isNaN( sst )) result.value++;return false;" -->
<!--                   class="increase items-count" -->
<!--                   type="button" -->
<!--                 > -->
<!--                 </button> -->
<!--                 <button -->
<!--                   onclick="var result = document.getElementById('sst'); var sst = result.value; if( !isNaN( sst ) &amp;&amp; sst > 0 ) result.value--;return false;" -->
<!--                   class="reduced items-count" -->
<!--                   type="button" -->
<!--                 > -->
<!--                 </button> -->
<!--               </div> -->
             
             
    <!-- 글내용 밑에 버튼  --> 
             <div class="row" style="flex: 1;bottom: 0px;position: absolute;" >
              <div class="col-md-12 card_area" >

				<!-- 분양 메뉴일때  -->
              	<c:if test="${adopt.boardCode eq 'AD' }">
	              		<c:if test="${adopt.statusCode ne '3' && user.id ne adopt.id }">
	              			<button id="adoptApply" class="btn btn-default" style="width: 250px">입양신청</button>
	              		</c:if>
	              		
	              		<c:if test="${adopt.statusCode eq '2' && user.id eq adopt.id }">
	              			<button class="btn btn-default" style="width: 250px" id="confirmButton">신청서확인</button>
	              			<button class="btn btn-default" style="width: 250px" id="adoptCompleteButton">분양완료</button>
	              		</c:if>
	              		
	              		<c:if test="${adopt.statusCode eq '1' && user.id eq adopt.id }">
	              			<button class="btn btn-default" id="noApply" style="width: 532px;" id="confirmButton">아직 신청서가 등록되지 않았습니다.</button>
	              		</c:if>
              	</c:if>
              	
				<!-- 실종 메뉴일때  -->
              	<c:if test="${adopt.boardCode eq 'MS' }">
              		<c:if test="${adopt.statusCode eq '1' && user.id eq adopt.id }">
              			<button class="btn btn-default"style="width: 250px" id="missingCompleteButton">찾기완료</button>
              		</c:if>
              	</c:if>
              	
				<!-- 공통  -->
              	<c:if test="${adopt.statusCode ne '3' &&  user.id ne adopt.id   }">
               		<button class="btn btn-default" style="width: 250px">문의하기</button>
<!--                		<a class="icon_btn" href="#"><i class="lnr lnr lnr-heart"></i></a> -->
               	</c:if>
               	
              	<c:if test="${adopt.statusCode eq '3'}">
               		<button class="btn btn-default" id="noApply" style="width: 532px;" id="confirmButton">완료된 글입니다.</button>
               	</c:if>
              	
              </div>
 			</div>
 			
 			
 			
 			
<!--               </ul> -->
              
            </div>
           
            
          </div>
        </div>
        
        
        <div class="col-md-12 "><br/><hr/><br/></div>
        
        
        
        <div id="mapDiv"  class="col-md-12 " style="padding-left: 15px;padding-right: 15px;">
        
        	<c:if test="${adopt.boardCode eq 'AD' }">
				<font size="4px"><strong>분양가능지역</strong></font><br/>
		  		<div id="mapArea" style="width:wrap; height: 300px;"  align="center"></div>
				<div><font size="4px">${adopt.areaKr }</font></div><br/>
			</c:if>
			
	  		<font size="4px"><strong>
	  			<c:if test="${adopt.boardCode eq 'AD' }">
		  			발견위치
		  		</c:if>
			    <c:if test="${adopt.boardCode eq 'MS' }">
		  			실종위치
		  		</c:if>
	  		</strong></font><br/>
	  		<div id="map" style="width: wrap; height: 300px;"  align="center"></div>
	  		<input type="hidden" class="form-control" id="location" name="location" value="${adopt.location}">
			<div><font size="4px">${adopt.locationKr }</font></div>
			<br/><br/><br/>
        
        </div>

		<div class="minibox" align="center">
			<div>
				<br/>
				<p/>
				<br/>
				<a href="#"  id="twitter"  title="트위터로 공유"><img src="/resources/file/others/twitter.png"></a>
				<a href="#" id="facebook" title="페이스북으로 공유"><img src="/resources/file/others/facebook.png"></a>
				<a href="#"  id="naver" title="네이버로 공유"><img src="/resources/file/others/naver.png"></a>
				<a href="#"  id="kakao" title="카카오톡으로 공유"> <img src="/resources/file/others/kakao.png" ></a>
			</div>
		</div>
        <div class="col-md-12"><hr/></div>
        
        <p align="right" style="padding-right: 15px;">
       		<c:if test="${adopt.statusCode eq '1' && sessionScope.user.id eq adopt.id }">
				<button class="btn btn-default" id="modiButton">수정</button>
	       		<button class="btn btn-default" id="delButton">삭제</button>
			</c:if>
			
	        <button class="btn btn-default" id="listButton">목록</button>
        </p>
        
       
        
        
      </div>
    </div>
   <br><br><br/>
    <!--================End Single Product Area =================-->
    
    <!-- 	/////////////////////////////////////////       dialog       ///////////////////////////////////////////////////////////////////// -->
   
<!-- 			<div id="dialog-delAdopt" title=""> -->
<!-- 			  <p align="center"><br/>삭제하시겠습니까?</p> -->
<!-- 			</div>    -->
<!-- 			<div id="dialog-missingComplete" title=""> -->
<!-- 			  <p align="center"><br/>찾기완료 상태로 변경하시겠습니까?</p> -->
<!-- 			</div>   -->
			<div id="dialog-alreadyApply" title="">
			  <p align="center"><br/></p>
			</div>  
			
			<div id="dialog-message" title="">
			  <p align="center"><br/>
			  	<form name="message">
				  	<input type="hidden" name="senderId" value="${ sessionScope.user.id }"/>
					<input type="hidden" name="messageStatus" value="0"/>
					<input type="hidden" name="delCode" value="0"/>
					
					<div class="col-md-12">
						받는이 <input type="text"/>
					</div>
					
				</form>
			  </p>
			</div>  
			
			<div id="dialog-listApply" title="">
<!-- 			  <p id="listJSON"></p> -->
			</div> 
			


	<jsp:include page="/layout/footer.jsp"></jsp:include>
  
    <!--================End Product Description Area =================-->

    <!--================ start footer Area  =================-->
    
    <!--================ End footer Area  =================-->
    

    
    <!-- KAKAO -->
	<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>	
    
    <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>
<!--     <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script> -->
    <script>
      $(document).ready(function() { 
    	  listApply('load');
      });

      var map;
      var markers = [];
      var loca = "${adopt.location}";
      var localat = parseFloat(  loca.substring( loca.indexOf("(")+1 ,loca.indexOf(",") )  );
      var localng = parseFloat(  loca.substring( loca.indexOf(",")+1, loca.indexOf(")") )  );
      var marker;
      
      var mapArea;
      var markerArea;
      var adArea = "${adopt.adoptArea}";
      var arrayTest = [];
      var arrayMark = [];
      
      var id = $('input[name=userId]').val().trim();
      
      if (adArea.indexOf("#") != -1){
    	  var areaArray = adArea.split("#");
    	  
    	  for ( i=0; i<areaArray.length-1; i++){
    		  arrayTest[i] = areaArray[i].substring( areaArray[i].indexOf("(")+1, areaArray[i].indexOf(",") )+","+ (areaArray[i].substring( areaArray[i].indexOf(",")+1, areaArray[i].indexOf(")") )).trim() ;
    		  arrayMark[i] = "markerArea"+i.toString();
    	  }   	  
      }
      
      
      
      function initMap() {
        var centerLoca = {lat: localat, lng: localng};

        map = new google.maps.Map(document.getElementById('map'), {
        	zoom: 15,
        	center: {lat: localat, lng: localng}
        });
        
        marker = new google.maps.Marker({
            position: {lat: localat, lng: localng},
            map: map
        });

 ////////////////////////////////////////////
 
	    mapArea = new google.maps.Map(document.getElementById('mapArea'), {
			    zoom: 12,
			    center: { lat: parseFloat(arrayTest[0].substring( 0, arrayTest[0].indexOf(",") ))  ,
			    		lng: parseFloat(arrayTest[0].substring( arrayTest[0].indexOf(",")+1, arrayTest[0].length )) }
		});
	    
	    var aaa = "";
	    for ( i=0; i<arrayTest.length; i++){
	    	
		    markerArea= arrayMark[i];
		
		    markerArea = new google.maps.Marker({
		        position: { lat: parseFloat(arrayTest[i].substring( 0, arrayTest[i].indexOf(",") ))  ,
		    			lng: parseFloat(arrayTest[i].substring( arrayTest[i].indexOf(",")+1, arrayTest[i].length )) },
		        map: mapArea
		    });
  		 	
	    }//$('#pop').text(aaa);
	    
      }
      
      //////////////////////////////////////////////////////////////////////////////////////////////////////
      
      function fncComplete() {			
			var postNo = ${adopt.postNo};
			var aText;

// 			alert(typeof postNo);

			$.ajax( 
			 		{
						url : "/adopt/json/updateStatusCode/"+postNo ,
						method : "GET" ,
						dataType : "json" ,
						headers : {
									"Accept" : "application/json",
									"Content-Type" : "application/json"
								  },
						success : function(status) {
							$('#confirmButton, #modiButton, #delButton, #adoptCompleteButton, #missingCompleteButton').remove();
							$( "#dialog-adoptComplete, #dialog-missingComplete" ).dialog( "close" );
							$('.card_area').html('<button class="main_btn" id="noApply" style="width: 475px;" id="confirmButton">완료된 글입니다.</button>');
						},
						error: function(request, status, error){ 
							alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);  
				        }
			});
	 };

	 //////////////////////////////////////////////////////////////////////////////////////////////////////      
      
	
	 //============= SNS공유 Event  처리 =============	
	$( "#twitter" ).on("click" , function() {
 		 window.open('https://twitter.com/intent/tweet?text=[%EA%B3%B5%EC%9C%A0]%20' +encodeURIComponent(document.URL)+'%20-%20'+encodeURIComponent(document.title), 'twittersharedialog', 'menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=500,width=600');
	});		
	
	$( "#naver" ).on("click" , function() {
 		 window.open('https://share.naver.com/web/shareView.nhn?url='+encodeURIComponent(document.URL)+'&title=hyemi!', 'naversharedialog', 'menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=500,width=600');
	});		
	
	$( "#facebook" ).on("click" , function() {
 		 window.open('https://www.facebook.com/sharer/sharer.php?u=' +encodeURIComponent(document.URL)+'&t='+encodeURIComponent(document.title), 'facebooksharedialog', 'menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=300,width=600');
	});			
	
	$( "#kakao" ).on("click" , function() {
		sendLinkKakao()
	});	
	
  //============= 카카오 공유하기Event  처리 =============		
	 Kakao.init('153d14a106a978cdc7a42f3f236934a6');
  
	 function sendLinkKakao(){
	     Kakao.Link.sendDefault({
	     	objectType: 'feed',
	     	content: {
	     		title: '유기견보호',
	     		description: '멍멍',
	     		imageUrl:document.location.href,
	     		link: {
			     		mobileWebUrl: document.location.href,
			     		webUrl:document.location.href
	     			  }
	     		},
	    	buttons: [       
	        			{
	        				title: '링크 열기',
	        				link: {
	       							mobileWebUrl: document.location.href,
	        						webUrl: document.location.href
	        					  }
	        			}
	      			  ]
	     }); 
	 }  
	 
  //==================================================

	 
      $( function() {
  	    $( "#dialog-delAdopt" ).dialog({
  	    	autoOpen: false,
  		      width: 350,
  		      height: 180,
  		      modal: true,
  		      buttons: {
  		        	예: function() {
  		        		self.location = "/adopt/updateStatusCode?postNo=${adopt.postNo}";
  		        	},
  		        	아니오: function() {
  		          		$( this ).dialog( "close" );
  		        	}
  		      }
  	    });
      });
      
//       $( function() {
//   	    $( "#dialog-adoptComplete, #dialog-missingComplete" ).dialog({
//   	    	  autoOpen: false,
//   		      width: 350,
//   		      height: 180,
//   		      modal: true,
//   		      buttons: {
//   		        	예: function() {
//   		        		fncComplete();
//   		        	},
//   		        	아니오: function() {
//   		          		$( this ).dialog( "close" );
//   		        	}
//   		      }
//   	    });
//       });
      
      $( function() {
  	    $( "#dialog-listApply" ).dialog({
  	    	  autoOpen: false,
  		      width: 500,
  		      height: 600,
  		      modal: true,
  		      buttons: {
//   		        	예: function() {
//   		        		fncComplete();
//   		        	},
  		        	닫기: function() {
  		          		$( this ).dialog( "close" );
  		        	}
  		      }
  	    });
      });
      
      $( function() {
  	    $( "#dialog-alreadyApply" ).dialog({
  	    	  autoOpen: false,
  		      width: 350,
  		      height: 180,
  		      modal: true,
  		      buttons: {
  		        	닫기: function() {
  		          		$( this ).dialog( "close" );
  		        	}
  		      }
  	    });
      });
      
      
      $( function() {
  	    $( "#dialog-message" ).dialog({
  	    	  autoOpen: false,
  		      width: 350,
  		      height: 300,
  		      modal: true,
  		      buttons: {
  		        	닫기: function() {
  		          		$( this ).dialog( "close" );
  		        	}
  		      }
  	    });
      });
      

      
  //////////////////////////////////////////////////////////////////////////////////////////////////////
	var str = '';
  
    function listApply(str){
    	var lv = $('input[name=levels]').val();
    	console.log("lv 확인 : "+lv);
		var adoptNo = parseInt(  $('input[name=postNo]').val().trim()  );
		
  		$.ajax( 
		 		{
					url : "/apply/json/listApply/"+adoptNo ,
					method : "GET" ,
					dataType : "json" ,
					headers : {
								"Accept" : "application/json",
								"Content-Type" : "application/json"
							  },
					success : function(data , status) {
// 							console.log(JSON.stringify(data));
// 							alert( data.list.length );
							
							var displayValue = '<table class="table table-hover" >'
										        +'<thead>'
										        	+'<tr>'
											            +'<th style="width: 15%"><p align="center" text-weight="bold"><b>No</b></p></th>'
											            +'<th style="width: 55%"><p align="center"><b>신청자 ID</b></p></th>'
											            +'<th style="width: 30%"><p align="center"><b>신청일자</b></p></th>' 
									           		+'</tr>'
									            +'</thead>'
									            +'<tbody>';
					            
							for( i=0; i<data.list.length; i++ ){
		 						displayValue += 
							            		'<tr class="trApplyNo" id="'+data.list[i].applyNo+'">'
							            			+'<input type="hidden" name="inputApplyNo" value="'+data.list[i].applyNo+'">'
								            		+'<td align="center"><p>'+(i+1)+'</p></td>'
								            		+'<td align="center"><p>'+data.list[i].id+'</p></td>'
								            		+'<td align="center"><p>'+data.list[i].regDate+'</p></td>'
							            		+'</tr>';	
							            		
							}
							displayValue += '</tbody>'+'</table>';
							
							
							if ( str == '확인' ) {
								
								$( "#dialog-listApply" ).html(displayValue);
								$( '#dialog-listApply' ).dialog().parents(".ui-dialog").find(".ui-dialog-titlebar").remove();
								$( "#dialog-listApply" ).dialog( "open" );
								
							} else if ( str == '' ){
								//로그인 안했을때
								if ( id == '' || lv == '미인증회원' ) {
									swal({
								           text: "인증회원만 신청할 수 있습니다.",
								           buttons: "닫기",
								    });
// 									$( '#dialog-alreadyApply p' ).html("<br/>인증회원만 신청할 수 있습니다.");
// 									$( '#dialog-alreadyApply' ).dialog().parents(".ui-dialog").find(".ui-dialog-titlebar").remove();
// 									$( "#dialog-alreadyApply" ).dialog( "open" );
								//받아온 데이터에 아이디가 있을때	
								} else if ( displayValue.indexOf(id) != -1 ) {
									swal({
								           text: "이미 신청하셨습니다.",
								           buttons: "닫기",
								    });
// 									$( '#dialog-alreadyApply p' ).html("<br/>이미 신청하셨습니다.");
// 									$( '#dialog-alreadyApply' ).dialog().parents(".ui-dialog").find(".ui-dialog-titlebar").remove();
// 									$( "#dialog-alreadyApply" ).dialog( "open" );
								//로그인한상태+아이디가 없을때
								} else {
									self.location = "/apply/addApply?postNo=${adopt.postNo}";
								}
								
								
								
							} else if ( str == 'load' && id != '' && displayValue.indexOf(id) != -1 ) {
								
								$( '#adoptApply' ).text("신청완료");
								
							}
							
				},
				error: function(request, status, error){ 
					console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);  
		        }
				
			});
 	}
  
  // ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
  
		function getApply(applyNo){
//     		var applyNo = parseInt( $(this).children($('input')).val().trim()  );
		  	console.log(applyNo);
		  	
// 		  	var displayValue;
		  	
	  		$.ajax( 
			 		{
						url : "/apply/json/getApply/"+applyNo ,
						method : "POST" ,
						dataType : "json" ,
						headers : {
									"Accept" : "application/json",
									"Content-Type" : "application/json"
								  },
						success : function(data , status) {
								console.log(JSON.stringify(data));
								console.log(data.raise);
							
								var displayValue;
								
								if( data.mate == "있음" && data.raise == "있음" ){
									displayValue = 	 '<p><strong>[연락처]<\/strong> : '+data.phone
													+'<br\/><strong>[직업]<\/strong> : '+data.job
													+'<br\/><strong>[거주지 유형]<\/strong> : '+data.addr
													+'<br\/><strong>[동거인 여부]<\/strong> : '+data.mate
													+'<br\/><strong>[동의 여부]<\/strong> : '+data.mateAgree
													+'<br\/><strong>[양육경험]<\/strong> : '+data.raise
													+'<br\/><strong>[현재 양육 여부]<\/strong> : '+data.currently
													+'<br\/><strong>[앞으로의 계획]<\/strong> : '+data.plan
													+'<br\/><strong>[1년 예상비용]<\/strong> : '+data.pay
													+'<br\/><strong>[입양신청 이유]<\/strong> : '+data.reason
													+'<br\/><strong>[상황에 따른 대처]<\/strong> : '+data.situation +"</p>";
									
								}else if( data.mate == "있음" && data.raise == "없음" ){
									displayValue = 	 '<p><strong>[연락처]<\/strong> : '+data.phone
													+'<br\/><strong>[직업]<\/strong> : '+data.job
													+'<br\/><strong>[거주지 유형]<\/strong> : '+data.addr
													+'<br\/><strong>[동거인 여부]<\/strong> : '+data.mate
													+'<br\/><strong>[동의 여부]<\/strong> : '+data.mateAgree
													+'<br\/><strong>[양육경험]<\/strong> : '+data.raise
													+'<br\/><strong>[앞으로의 계획]<\/strong> : '+data.plan
													+'<br\/><strong>[1년 예상비용]<\/strong> : '+data.pay
													+'<br\/><strong>[입양신청 이유]<\/strong> : '+data.reason
													+'<br\/><strong>[상황에 따른 대처]<\/strong> : '+data.situation +"</p>";
									
								}else if( data.mate == "없음" && data.raise == "있음" ){
									displayValue = 	 '<p><strong>[연락처]<\/strong> : '+data.phone
													+'<br\/><strong>[직업]<\/strong> : '+data.job
													+'<br\/><strong>[거주지 유형]<\/strong> : '+data.addr
													+'<br\/><strong>[동거인 여부]<\/strong> : '+data.mate
													+'<br\/><strong>[양육경험]<\/strong> : '+data.raise
													+'<br\/><strong>[현재 양육 여부]<\/strong> : '+data.currently
													+'<br\/><strong>[앞으로의 계획]<\/strong> : '+data.plan
													+'<br\/><strong>[1년 예상비용]<\/strong> : '+data.pay
													+'<br\/><strong>[입양신청 이유]<\/strong> : '+data.reason
													+'<br\/><strong>[상황에 따른 대처]<\/strong> : '+data.situation +"</p>";
									
								}else{
									displayValue = 	 '<p><strong>[연락처]<\/strong> : '+data.phone
													+'<br\/><strong>[직업]<\/strong> : '+data.job
													+'<br\/><strong>[거주지 유형]<\/strong> : '+data.addr
													+'<br\/><strong>[동거인 여부]<\/strong> : '+data.mate
													+'<br\/><strong>[양육경험]<\/strong> : '+data.raise
													+'<br\/><strong>[앞으로의 계획]<\/strong> : '+data.plan
													+'<br\/><strong>[1년 예상비용]<\/strong> : '+data.pay
													+'<br\/><strong>[입양신청 이유]<\/strong> : '+data.reason
													+'<br\/><strong>[상황에 따른 대처]<\/strong> : '+data.situation +"</p>";
								}
								console.log("-----"+displayValue);
				 				$('#'+data.applyNo+'').after('<tr id="appendTr"><td colspan="3" align="left">'+displayValue+'</td></tr>');
				 				$('#appendTr').focus();
							
					},
					error: function(request, status, error){ 
						console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);  
	//						alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);  
			        }
					
				});
// 	  		return displayValue;
// 	  		console.log("return 확인 : "+displayValue);
	 	}
// 		);
	    
  

	    
  // ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■  
  
  	 function addInterest(postNo, id){
	 		console.log(postNo+","+id);
	  
	  		if ( id == "" ){
	  			
	  			swal({
			           text: "회원만 이용할 수 있는 기능입니다.",
			           dangerMode: true,
			           buttons: {
								 cancel: "닫기",
					   }
	  			});
	  			
	  		}else{
	  			
	  			$.ajax( 
	  			 		{
	  						url : "/adopt/json/addInterest/"+postNo+"/"+id,
	  						method : "GET" ,
	  						dataType : "json" ,
	  						headers : {
	  									"Accept" : "application/json",
	  									"Content-Type" : "application/json"
	  								  },
	  						success : function(data , status) {
	  								console.log(JSON.stringify(data));
	  							
	  					},
	  						error: function(request, status, error){ 
	  								console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);  
	  			        }
	  					
	  				});
	  		}
  		
  	 }
  
  
  
  // ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■  
      $(function() {
    		$( "#dialog-listApply" ).on("click" ,'.trApplyNo' ,function() {
    			var applyNo = parseInt( $(this).children($('input')).val().trim()  );
    			console.log("확인111 : "+applyNo);
    			$('#appendTr').remove();

    			getApply(applyNo);
    			
//     			console.log("return 확인 : "+displayValue);
   		    });
         	
		
    	    $( "button:contains('수정')" ).on("click" , function() {
				self.location = "/adopt/updateAdopt?postNo=${adopt.postNo}"
			});
		
			$( "button:contains('삭제')" ).on("click" , function() {
				swal({
			           text: "삭제하시겠습니까?",
			           dangerMode: true,
			           buttons: {
								 catch: {
								 	text: "예",
//								 	value: "catch",
								 },
								 cancel: "아니오",
					   },
					   
			    }).then((willDelete) => {
			           if (willDelete) {
			        	    self.location = "/adopt/updateStatusCode?postNo=${adopt.postNo}";
// 			           		swal("삭제되었습니다.", {
// 				           		icon: "success",
// 				           		buttons: "닫기"
// 			           		});
			           }
			    });
				
// 				$('#dialog-delAdopt').dialog().parents(".ui-dialog").find(".ui-dialog-titlebar").remove();
// 				$('#dialog-delAdopt').dialog( "open" );
			});
		
			$( "button:contains('입양신청')" ).on("click" , function() {
				listApply('');
// 				self.location = "/apply/addApply?postNo=${adopt.postNo}"
			});
		
			$( "button:contains('신청서확인')" ).on("click" , function() {
				listApply('확인');
// 				self.location = "/apply/listApply?adoptNo=${adopt.postNo}"
			});
		
			$( "button:contains('문의')" ).on("click" , function() {
				$('#dialog-message').dialog().parents(".ui-dialog").find(".ui-dialog-titlebar").remove();
				$('#dialog-message').dialog( "open" );
			});
		
			$( "#adoptCompleteButton" ).on("click" , function() {
				swal({
// 			           title: "분양완료 상태로 변경하시겠습니까?",
			           text: "분양완료 상태로 변경하시겠습니까?",
// 			           icon: "success",
			           buttons: {
								 catch: {
								 	text: "예",
// 								 	value: "catch",
								 },
								 cancel: "아니오",
					   },
					   
			    }).then((willDelete) => {
			           if (willDelete) {
			        	    fncComplete();
			           		swal("변경되었습니다.", {
				           		icon: "success",
				           		buttons: "닫기"
			           		});
			           }
			    });
			});
		
			$( "#missingCompleteButton" ).on("click" , function() {
				swal({
			           text: "찾기완료 상태로 변경하시겠습니까?",
//			           icon: "success",
			           buttons: {
								 catch: {
								 	text: "예",
//								 	value: "catch",
								 },
								 cancel: "아니오",
					   },
					   
			    }).then((willDelete) => {
			           if (willDelete) {
			        	    fncComplete();
			           		swal("변경되었습니다.", {
				           		icon: "success",
				           		buttons: "닫기"
			           		});
			           }
			    });
// 				$('#dialog-missingComplete').dialog().parents(".ui-dialog").find(".ui-dialog-titlebar").remove();
// 				$('#dialog-missingComplete').dialog( "open" );
			});
		
			$( "button:contains('목록')" ).on("click" , function() {
				self.location = "/adopt/listAdopt?boardCode=${adopt.boardCode}"
			});
		
			$( ".glyphicon-heart-empty" ).on("click" , function() {
// 				alert("sdas");
				addInterest(  $('input[name=postNo]').val() ,  $('input[name=userId]').val() );
			});
			

// 			$( "#heartIcon" ).hover(
// 				function() {
// 					$( this ).html( "<span class=\"glyphicon glyphicon-heart\"></span>" );
// 				}, function() {
// 					$( this ).html( "<span class=\"glyphicon glyphicon-heart-empty\" color=\"#f04f23\"></span>" );
// 				}
// 			);


	  });
  


      

    </script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDaDu7bjQpGLN3nKnUfulB3khHE-iGQap0&callback=initMap"
    async defer></script>
    

  </body>
</html>
  
    