<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

<style>
	#content {
        font-size: 1em;
        margin-top: 5%;
    }

    /* 마이페이지 메뉴바 */

    .myPage_Menu {
        float: left;
        list-style-type: none;
        margin: 0;
        padding: 0;
        width: 10%;
        display: relative;
    }

    .myPage_Menu ul {
        list-style-type: none;
        padding: 0;
        font-size: 1em;
        font-weight: lighter;
        margin-left: 10%;
        margin-bottom:5%;
    }

    .myPage_Menu>li {
        margin-bottom: 10%;
    }

    .myPage_Menu li a {
        display: block;
        color: #000;
        padding: 8px 16px;
        text-decoration: none;
    }

    .myPage_Menu li a.active {
        /* background-color: #4CAF50; */
        color: #000;
    }

    .myPage_Menu li a:hover:not(.active) {
        color: #115D8C;
    }

    /* ------------------- */

    .content_sub {
        margin-left: 15%;
        margin-bottom:8%;
    }

    .sub_content {
        float: left;
    }

    .content_sub table {
        width: 65%;
    }

    .content_sub table tr {
        height: 50px;

    }

    .content_sub table button {
        background: #ffffff;
        border: 1px solid black;
        color: black;
        font-size: 0.8em;
        padding: 1%;
    }

    .content_sub table input {
        border: 1px solid #ccc;
    }

    .button {
        margin: auto;
        width: 20%;
    }

    .modify_btn {
        margin-top: 10%;
        border: none;
        background: #11538C;
        color: white;
        width: 100%;
        padding: 5%;
    }
    
    /* 모달 */
   .panel {
       background-color: #444;
       height: 34px;
       padding: 10px;
   }

   a#password_pop {
       border: 1px solid black;
       color: black;
       display: block;
       padding: 1% 1%;
       margin-right: 3%;
       text-decoration: none;
       width: 17%;
       font-size: 0.8em;
       text-align: center;
   }

   a#password_pop:hover {
       border-color: rgb(155, 150, 150);
   }

   .overlay {
       background-color: rgba(0, 0, 0, 0.6);
       bottom: 0;
       cursor: default;
       left: 0;
       opacity: 0;
       position: fixed;
       right: 0;
       top: 0;
       visibility: hidden;
       z-index: 1;

       -webkit-transition: opacity .5s;
       -moz-transition: opacity .5s;
       -ms-transition: opacity .5s;
       -o-transition: opacity .5s;
       transition: opacity .5s;
   }

   .overlay:target {
       visibility: visible;
       opacity: 1;
   }

   .popup {
       background-color: #fff;
       border: 3px solid #fff;
       display: inline-block;
       left: 50%;
       opacity: 0;
       padding: 15px;
       position: fixed;
       text-align: justify;
       top: 40%;
       visibility: hidden;
       z-index: 10;

       -webkit-transform: translate(-50%, -50%);
       -moz-transform: translate(-50%, -50%);
       -ms-transform: translate(-50%, -50%);
       -o-transform: translate(-50%, -50%);
       transform: translate(-50%, -50%);

       -webkit-transition: opacity .5s, top .5s;
       -moz-transition: opacity .5s, top .5s;
       -ms-transition: opacity .5s, top .5s;
       -o-transition: opacity .5s, top .5s;
       transition: opacity .5s, top .5s;
   }

   .overlay:target+.popup {
       top: 50%;
       opacity: 1;
       visibility: visible;
   }

   .close {
       height: 30px;
       line-height: 30px;
       position: absolute;
       right: 0;
       text-align: center;
       text-decoration: none;
       top: 10px;
       right: 10px;
       width: 30px;
   }

   .close:before {
       color: black;
       content: "X";
       font-size: 24px;
       text-shadow: 0 -1px rgba(0, 0, 0, 0.9);
   }

   .popup p,
   .popup div {
       margin-bottom: 10px;
   }

   .popup label {
       display: inline-block;
       text-align: left;
       width: 120px;
   }

   .popup table tr {
       height: 40px;
   }

   .popup button {
       border: none;
       background: #11538C;
       color: white;
       padding: 1% 10%;
       text-align: center;
       margin-top: 3%;
   }

   .popup input[type="password"]{
       border: 1px solid gray;
   }
