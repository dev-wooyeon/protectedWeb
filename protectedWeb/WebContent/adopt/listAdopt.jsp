<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page pageEncoding="EUC-KR"%>

<!--  ///////////////////////// JSTL  ////////////////////////// -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>

<html lang="ko">
	
<head>
	<meta charset="EUC-KR">
	
	<!-- 참조 : http://getbootstrap.com/css/   참조 -->
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<!--  ///////////////////////// Bootstrap, jQuery CDN ////////////////////////// -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >
	
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>
	

	
	<!--  ///////////////////////// CSS ////////////////////////// -->
	<style>
	  	body {
            padding-top : 50px;
        }
        img { 
     		max-height: 250px; 
     		min-height: 250px; 
     		width: 100%; 
     		vertical-align: middle;
       }
        
        figure.snip1384 {
			font-family: 'Raleway', Arial, sans-serif;
			position: relative;
			overflow: hidden;
			margin: 10px;
			min-width: 230px;
			max-width: 315px;
			width: 100%;
			color: #ffffff;
			text-align: left;
			font-size: 16px;
			background-color: #000000;
		}
    </style>
    
     <!--  ///////////////////////// JavaScript ////////////////////////// -->
	<script type="text/javascript">
	
		//=============    검색 / page 두가지 경우 모두  Event  처리 =============	
		function fncGetList(currentPage) {
			var ccc = $( '#boardCode' ).val();
			$("#currentPage").val(currentPage)
			$("form").attr("method" , "POST").attr("action" , "/adopt/listAdopt?boardCode="+ccc).submit();
		}
		
		
		//============= "검색"  Event  처리 =============	
		 $(function() {
			 //==> DOM Object GET 3가지 방법 ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
			 $( "button:contains('검색')" ).on("click" , function() {
				fncGetList(1);
			});
			 $( "figure" ).on("click" , function() {
				 self.location ="/adopt/getAdopt?postNo="+$(this).children( $('input')).val().trim();
			});
		 });
		
		
		//============= userId 에 회원정보보기  Event  처리(Click) =============	
		 $(function() {
		
			//==> DOM Object GET 3가지 방법 ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
			$( "td:nth-child(3)" ).on("click" , function() {
				alert("글번호 : "+$(this).children().val().trim());
				 self.location ="/adopt/getAdopt?postNo="+$(this).children().val().trim();
			});
					
			$( "button:contains('보호할개')" ).on("click" , function() {
				self.location = "../index.jsp"
			});
			
			$( "button:contains('글쓰기')" ).on("click" , function() {
				self.location = "/adopt/addAdopt?boardCode=${param.boardCode}"
			});

			//==> userId LINK Event End User 에게 보일수 있도록 
			$( "td:nth-child(2)" ).css("color" , "red");
			
		});	
		
		
		//============= userId 에 회원정보보기  Event  처리 (double Click)=============
		 $(function() {
			 
			//==> DOM Object GET 3가지 방법 ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
			$( ".ct_list_pop td:nth-child(3)" ).css("color" , "red");
			$("h7").css("color" , "red");
			$(".ct_list_pop:nth-child(4n+6)" ).css("background-color" , "whitesmoke");
		});	
	
	</script>
	
</head>

<body>

<jsp:include page="/layout/toolbar.jsp"></jsp:include>
	<!--  화면구성 div Start /////////////////////////////////////-->
	<div class="container ">
	<button type="button" class="btn btn-primary">보호할개</button>
	<input type="hidden" id="boardCode" value="${param.boardCode }">
	
		<div class="page-header text-info">
	       <h3>
	       	<c:if test="${param.boardCode eq 'AD' }">
	  			분양글 리스트
	  		</c:if>
		    <c:if test="${param.boardCode eq 'MS' }">
	  			실종글 리스트
	  		</c:if>
	       </h3>
	    </div>
	    
	    <!-- table 위쪽 검색 Start /////////////////////////////////////-->
	    <div class="row">
	    
		    <div class="col-md-6 text-left">
		    	<p class="text-primary">
		    		전체  ${resultPage.totalCount } 건수, 현재 ${resultPage.currentPage}  페이지
		    	</p>
		    </div>
		    
		    
	    	
		</div>
		<!-- table 위쪽 검색 Start /////////////////////////////////////-->
		
		
      <!--  table Start /////////////////////////////////////-->
