 <%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
	<title>ADD ADOPTREVIEW</title>
    <meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800" rel="stylesheet">

    <link rel="stylesheet" href="/resources/prodmenu/css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="/resources/prodmenu/css/animate.css">
    
    <link rel="stylesheet" href="/resources/prodmenu/css/owl.carousel.min.css">
    <link rel="stylesheet" href="/resources/prodmenu/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="/resources/prodmenu/css/magnific-popup.css">

    <link rel="stylesheet" href="/resources/prodmenu/css/aos.css">

    <link rel="stylesheet" href="/resources/prodmenu/css/ionicons.min.css">

    <link rel="stylesheet" href="/resources/prodmenu/css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="/resources/prodmenu/css/jquery.timepicker.css">

    <link rel="stylesheet" href="/resources/prodmenu/css/flaticon.css">
    <link rel="stylesheet" href="/resources/prodmenu/css/icomoon.css">
    <link rel="stylesheet" href="/resources/prodmenu/css/style.css">
    
    <style type="text/css">
    	html {
	 	 scroll-behavior: smooth;
		}
    	#editor {
			min-height: 600px;
			max-width: 1130px;
			margin-left: 15px;
			text-align: left;
		}
		.ck.ck-editor {
			min-width: 95%;
		}
		
		.ck-editor__editable {
			text-align: left;
			min-height: 300px;
			min-width: 95%;
		}
		#preview img {
			width: 100px;
			height: 100px;
		}
		
		#preview p {
			text-overflow: ellipsis;
			overflow: hidden;
		}
		
		.preview-box {
			padding: 5px;
			border-radius: 2px;
			margin-bottom: 10px;
		}
		.waves-effect waves-teal btn-flat {
			background-color: #3e6dad;
			color: white;
			border-radius: 10px;
		}
		
    
    </style>
  </head>
  <body class="goto-here">
<%-- 		<jsp:include page="/layout/toolbar.jsp"></jsp:include> --%>

    <div class="hero-wrap hero-bread" style="background-image: url('images/bg_6.jpg');">
      <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center">
          <div class="col-md-9 ftco-animate text-center">
<!--           	<p class="breadcrumbs"><span class="mr-2"><a href="index0.html">Home</a></span> <span>Checkout</span></p> -->
            <h1 class="mb-0 bread" id="h1">
           		후기 수정
            </h1>
          </div>
        </div>
      </div>
    </div>
    
    

    <section class="ftco-section">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-xl-8 ftco-animate">
			<form  class="billing-form" name="detailForm">
	          	<div class="row align-items-end">
	          	
	          	
				<input type="hidden" name="boardCode" value="${board.boardCode }" >
				<input type="hidden" name="id" value="${board.id }" >
				<input type="hidden" name="nickName" value="${board.nickName }" >
				<input type="hidden" name="postContent" value="${board.postContent }" >
				<input type="hidden" name="regDate" value="${board.regDate }" >
				<input type="hidden" name="postNo" value="${board.postNo }" >
				<input type="hidden" name="viewCount" value="${board.viewCount }" >
<!-- 				<input type="hidden" class="form-control" id="multiFile" name="multiFile" > -->
				
				<div class="col-md-12">
	          		<div class="cart-detail bg-light p-3 p-md-4">
						<div class="form-group">
							<div class="col-md-12"><p align="center"><strong>후기글을 등록하면 15일간은 삭제하실 수 없습니다.</strong></p></div>
						</div>
					</div>
				</div>
				
	          	
	          	<div class="col-md-12"><br/><hr/><br/></div>
	          	
	          		<div class="col-md-12">
		                <div class="form-group">
		                	<label for="postTitle"><strong>글제목</strong>&nbsp;&nbsp;<span name="postTitle"></span></label>
		                	<input type="text" class="form-control" name="postTitle" value="${board.postTitle }" placeholder="제목을 입력하세요.">
		                </div>
	                </div>

	                <div class="col-md-12"></div>
	                
	                
	                <div class="col-md-12"><br/>
	                <div class="row">
					<div class="col-xs-12 col-md-12">
						<div class="body">
							<!-- 첨부 버튼 -->
							<div id="attach">
								<label class="waves-effect waves-teal btn-flat"
									for="uploadInputBox"><strong>사진첨부</strong></label> <input id="uploadInputBox"
									style="display: none" type="file" name="filedata" multiple />
							</div>

							<!-- 미리보기 영역 -->
							<div id="preview" class="content"></div>

							<!-- multipart 업로드시 영역 -->
 							<div id="uploadForm" style="display: none;"></div>
						</div>
					</div>
				</div>
