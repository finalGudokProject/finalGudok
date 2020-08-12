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
    
    .content_sub{
    	margin-bottom:18%;
    }

    .sub_content {
        float: left;
    }

    .content_sub table {
        width: auto;
        margin:0 auto;
        margin-top:5%;
    }

    .content_sub table tr {
        height: 30px;
    }

    .content_sub table button {
        background: #ffffff;
        border: 1px solid black;
        color: black;
        font-size: 0.8em;
        padding: 1%;
    }

    .content_sub table input {
        border: none;
    }

    .button {
        margin: auto;
        width: 20%;
    }

    .withdrawal_btn {
        margin-top: 10%;
        border: none;
        background: #11538C;
        color: white;
        width: 100%;
        padding: 5%;
    }

    .content_sub {
        margin-left: 15%;
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
            <span class="sub_content" style="font-size: 1.5em;">회원탈퇴</span>
            <br><br><br>
            <form>
	            <table>
	                <tr>
	                    <td style="width: 80px">탈퇴사유</td>
	                    <td>
	                        <select style="width:30%; height:30px;">
	                            <option>서비스가 마음에 들지 않음</option>
	                            <option>가격 비쌈</option>
	                            <option>원하는 상품이 없음</option>
	                            <option>개인정보보호</option>
	                            <option>기타</option>
	                        </select>
	                    </td>
	                </tr>
	                <tr></tr>
	                <tr>
	                    <td colspan="2">
	                        <textarea cols="80" rows="10" style="resize:none;"></textarea>
	                    </td>
	                </tr>
	            </table>
            </form>

            <div style="width:52%; margin:0 auto;">
                <div class="button">
                    <button class="withdrawal_btn">탈퇴하기</button>
                </div>
            </div>
        </div>
    </div>
    <br style="clear:both;">
	<jsp:include page="../common/footer.jsp"/>
</body>
</html>