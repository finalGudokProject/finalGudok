<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<title></title>
    <style>
body{
    font-family: 'Noto Sans KR', sans-serif;
}

img{
    max-width: 100%; height: auto;
}

.container-fluid {
    width: 100%;
    padding-right: 0px;
    padding-left: 0px; 
    margin-right: 0;
    margin-left: 0;

}


div {
    display: block;
}

.flex-xl-nowrap {
    -ms-flex-wrap: nowrap!important;
    flex-wrap: nowrap!important;
}
.row {
    display: flex;
    -ms-flex-wrap: wrap;
    flex-wrap: wrap;
    margin-right: 1.5px;
    margin-left: 1.5px;
}


.bd-sidebar {
    /* -ms-flex: 0 1 320px; */
    flex: 0 1 320px;
    position: fixed;
    
    z-index: 1000;
    height: 100vh;
    border-right: 1px solid rgba(0,0,0,.1);
    -ms-flex-order: 0;
    order: 0;
    border-bottom: 1px solid rgba(0,0,0,.1);
    width:250px;
    margin-left:0px;
    margin-top:0px;
}

.bd-content {
    -ms-flex-order: 1;
    order: 1; /*div순서*/
    margin-top:0;
  
}




.bd-links {
    display: block!important;
    max-height: calc(100vh - 9rem);
    height: 100vh;
    overflow-y: auto;
    /* padding-top: 1rem; */
    padding-bottom: 1rem;
    
    


   
}

.nav {
  
    display: flex;
    -ms-flex-wrap: wrap;
    flex-wrap: wrap;
    padding-left: 0;
    margin-bottom: 0;
    list-style: none;
   
    
}

.sd_ul {
    margin-top: 0.5rem;
    margin-bottom: 0.5rem;
    display: block;
    list-style-type: disc;
    /* margin-block-start: 1.5em;
    margin-block-end: 1.5em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    padding-inline-start: 20px; */
    /* line-height: 30px; */
    
}

.sd_ul li{
    padding:5px 0;
    list-style: none;
}

.sd_ul li a{
    color:black;
}



.sd-btn{
    background-color:rgba(90,148,235,0.8);
    border:none;
    padding:5px 10px;
box-shadow: 1px 1px lightgray;
}

/*여기까지 사이드바 css*/

.table {
  width: 100%;
  /* margin-bottom: 1rem; */
  color: #212529;
}
.table th,
.table td {
  padding: 0.5rem 1rem;
  vertical-align: top;
  border-top: 1px solid #dee2e6;
  /* border-bottom: 1px solid #dee2e6; */
}




.mainbox{
    position:absolute; 
    padding:30px; 
    top:50%; 
    left:50%; 
    background-color:white; 
    transform:translate(-50%,-50%);

}


.content{ /*내용을 쓸 때*/
    /* overflow-y: auto; */
    margin-left:250px;
    /* overflow-x: none; */
    
} 

.nav__list input[type=checkbox]:checked + label + ul {
  max-height: 1000px;
}

.nav__list input[type=checkbox]:checked + label > span {
  -webkit-transform: rotate(90deg);
      -ms-transform: rotate(90deg);
          transform: rotate(90deg);
}

.nav__list li > span {
  -webkit-transform: rotate(90deg);
      -ms-transform: rotate(90deg);
          transform: rotate(90deg);
}

.group-list,
.sub-group-list,
.sub-sub-group-list {
  height: 100%;
  max-height: 0;
  overflow: hidden;
  -webkit-transition: max-height .5s ease-in-out;
          transition: max-height .5s ease-in-out;
}

label > span {
  float: right;
  -webkit-transition: -webkit-transform .65s ease;
          transition: transform .65s ease;
}

.nav label {
  cursor: pointer;
}


.nav a,
.nav label {
  display: block;
  /* padding: .85rem; */
  color: #fff;
  background-color: #151515;
  box-shadow: inset 0 -1px #1d1d1d;
  -webkit-transition: all .25s ease-in;
          transition: all .25s ease-in;
          }

          body{
      font-family: 'Jua', sans-serif;
    }
    .list{
        margin:20px;
        list-style-type: none;
    }
    table {
    width: 100%;
    border: 1px solid #444444;
    border-collapse: collapse;
  }
  th, td {
    border: 1px solid #444444;
  }
  
  #list a{
    color:black;
    text-decoration: none;
  }
  button{
      background-color: rgb(0, 125, 255);
  }

  .container {
        width: 100%;
        margin-right: auto;
        margin-left: auto;
        margin:auto;
    }
    .content{
        margin-left:250px;
        background-color: RGB(237,237,237);
        padding:50px;
    
    }
    .box{
        padding:70px 70px 70px 70px; 
        
        background-color: #ffffff;
        height:1100px;
      
    }

    /*페이징 처리용 cs*/
