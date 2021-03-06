<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
  <head>

    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
    <title>상품 수정</title>    
    <style>


#td1{
    width:15%;
    vertical-align: middle;
}
#td2{
    width:35%;
    vertical-align: middle;
}
#td3{
    width:15%;
    vertical-align: middle;
}
#td4{
    width:35%;
    vertical-align: middle;
}

input, select,textarea{
    border: 1px solid #CCCCCC;
}


/*파일첨부 이미지*/
.where {
  display: block;
  margin: 25px 15px;
  font-size: 11px;
  color: #000;
  text-decoration: none;
  font-family: verdana;
  font-style: italic;
} 

.filebox input[type="file"] {
    position: absolute;
    width: 1px;
    height: 1px;
    padding: 0;
    margin: -1px;
    overflow: hidden;
    clip:rect(0,0,0,0);
    border: 0;
}

.filebox label {
    display: inline-block;
    padding: .5em .75em;
    color: #999;
    font-size: inherit;
    line-height: normal;
    vertical-align: middle;
    background-color: #fdfdfd;
    cursor: pointer;
    border: 1px solid #ebebeb;
    border-bottom-color: #e2e2e2;
    border-radius: .25em;
    margin-bottom:0px !important;
}

/* named upload */
.filebox .upload-name {
    display: inline-block;
    padding: .5em .75em;
    font-size: inherit;
    font-family: inherit;
    line-height: normal;
    vertical-align: middle;
    background-color: #f5f5f5;
  border: 1px solid #ebebeb;
  border-bottom-color: #e2e2e2;
  border-radius: .25em;
  -webkit-appearance: none; /* 네이티브 외형 감추기 */
  -moz-appearance: none;
  appearance: none;
}

/* imaged preview */
.filebox .upload-display {
    margin-bottom: 5px;
}

@media(min-width: 768px) {
    .filebox .upload-display {
        display: inline-block;
        margin-right: 5px;
        margin-bottom: 0;
    }
}

.filebox .upload-thumb-wrap {
    display: inline-block;
    width: 200px;
    padding: 2px;
    vertical-align: middle;
    border: 1px solid #ddd;
    border-radius: 5px;
    background-color: #fff;
}

.filebox .upload-display img {
    display: block;
    max-width: 100%;
    width: 100% \9;
    height: auto;
}

.filebox.bs3-primary label {
  color: #fff;
  background-color: #337ab7;
    border-color: #2e6da4;
}

#itemImage{
	width:100%; 
	overflow-y:auto; 
    overflow-x:hidden; 
    height:500px; 
    border:1px solid #dee2e6;
}

</style>