<!--       <table class="table table-hover table-striped" > -->
      
<!--         <thead> -->
<!--           <tr> -->
<!--             <th align="center">No</th> -->
<!--             <th align="left" >글제목</th> -->
<!--             <th align="left">견종</th> -->
<!--             <th align="left"> -->
<%-- 	            <c:if test="${param.boardCode eq 'AD' }"> --%>
<!-- 		  			책임비 -->
<%-- 		  		</c:if> --%>
<%-- 			    <c:if test="${param.boardCode eq 'MS' }"> --%>
<!-- 		  			사례비 -->
<%-- 		  		</c:if> --%>
<!--             </th> -->
<!--           </tr> -->
<!--         </thead> -->
       
<!-- 		<tbody> -->
		
		  
        
<!--         </tbody> -->
      
<!--       </table> -->
      <div class="row">
      <div class="col-md-12"></div>
      <div class="col-md-12">
      <c:set var="i" value="0" />
		  <c:forEach var="adopt" items="${list}">
			<c:set var="i" value="${ i+1 }" />
			
<!-- 			<tr> -->
<%-- 			  <td align="center">${ i }</td> --%>
<%-- 			  <td align="center"><img src="../resources/file/fileAdopt/${adopt.mainFile}" onerror="this.src='http://placehold.it/400x400'"></td> --%>
<%-- 			  <td align="left">${adopt.postTitle} --%>
<%-- 			  	<input type="hidden" id="postNo" value="${adopt.postNo}"> --%>
<%-- 			  	<c:if test="${adopt.statusCode eq '3' }"> --%>
<!-- 				  	<span class="label label-default"> -->
<%-- 					  	<c:if test="${adopt.boardCode eq 'AD' }">분양완료</c:if> --%>
<%-- 					  	<c:if test="${adopt.boardCode eq 'MS' }">찾기완료</c:if> --%>
<!-- 				  	</span> -->
<%-- 			  	</c:if> --%>
<!-- 			  </td> -->
<%-- 			  <td align="left">${adopt.dogBreed}</td> --%>
<%-- 			  <td align="left">${adopt.dogPay}원</td> --%>
<!-- 			</tr> -->
			
			<div class="col-sm-4 col-md-3" style="vertical-align: middle;margin-top: ">
			<figure>
			<input type="hidden" name="postNo" value="${adopt.postNo}"/>
				  <img src="../resources/file/fileAdopt/${adopt.mainFile}"  onerror="this.src='http://placehold.it/400x400'"/>
				  <figcaption>
					    <h3>${adopt.postTitle}</h3>
				  </figcaption>
			</figure>
			</div>	
			
          </c:forEach></div>
          </div>
          <div class="col-md-12">
		 <br/>  	<br/>
		    </div>
	  <!--  table End /////////////////////////////////////-->
	  
	  <div class="col-md-12 text-right">
			    <form class="form-inline" name="detailForm">
			    
				  <div class="form-group">
				    <select class="form-control" name="searchCondition" >
						<option value="0"  ${ ! empty search.searchCondition && search.searchCondition==0 ? "selected" : "" }>제목</option>
						<option value="1"  ${ ! empty search.searchCondition && search.searchCondition==1 ? "selected" : "" }>내용</option>
					</select>
				  </div>
				  
				  <div class="form-group">
				    <label class="sr-only" for="searchKeyword">검색어</label>
				    <input type="text" class="form-control" id="searchKeyword" name="searchKeyword"  placeholder="검색어"
				    			 value="${! empty search.searchKeyword ? search.searchKeyword : '' }"  >
				  </div>
				  
				  <button type="button" class="btn btn-default">검색</button>
				  <button type="button" class="btn btn-primary">글쓰기</button>
				  
				  <input type="hidden" id="currentPage" name="currentPage" value=""/>
				  
				</form>
	    	</div>
	  
 	</div>
 	<!--  화면구성 div End /////////////////////////////////////-->
 	
 	
 	<!-- PageNavigation Start... -->
<%-- 	<jsp:include page="../common/pageNavigator_new.jsp"/> --%>
	<!-- PageNavigation End... -->
	
</body>

</html>