.pagination-t {
            display: flex;
            padding-left: 0;
            list-style: none;
            border-radius: 0.25rem;
        }

        .page-link-t {
            position: relative;
            display: block;
            padding: 0.5rem 0.75rem;
            margin-left: -1px;
            line-height: 1.25;
            color: black;
            background-color: #fff;
            border: 1px solid #dee2e6;
        }

        .page-link-t:hover {
            z-index: 2;
            color: #0056b3;
            text-decoration: none;
            background-color: #e9ecef;
            border-color: #dee2e6;
        }

        .page-link-t:focus {
            z-index: 3;
            outline: 0;
        }

        .page-item-t:first-child .page-link-t {
            border-top-left-radius: 0.25rem;
            border-bottom-left-radius: 0.25rem;
        }

        .page-item-t:last-child .page-link-t {
            border-top-right-radius: 0.25rem;
            border-bottom-right-radius: 0.25rem;
        }

        .page-item-t.active-t .page-link-t {
            z-index: 3;
            color: #fff;
            background-color: rgba(90,148,235,0.8);
            border-color:  rgba(90,148,235,0.8);
        }

        .page-item-t.disabled-t .page-link-t {
            color: #6c757d;
            pointer-events: none;
            cursor: auto;
            background-color: #fff;
            border-color: #dee2e6;
        }


        .sr-only-t {
            position: absolute;
            width: 1px;
            height: 1px;
            padding: 0;
            margin: -1px;
            overflow: hidden;
            clip: rect(0, 0, 0, 0);
            white-space: nowrap;
            border: 0;
        }

        .page-center {
            display: flex;
            justify-content: center;
            /*가운데 정렬*/
            align-items: center;
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
    width: 54px;
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
  background-color: rgb(0, 125, 255);
    border-color:  rgb(0, 125, 255);
    margin-bottom:0px;
}

    </style>