</div>
			
		            
		            <div class="col-md-12"><br/></div>
	
               		<div class="col-md-12">
		                <div class="form-group">
		                	<label for="postContent"><strong>글내용</strong></label>&nbsp;&nbsp;<span name="postContent"></span>
<!-- 		                	<input type="text" class="form-control" name="postContent" value="dd" placeholder="내용을 입력하세요."> -->
<!-- 		                	<textarea  class="form-control"  name="postContent"  rows="10"  placeholder="내용을 입력하세요."></textarea> -->
		               
		                 <div class="postForm" align="center">
						<div id="toolbar-container" class="col-xs-12 col-md-12"></div>
						<textarea class="col-xs-12 col-md-12" id="editor"
						name="postContent" style="text-align: left;">
						${board.postContent}
					</textarea>
					</div>
		               
		                </div>
	                </div>
	                
	                
               		
               		<div class="w-100"></div>
		            <div class="w-100"></div>
               		<div class="w-100"></div>
                
	            </div>
	          </form>
	          
	          <!-- END -->


	          <div class="row mt-5 pt-3 d-flex">
	          	<div class="col-md-12">
					<p><button class="btn btn-primary py-3 px-4 col-md-12">수정</button></p>
					
					<div class="form-group">
						<div class="col-md-12">
							<div class="radio" align="right">
								<p><a href="#" ><font color="gray">취소</font></a></p>
							</div>
						</div>
					</div>
	          	</div>
	          </div>
	          
	          
 <!-- 	■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■       dialog       ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ -->
  
<!-- 			<div id="dialog-postTitle" title=""> -->
<!-- 			  <p align="center"><br/>제목을 입력해주세요.</p> -->
<!-- 			</div>        -->
<!-- 			<div id="dialog-postTitleLength" title=""> -->
<!-- 			  <p align="center"><br/>제목은 10자까지 입력할 수 있습니다.</p> -->
<!-- 			</div>        -->
<!-- 			<div id="dialog-img" title=""> -->
<!-- 			  <p align="center"><br/>이미지를 등록해주세요.</p> -->
<!-- 			</div>    -->
			<div id="dialog-postContent" title="">
			  <p align="center"><br/>내용을 입력해주세요.</p>
			</div>      
			<div id="dialog-postContentLength" title="">
			  <p align="center"><br/>내용는 100자까지 입력할 수 있습니다.</p>
			</div>      
       
<!-- 	■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■   dialog  ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ -->      
	          
	          
          </div> <!-- .col-md-8 -->
        </div>
      </div>
    </section> <!-- .section -->

    
    
  

  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>

  <!-- dialog -->
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  
  <!-- 템플릿 -->
  <script src="/resources/prodmenu/js/jquery.min.js"></script>
  <script src="/resources/prodmenu/js/jquery-migrate-3.0.1.min.js"></script>
  <script src="/resources/prodmenu/js/popper.min.js"></script>
  <script src="/resources/prodmenu/js/bootstrap.min.js"></script>
  <script src="/resources/prodmenu/js/jquery.easing.1.3.js"></script>
  <script src="/resources/prodmenu/js/jquery.waypoints.min.js"></script>
  <script src="/resources/prodmenu/js/jquery.stellar.min.js"></script>
  <script src="/resources/prodmenu/js/owl.carousel.min.js"></script>
  <script src="/resources/prodmenu/js/jquery.magnific-popup.min.js"></script>
  <script src="/resources/prodmenu/js/aos.js"></script>
  <script src="/resources/prodmenu/js/jquery.animateNumber.min.js"></script>
  <script src="/resources/prodmenu/js/bootstrap-datepicker.js"></script>
  <script src="/resources/prodmenu/js/scrollax.min.js"></script>
  <script src="/resources/prodmenu/js/main.js"></script>
  
  <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
  <script type="text/javascript" src="/resources/events.js"></script>
  
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.form/4.2.2/jquery.form.min.js"></script>
  <script src="https://cdn.ckeditor.com/ckeditor5/12.3.0/classic/ckeditor.js"></script>
  <script>
  
 	 let editor;

		ClassicEditor
	    .create( document.querySelector( '#editor' ),{
	    
      	toolbar : [ 'heading', '|', 'bold', 'italic', 'link', 'bulletedList', 'numberedList', 'blockQuote' ],
      	heading: {
              options: [
                  { model: 'paragraph', title: 'Paragraph', class: 'ck-heading_paragraph' },
                  { model: 'heading1', view: 'h1', title: 'Heading 1', class: 'ck-heading_heading1' },
                  { model: 'heading2', view: 'h2', title: 'Heading 2', class: 'ck-heading_heading2' }
              ]
          }
	    	
	    })
	    .then( newEditor => {
	        editor = newEditor;
	    } )
	    .catch( error => {
	        console.error( error );
	    } );
		
		var content= $('input[name=postContent]').val();