</head>

    <body>
    <jsp:include page="../common/adminMenubar.jsp"/>
        <div class="content">
            <div class="container box">
                <h3>상품 상세 정보</h3>
                <br>

                <br><br>
                <form action="itemUpdate.do" method="post" encType="multipart/form-data" onsubmit="return validate()">
              		<input type="hidden" name="page" value="${page }">
              		<input type="hidden" name="itemNo" value="${i.itemNo }">
              		
              		
                <table>
                    <tr>
                        <td id="td1" style="vertical-align: middle;">상품명</td>
                        <td colspan="3">
                                 <select name="categoryNo" id="category" style="float:left;">
                                 
                                 <c:if test="${i.categoryNo eq 'F1' }">
                                    <option value="F1" selected>음료</option>
                                    <option value="F2">유제품</option>
                                    <option value="F3">베이커리</option>
                                    <option value="F4">간편식</option>
                                    <option value="F5">건강식품</option>
                                    <option value="F6">다이어트식단</option>
                                    <option value="L1">홈데코</option>
                                    <option value="L2">바디케어</option>
                                    <option value="L3">생활용품</option>
                              	</c:if>
                              	
                              	<c:if test="${i.categoryNo eq 'F2' }">
                                    <option value="F1">음료</option>
                                    <option value="F2" selected>유제품</option>
                                    <option value="F3">베이커리</option>
                                    <option value="F4">간편식</option>
                                    <option value="F5">건강식품</option>
                                    <option value="F6">다이어트식단</option>
                                    <option value="L1">홈데코</option>
                                    <option value="L2">바디케어</option>
                                    <option value="L3">생활용품</option>
                              	</c:if>
                              	
                              	<c:if test="${i.categoryNo eq 'F3' }">
                                    <option value="F1">음료</option>
                                    <option value="F2">유제품</option>
                                    <option value="F3" selected>베이커리</option>
                                    <option value="F4">간편식</option>
                                    <option value="F5">건강식품</option>
                                    <option value="F6">다이어트식단</option>
                                    <option value="L1">홈데코</option>
                                    <option value="L2">바디케어</option>
                                    <option value="L3">생활용품</option>
                              	</c:if>
                              	
                              	<c:if test="${i.categoryNo eq 'F4' }">
                                    <option value="F1">음료</option>
                                    <option value="F2">유제품</option>
                                    <option value="F3">베이커리</option>
                                    <option value="F4" selected>간편식</option>
                                    <option value="F5">건강식품</option>
                                    <option value="F6">다이어트식단</option>
                                    <option value="L1">홈데코</option>
                                    <option value="L2">바디케어</option>
                                    <option value="L3">생활용품</option>
                              	</c:if>
                                    
                                <c:if test="${i.categoryNo eq 'F5' }">
                                    <option value="F1">음료</option>
                                    <option value="F2">유제품</option>
                                    <option value="F3">베이커리</option>
                                    <option value="F4">간편식</option>
                                    <option value="F5" selected>건강식품</option>
                                    <option value="F6">다이어트식단</option>
                                    <option value="L1">홈데코</option>
                                    <option value="L2">바디케어</option>
                                    <option value="L3">생활용품</option>
                              	</c:if>   
                              	
                              	<c:if test="${i.categoryNo eq 'F6' }">
                                    <option value="F1">음료</option>
                                    <option value="F2">유제품</option>
                                    <option value="F3">베이커리</option>
                                    <option value="F4">간편식</option>
                                    <option value="F5">건강식품</option>
                                    <option value="F6" selected>다이어트식단</option>
                                    <option value="L1">홈데코</option>
                                    <option value="L2">바디케어</option>
                                    <option value="L3">생활용품</option>
                              	</c:if>  
                              	
                              	<c:if test="${i.categoryNo eq 'L1' }">
                                    <option value="F1">음료</option>
                                    <option value="F2">유제품</option>
                                    <option value="F3">베이커리</option>
                                    <option value="F4">간편식</option>
                                    <option value="F5">건강식품</option>
                                    <option value="F6">다이어트식단</option>
                                    <option value="L1" selected>홈데코</option>
                                    <option value="L2">바디케어</option>
                                    <option value="L3">생활용품</option>
                              	</c:if>  
                              	
                              	<c:if test="${i.categoryNo eq 'L2' }">
                                    <option value="F1">음료</option>
                                    <option value="F2">유제품</option>
                                    <option value="F3">베이커리</option>
                                    <option value="F4">간편식</option>
                                    <option value="F5">건강식품</option>
                                    <option value="F6">다이어트식단</option>
                                    <option value="L1">홈데코</option>
                                    <option value="L2" selected>바디케어</option>
                                    <option value="L3">생활용품</option>
                              	</c:if>
                              	
                              	<c:if test="${i.categoryNo eq 'L3' }">
                                    <option value="F1">음료</option>
                                    <option value="F2">유제품</option>
                                    <option value="F3">베이커리</option>
                                    <option value="F4">간편식</option>
                                    <option value="F5">건강식품</option>
                                    <option value="F6">다이어트식단</option>
                                    <option value="L1">홈데코</option>
                                    <option value="L2">바디케어</option>
                                    <option value="L3" selected>생활용품</option>
                              	</c:if>    
                                </select>
                                <input type="text" name="itemName" style="width:100%; margin:3px;" value="${i.itemName }">
                        </td>
                       
                    </tr>
                    <tr>
                        <td id="td1">상품 메모</td>
                        <td colspan="3">
                            <input type="text" name="itemMemo" style="width:100%;" value="${i.itemMemo }">
                        </td>
                    </tr>
                    <tr>
                        <td id="td1">가격</td>
                        <td id="td2">
                            <input type="text" name="itemPrice"  style="width:100%;" value="${i.itemPrice }">
                        </td>
                        <td id="td3"> 추천 선택</td>
                        <td id="td4">
                        	<c:if test="${i.itemRecommend eq 'F'}">
	                            <input type="radio" name="itemRecommend" value="F" checked>&nbsp;여성 &nbsp; &nbsp; &nbsp;
	                            <input type="radio" name="itemRecommend" value="M">&nbsp;남성 &nbsp; &nbsp; &nbsp;
	                            <input type="radio" name="itemRecommend" value="C">&nbsp;공통
                            </c:if>
                            <c:if test="${i.itemRecommend eq 'M'}">
	                            <input type="radio" name="itemRecommend" value="F">&nbsp;여성 &nbsp; &nbsp; &nbsp;
	                            <input type="radio" name="itemRecommend" value="M" checked>&nbsp;남성 &nbsp; &nbsp; &nbsp;
	                            <input type="radio" name="itemRecommend" value="C">&nbsp;공통
                            </c:if>
                            <c:if test="${i.itemRecommend eq 'C'}">
	                            <input type="radio" name="itemRecommend" value="F">&nbsp;여성 &nbsp; &nbsp; &nbsp;
	                            <input type="radio" name="itemRecommend" value="M">&nbsp;남성 &nbsp; &nbsp; &nbsp;
	                            <input type="radio" name="itemRecommend" value="C" checked>&nbsp;공통
                            </c:if>
                        </td>

                    </tr>

                    <tr>
                        <td id="td1"> 게시 상태</td>
                        <td id="td2">
	                    	<c:if test="${i.itemDpStatus eq 'Y' }">
	                            <input type="radio" name="itemDpStatus" value="Y" checked>&nbsp;게시 &nbsp; &nbsp; &nbsp;
	                            <input type="radio" name="itemDpStatus" value="N">&nbsp;중지
	                        </c:if>
	                        <c:if test="${i.itemDpStatus eq 'N' }">
	                            <input type="radio" name="itemDpStatus" value="Y">&nbsp;게시 &nbsp; &nbsp; &nbsp;
	                            <input type="radio" name="itemDpStatus" value="N" checked>&nbsp;중지
	                        </c:if>
                        </td>
                        <td id="td3">이벤트 상품 여부</td>
                        <td id="td4">
                        	<c:if test="${i.itemEventStatus eq 'Y'}">
                        	O
                        		<!-- <input type="radio" name="itemEventStatus" value="Y" checked>&nbsp;O &nbsp; &nbsp; &nbsp;
	                            <input type="radio" name="itemEventStatus" value="N">&nbsp;X   -->
                            </c:if>
                            <c:if test="${i.itemEventStatus eq 'N'}">
                            X
                         
	                           <!-- <input type="radio" name="itemEventStatus" value="Y">&nbsp;O&nbsp; &nbsp; &nbsp;
	                            <input type="radio" name="itemEventStatus" value="N" checked>&nbsp;X -->
                            </c:if>
                        </td>

                    </tr>
                    
                    <c:if test="${i.itemEventStatus eq 'Y' }">
                    	<tr>
                    		<td>이벤트 명</td>
                    		<td colspan="2">${i.eventName }<td>
                    	</tr>
                    </c:if>

                    <tr>
                        <td id="td1">제품 상세 이미지</td>
                        <td colspan="3">
							<div id="itemImage">
                        		<c:if test="${!empty i.imageRename }">
									<img id="beforeImage" src="${contextPath }/resources/uploadFiles/${i.imageRename }">
								</c:if>
								<c:if test="${empty i.imageRename }">
	                            	<div id="itemImage"></div>
	                            </c:if>
							</div>
								
								
                        </td>
                    </tr>
                    <tr>
                        <td id="td1">파일 첨부</td>
                        <td colspan="3">
                            <div class="filebox preview-image"> 
                                <input class="upload-name" value="파일선택" disabled="disabled" > 
                                <label for="input-file">업로드</label> 
                                <input type="file" id="input-file" class="upload-hidden" name="uploadFile" accept="image/*" title="이미지 파일만 업로드 가능"> 
                         	</div>
                        </td>
                    </tr>
                </table>
          
            <div style="text-align: center;">
                <input type="submit" class="btn" value="수정">
                <input type="button" class="btn" onclick="backList()" value="목록">
                <input type="reset" class="btn" value="취소">
            </div>
        </form>
        
        
            </div><!--내용담은 컨테이너-->
        </div><!--250px띄운 div-->
        <script>
        
        //목록보기
        function backList(){
        	
        	var page=${page }
        	
        	location.href="itemListA.do?page="+page;
        }
      
        //상품 등록시 필요정보 공백 제한
        function validate(){
        	
        
    	if($("#itemName").val().trim().length==0){
    			alert('상품명을 입력하세요.')
    		
    		return false;
    		
    	}else if($("#itemPrice").val().trim().length==0){
    			alert('가격을 입력하세요.')
    		
    		return false;
    	}else if($("#itemMemo").val().trim().length==0){
			alert('상품 메모를 입력하세요.')
		
		return false;
    			
    
    	}else{
    		alert('상품이 등록되었습니다.');
    		return true;
    	}
    	
    	
    };
    
    
        
        // 파일 업로드 관련
        $(function(){
       var fileTarget = $('.filebox .upload-hidden');

        fileTarget.on('change', function(){
            if(window.FileReader){
                // 파일명 추출
                var filename = $(this)[0].files[0].name;
            } 
            
            else {
                // Old IE 파일명 추출
                var filename = $(this).val().split('/').pop().split('\\').pop();
            };

            $(this).siblings('.upload-name').val(filename);
        });

       		 //preview image 
        var imgTarget = $('.preview-image .upload-hidden');

        imgTarget.on('change', function(){
            var parent = $(this).parent();
            parent.children('.upload-display').remove();
            
            
            
            //기존 preview 이미지 삭제
            var itemImage=$("#itemImage");
            itemImage.children('.upload-display').remove();
            $("#beforeImage").remove();
            if(window.FileReader){
                //image 파일만
                if (!$(this)[0].files[0].type.match(/image\//)) return;
                
                var reader = new FileReader();
                reader.onload = function(e){
                    var src = e.target.result;
                    itemImage.append('<div class="upload-display"><div class="upload-thumb-wrap"><img src="'+src+'" class="upload-thumb"></div></div>');
                }
                reader.readAsDataURL($(this)[0].files[0]);
            }

            else {
                $(this)[0].select();
                $(this)[0].blur();
                var imgSrc = document.selection.createRange().text;
                itemImage.append('<div class="upload-display"><div class="upload-thumb-wrap"><img class="upload-thumb"></div></div>');

                var img = $(this).siblings('.upload-display').find('img');
                img[0].style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(enable='true',sizingMethod='scale',src=\""+imgSrc+"\")";        
            } 
            
         
        });
    });
        
        </script>

       
       <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
  </body>
</html>