</head>
<body>
    <!--사이드바-->

 
    <div class="container-fluid" style="background-color: red;" >
        <div class="row">
            <div class="col-md-3 bd-sidebar" style="background-color: #C4C4C4; float:left; overflow-y:hidden; overflow-x:hidden">
                <img src="resources/images/logo.png" style="padding:30px 30px;">
                <h2 style="text-align: center; font-size: 18px;"><b>관리자</b>님, 환영합니다.</h2>
                <br>
                <div style="text-align:center">
                <button class="sd-btn" id="nav-home-btn">쇼핑몰 이동</button>
                &nbsp;
                <button class="sd-btn" id="nav-logout-btn">로그아웃</button>
            </div>
                  
                    <nav class="collapse bd-links">

                     <br>
                        <div>
                            <ul class="nav__list sd_ul">
                                <li>
                                  <input id="group-1" type="checkbox" hidden />
                                  <label for="group-1">
                                      <span><b><svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-chevron-double-right" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                        <path fill-rule="evenodd" d="M3.646 1.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1 0 .708l-6 6a.5.5 0 0 1-.708-.708L9.293 8 3.646 2.354a.5.5 0 0 1 0-.708z"/>
                                        <path fill-rule="evenodd" d="M7.646 1.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1 0 .708l-6 6a.5.5 0 0 1-.708-.708L13.293 8 7.646 2.354a.5.5 0 0 1 0-.708z"/>
                                      </svg></span></b> 
                                      <b>
                                    <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-archive-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                        <path fill-rule="evenodd" d="M12.643 15C13.979 15 15 13.845 15 12.5V5H1v7.5C1 13.845 2.021 15 3.357 15h9.286zM6 7a.5.5 0 0 0 0 1h4a.5.5 0 0 0 0-1H6zM.8 1a.8.8 0 0 0-.8.8V3a.8.8 0 0 0 .8.8h14.4A.8.8 0 0 0 16 3V1.8a.8.8 0 0 0-.8-.8H.8z"/>
                                      </svg>&nbsp;&nbsp;상품관리&nbsp;&nbsp;</b></label>
                                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                  <ul class="group-list sd_ul">
                                    <li><a href="#">상품 등록</a></li>
                                    <li><a href="#">판매 상품 리스트</a></li>
                                    <li><a href="#">메인 배너 관리</a></li>
                                    
                                  </ul>
                                </li>
                            </ul>
                        </div>   

                        <div>
                            <ul class="nav__list sd_ul">
                                <li>
                                  <input id="group-2" type="checkbox" hidden />
                                  <label for="group-2"><span><b><svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-chevron-double-right" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                    <path fill-rule="evenodd" d="M3.646 1.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1 0 .708l-6 6a.5.5 0 0 1-.708-.708L9.293 8 3.646 2.354a.5.5 0 0 1 0-.708z"/>
                                    <path fill-rule="evenodd" d="M7.646 1.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1 0 .708l-6 6a.5.5 0 0 1-.708-.708L13.293 8 7.646 2.354a.5.5 0 0 1 0-.708z"/>
                                  </svg></span></b> <b>
                                    <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-people-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                        <path fill-rule="evenodd" d="M7 14s-1 0-1-1 1-4 5-4 5 3 5 4-1 1-1 1H7zm4-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm-5.784 6A2.238 2.238 0 0 1 5 13c0-1.355.68-2.75 1.936-3.72A6.325 6.325 0 0 0 5 9c-4 0-5 3-5 4s1 1 1 1h4.216zM4.5 8a2.5 2.5 0 1 0 0-5 2.5 2.5 0 0 0 0 5z"/>
                                      </svg>&nbsp;&nbsp;회원 관리&nbsp;&nbsp;</b></label>
                                  <ul class="group-list sd_ul">
                                    <li><a href="#">회원 리스트</a></li>
                                    <li><a href="#">탈퇴 내역</a></li>
                                  </ul>
                                </li>
                            </ul>
                        </div>  

                        <div>
                            <ul class="nav__list  sd_ul">
                                <li>
                                  <input id="group-3" type="checkbox" hidden />
                                  <label for="group-3"><span><b><svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-chevron-double-right" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                    <path fill-rule="evenodd" d="M3.646 1.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1 0 .708l-6 6a.5.5 0 0 1-.708-.708L9.293 8 3.646 2.354a.5.5 0 0 1 0-.708z"/>
                                    <path fill-rule="evenodd" d="M7.646 1.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1 0 .708l-6 6a.5.5 0 0 1-.708-.708L13.293 8 7.646 2.354a.5.5 0 0 1 0-.708z"/>
                                  </svg></span></b> <b>
                                    <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-bar-chart-line-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                        <rect width="4" height="5" x="1" y="10" rx="1"/>
                                        <rect width="4" height="9" x="6" y="6" rx="1"/>
                                        <rect width="4" height="14" x="11" y="1" rx="1"/>
                                        <path fill-rule="evenodd" d="M0 14.5a.5.5 0 0 1 .5-.5h15a.5.5 0 0 1 0 1H.5a.5.5 0 0 1-.5-.5z"/>
                                      </svg>&nbsp;&nbsp;매출 관리&nbsp;&nbsp;</b></label>
                                  <ul class="group-list sd_ul">
                                    <li><a href="#">주문 / 배송 내역</a></li>
                                    <li><a href="#">교환 요청 내역</a></li>
                                    <li><a href="#">매출 통계 내역</a></li>
                                    
                                  </ul>
                                </li>
                            </ul>
                        </div>  

                        <div>
                            <ul class="nav__list sd_ul">
                                <li>
                                  <input id="group-4" type="checkbox" hidden />
                                  <label for="group-4"><span><b><svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-chevron-double-right" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                    <path fill-rule="evenodd" d="M3.646 1.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1 0 .708l-6 6a.5.5 0 0 1-.708-.708L9.293 8 3.646 2.354a.5.5 0 0 1 0-.708z"/>
                                    <path fill-rule="evenodd" d="M7.646 1.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1 0 .708l-6 6a.5.5 0 0 1-.708-.708L13.293 8 7.646 2.354a.5.5 0 0 1 0-.708z"/>
                                  </svg></span></b><b>
                                    <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-volume-up-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                        <path d="M11.536 14.01A8.473 8.473 0 0 0 14.026 8a8.473 8.473 0 0 0-2.49-6.01l-.708.707A7.476 7.476 0 0 1 13.025 8c0 2.071-.84 3.946-2.197 5.303l.708.707z"/>
                                        <path d="M10.121 12.596A6.48 6.48 0 0 0 12.025 8a6.48 6.48 0 0 0-1.904-4.596l-.707.707A5.483 5.483 0 0 1 11.025 8a5.483 5.483 0 0 1-1.61 3.89l.706.706z"/>
                                        <path d="M8.707 11.182A4.486 4.486 0 0 0 10.025 8a4.486 4.486 0 0 0-1.318-3.182L8 5.525A3.489 3.489 0 0 1 9.025 8 3.49 3.49 0 0 1 8 10.475l.707.707z"/>
                                        <path fill-rule="evenodd" d="M6.717 3.55A.5.5 0 0 1 7 4v8a.5.5 0 0 1-.812.39L3.825 10.5H1.5A.5.5 0 0 1 1 10V6a.5.5 0 0 1 .5-.5h2.325l2.363-1.89a.5.5 0 0 1 .529-.06z"/>
                                      </svg>&nbsp;&nbsp;고객센터 관리&nbsp;&nbsp;</b></label>
                                  <ul class="group-list sd_ul">
                                    <li><a href="#">공지사항</a></li>
                                    <li><a href="#">FAQ</a></li>
                                    <li><a href="#">상품제안</a></li>
                                    <li><a href="#">1:1 문의</a></li>
                                    <li><a href="#">이벤트</a></li>
                                  </ul>
                                </li>
                            </ul>
                        </div> 
                    </nav>
           </div>
        </div>
                </div>
                
            </div>
        </div>
        </div>
    </div>
    <!-- 화면 -->
    <div class="content">
      <div class="container box">

       
            <form>
                <div style="font-size: 30px;">이벤트</div><br>
                <hr style="border-color:rgb(0, 125, 255);">
                <table style="text-align: center; margin-top:15px">
                    <tbody>
                        <tr>
                            <th style="width:10%; padding:20px;">제목</th>
                            <td style="width: 40%;" colspan="3">
                                <textarea class="form-control" rows="1" style="resize: none;width:940px;"></textarea>
                            </td>
                        </tr>
                        <tr>
                            <th style="padding:20px;">내용</th><td colspan="3"><textarea class="form-control" rows="22" style="resize: none;"></textarea></td>
                        </tr>
                        <tr>
                            <th style="padding:20px;">이미지</th><td colspan="3"><div class="filebox bs3-primary preview-image">
                            <input class="upload-name" value="파일선택" disabled="disabled" style="width: 200px;">
                            <label for="input_file">업로드</label> 
                            <input type="file" id="input_file" class="upload-hidden"> 
                        </div>
                        </tr>
                    </tbody>
                  </table>
          
    
                </form>
            <br><br>
            &nbsp;&nbsp;<a href="ad_notice.html" type="button" class="btn btn-primary" style="float:right;">목록으로</a>
            <input type="submit" value="저장" class="btn btn-primary" style="float:right; margin-right: 10px;">
            <br><br><br>

    </div><!--하얀박스 있는부분 끝-->
  </div><!--회색바탕 div-->
 

   




    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
  
    <script>
        $(document).ready(function(){
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
    
                if(window.FileReader){
                    //image 파일만
                    if (!$(this)[0].files[0].type.match(/image\//)) return;
                    
                    var reader = new FileReader();
                    reader.onload = function(e){
                        var src = e.target.result;
                        parent.prepend('<div class="upload-display"><div class="upload-thumb-wrap"><img src="'+src+'" class="upload-thumb"></div></div>');
                    }
                    reader.readAsDataURL($(this)[0].files[0]);
                }
    
                else {
                    $(this)[0].select();
                    $(this)[0].blur();
                    var imgSrc = document.selection.createRange().text;
                    parent.prepend('<div class="upload-display"><div class="upload-thumb-wrap"><img class="upload-thumb"></div></div>');
    
                    var img = $(this).siblings('.upload-display').find('img');
                    img[0].style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(enable='true',sizingMethod='scale',src=\""+imgSrc+"\")";        
                }
            });
        });
    
    </script>
</body>
</html>