// 		editor.setData(content);
// 		$('textarea').val(content);


	  //============= "다중파일업로드"  Event 처리 및  연결 =============      

	  //임의의 file object영역
	 var files = {};
	 var previewIndex = 0;
	 var fileNameArray = new Array();
	 
	 // image preview 기능 구현
	 // input = file object[]
	 function addPreview(input) {
        if (input[0].files) {
            //파일 선택이 여러개였을 시의 대응
            for (var fileIndex = 0; fileIndex < input[0].files.length; fileIndex++) {
                var file = input[0].files[fileIndex];

                if (validation(file.name))
                    continue;

    	        var fileName = file.name + "";   
    	        var fileNameExtensionIndex = fileName.lastIndexOf('.') + 1;
    	        var fileNameExtension = fileName.toLowerCase().substring(fileNameExtensionIndex, fileName.length);       
    	        
					var imgSelectName = "img";

					if(fileNameExtension === 'mp4' || fileNameExtension === 'avi'){
						imgSelectName = "iframe";
					}	                        
                

                var reader = new FileReader();
                reader.onload = function(img) {
                    //div id="preview" 내에 동적코드추가.
                    //이 부분을 수정해서 이미지 링크 외 파일명, 사이즈 등의 부가설명을 할 수 있을 것이다.
                    var imgNum = previewIndex++;
                    
                    var previewId = "";
                   
                    if(imgNum==0){
                    	previewId = "start";
                    }else{
                    	previewId = "startNo";	
                    }
                	
                	document.querySelector( '#editor' ).addEventListener( 'click', () => {
                	    const editorData = editor.getData();     	           
                	} );
                	
                	alert(img.target.result);
                    editor.setData(editor.getData()+"<p><"+imgSelectName+" src='" + img.target.result + "' style='min-width:100%'/></p><p/>");		
                
                    
                    $("#preview").append(
                                    "<div class=\"preview-box\" id="+previewId+"  value=\"" + imgNum +"\"  style='display:inline;float:left;width:208px' >"
                                            + "<"+imgSelectName+" class=\"thumbnail\" src=\"" + img.target.result + "\"\/ width=\"200px;\" height=\"200px;\"/>"
                                            + "<a href=\"#\" value=\""
                                            + imgNum
                                            + "\" onclick=\"deletePreview(this)\">"
                                            + "삭제" + "</a>" + "</div>");
                    files[imgNum] = file;
                    
                    fileNameArray[imgNum]=file.name;
                    fnAddFile(fileNameArray);
                };

                reader.readAsDataURL(file);
            }
        } else
            alert('invalid file input'); // 첨부클릭 후 취소시의 대응책은 세우지 않았다.
    }
	 

	 

	 //============= preview 영역에서 삭제 버튼 클릭시 해당 미리보기이미지 영역 삭제 =============
	 function deletePreview(obj) {
        var imgNum = obj.attributes['value'].value;
        delete files[imgNum];
        $("#preview .preview-box[value=" + imgNum + "]").remove();
        resizeHeight();
    }

	 //============= 파일 확장자 validation 체크 =============
	 function validation(fileName) {
        fileName = fileName + "";
        var fileNameExtensionIndex = fileName.lastIndexOf('.') + 1;
        var fileNameExtension = fileName.toLowerCase().substring(
                fileNameExtensionIndex, fileName.length);
        if (!((fileNameExtension === 'jpg')|| (fileNameExtension === 'gif') || (fileNameExtension === 'png')||(fileNameExtension === 'avi')||(fileNameExtension === 'mp4'))) {
            alert('jpg, gif, png, avi, mp4 확장자만 업로드 가능합니다.');
            return true;
        } else {
            return false;
        }
    }
	 

	$(document).ready(function() {
	      //============= 사진미리보기 =============
		$('#attach input[type=file]').change(function() {
			addPreview($(this)); //preview form 추가하기
		});
	});
	
	// ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■   ↑ 파일업로드      ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


	var boardCode = $( 'input[name=boardCode]' ).val().trim();
	
	$( function() {
	    $( "#dialog-postContent, #dialog-postContentLength" ).dialog({
	    	autoOpen: false,
		      width: 350,
		      height: 180,
		      modal: true,
		      buttons: {
		    	  닫기: function(){
		    		  $( this ).dialog( "close" );
		    		  jQuery($("textarea[name=postContent]"))[0].scrollIntoView(true);
		    	  }
		      }
	    });
	});
	

	
	//■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■     ↑  dialog      ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■	

	$( "input[name=postTitle]" ).keyup(function( ) {
		if($("input[name=postTitle]").val().length > 10 ){
			$("span[name=postTitle]").text('10자까지 입력할 수 있습니다.');
		}else{
			$("span[name=postTitle]").text('');
		}
	});
	
	
	$( "textarea[name=postContent]" ).keyup(function( ) {
		if($("textarea[name=postContent]").text().length > 100 ){
			$("span[name=postContent]").text('100자까지 입력할 수 있습니다.');
		}else{
			$("span[name=postContent]").text('');
		}
	});

	//■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■      ↑  글자수체크           ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
	
	
	// 등록버튼 누르고
	function fncAddAdoptReview(){

// 		  if( $("input[name=postTitle]").val().trim() == '' ||  $("input[name=postTitle]").val().length >10 ){
// 			  $("input[name=postTitle]").focus();
// 			  $('#dialog-postContent').dialog().parents(".ui-dialog").find(".ui-dialog-titlebar").remove();
// 			  $('#dialog-postContent').dialog( "open" );
// 			  return;
// 		  }
// 		  if(){
// 			  $('#dialog-postTitleLength').dialog( "open" );
// 			  return;
// 		  }
// 		  if( $("textarea[name=postContent]").text().trim() == '' || $("textarea[name=postContent]").val().length > 100 ){
// 			  $('#dialog-postContent').dialog().parents(".ui-dialog").find(".ui-dialog-titlebar").remove();
// 			  $('#dialog-postContent').dialog( "open" );
// 			  return;
// 		  }
// 		  if( $("textarea[name=postContent]").val().trim() == '' || $("textarea[name=postContent]").val().length > 100 ){
// 			  $("textarea[name=postContent]").focus();
// // 			  $('#dialog-postContent').dialog( "open" );
// 			  return;
// 		  }
// 		  if( $("input[name=postContent]").val().length > 100 ){
// 			  $('#dialog-postContentLength').dialog( "open" );
// 			  return;
// 		  }
		

		var postContent = $("#editor").text();
		$("form[name=detailForm]").attr("method" , "POST").attr("action" , "/adoptReview/updateAdoptReview").attr("enctype","multipart/form-data").submit();
		
	}
	

    $(function() {
			$( "button:contains('수정')" ).on("click" , function() {
				$('textarea').val(editor.getData());
				console.log($('textarea').val());
				fncAddAdoptReview();
			});
			
			$( "a:contains('취소')" ).on("click" , function() {
				self.location = "/adopt/listAdoptReview"
			});
	 });	
      
      
    </script>

  
  
  
  
  </body>
</html>