</style>
</head>
<body>
	<jsp:include page="../common/menubar.jsp"/>
	
	<div id="content">
        <ul class="myPage_Menu">
            <li>
                <a href="#home"><img src="resources/images/delivery.png"
                        style="width: 25%; height: 25%; margin-right: 4%;">구독배송</a>
                <ul>
                    <li><a href="#">구독 조회</a></li>
                    <li><a href="#">배송 조회</a></li>
                    <li><a href="#">교환 내역</a></li>
                </ul>
            </li>
            <li>
                <a href="#news"><img src="resources/images/my_benefit.png"
                        style="width: 25%; height: 25%; margin-right: 4%;">나의혜택</a>
                <ul>
                    <li><a href="#">회원 등급</a></li>
                    <li><a href="#">적립금 내역</a></li>
                </ul>
            </li>
            <li><a href="#contact"><img src="resources/images/cart.png"
                        style="width: 25%; height: 25%; margin-right: 4%;">장바구니</a></li>
            <li><a href="#about"><img src="resources/images/heart.png" style="width: 25%; height: 25%; margin-right: 4%;">찜</a>
            </li>
            <li><a href="#about"><img src="resources/images/review.png"
                        style="width: 25%; height: 25%; margin-right: 4%;">상품리뷰</a></li>
            <li><a href="#about"><img src="resources/images/inquiry.png"
                        style="width: 25%; height: 25%; margin-right: 4%;">1:1문의</a></li>
            <li>
                <a href="#about"><img src="resources/images/member_information.png"
                        style="width: 25%; height: 25%; margin-right: 4%;">회원정보</a>
                <ul>
                    <li><a href="#">회원정보 확인</a></li>
                    <li><a href="#">회원탈퇴</a></li>
                </ul>
            </li>
        </ul>
        <div class="content_sub">
            <span class="sub_content" style="font-size: 1.5em;">회원정보 수정</span>
            <br><br>
            <span class="sub_content">회원정보</span>
            <br><br><br>
            <form action="memberModify.do">
	            <table>
	                <tr>
	                    <td style="width: 25%;">이름</td>
	                    <td>${loginUser.memberName }</td>
	                </tr>
	                <tr>
	                    <td>아이디</td>
	                    <td>${loginUser.memberId }</td>
	                </tr>
	                <tr>
	                    <td>이메일</td>
	                    <td>${loginUser.email }</td>
	                </tr>
	                <tr>
	                    <td>비밀번호</td>
	                    <td><a href="#password_form" id="password_pop">비밀번호 변경</a></td>
	                </tr>
	                <tr>
	                    <td>우편번호</td>
	                    <td><input type="text" name="post" class="postcodify_postcode5" value="${loginUser.address1 }" size="6">
	                        <button type="button" id="postcodify_search_button">주소변경</button>
	                </tr>
	                <tr>
	                    <td>도로명 주소</td>
	                    <td><input type="text" name="address1" class="postcodify_address" value="${loginUser.address2 }"></td>
	                </tr>
	                <tr>
	                    <td>상세 주소</td>
	                    <td><input type="text" name="address2" class="postcodify_extra_info" value="${loginUser.address3 }"></td>
	                </tr>
	                <tr>
	                    <td>전화번호</td>
	                    <td><input type="text" value="${loginUser.phone }"></td>
	                </tr>
	            </table>
	
	            <div class="button">
	                <button class="modify_btn">수정하기</button>
	            </div>
            </form>
            
            <!-- popup form #1 -->
            <a href="#x" class="overlay" id="password_form"></a>
            <div class="popup">
                <h4>비밀번호 변경</h4>
                <div>
                <table>
                    <tr>
                    <td style="width: 100px;"><b>현재 비밀번호</b></td>
                    <td style="width: 100px"><input type="password"></td>
                    </tr>
                    <tr>
                        <td style="width: 100px;"><b>변경 비밀번호</b></td>
                        <td><input type="password"></td>
                    </tr>
                    <tr>
                        <td style="width: 300px;"><b>변경 비밀번호 확인</b></td>
                        <td><input type="password"></td>
                    </tr>
                </table>
                </div>
                <div style="text-align: center;">
                <button>변경</button>
                </div>
                <a class="close" href="#close"></a>
            </div>
        </div>
    </div>
    <br style="clear:both;">
    <jsp:include page="../common/footer.jsp"/>
    <!-- Postcodify를 로딩하자 -->
    <script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
    <script>
        $(function () {
            $("#postcodify_search_button").postcodifyPopUp();
        })
    </script>
</body>
</html>