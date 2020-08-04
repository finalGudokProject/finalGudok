<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<style>
/*상단 회원가입, 로그인, 고객센터 메뉴(#menu-list) */
#menu-list {
	line-height: 3;
	text-align: right;
}

#menu-list>li {
	display: inline-block;
	margin-right: 50px;
}

#menu-list a {
	color: black;
}

/*나비바 각 카테고리(a태그) 간격조정*/
.nav-link {
	margin: 0 60px 0 60px;
	color: black;
}

.nav-item:hover {
	cursor: pointer;
}

/*나비바 각 카테고리 간격 설정*/
.navbar-nav {
	margin-left: 50px;
}

/*나비바 각 카테고리(글씨, 아이콘) 가운데 정렬*/
.nav-item {
	text-align: center;
}

/*검색바 마진 설정*/
#searchBar {
	margin-left: 50px;
	margin-right: 50px;
}

#food-menu, #living-menu {
	background-color: #f8f9fa;
	margin-left: 10px;
	border: none;
}

.dropdown:hover>.dropdown-menu {
	text-align: center;
	display: block;
}

.form-inline my-2 my-lg-0>input {
	margin-left: 50px;
}
/*폰트 적용*/
body {
	font-family: 'Jua', sans-serif;
}
</style>
<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap"
	rel="stylesheet">
</head>
<body>
	
<div id="userMenu">
      <ul id="menu-list">
        <li>
          <a href="#">회원가입</a>
        </li>
        <li>
          <a href="#">로그인</a>
        </li>
        <li>
          <a href="#">고객센터</a>
        </li>
        <li>
          <a href="#">Who is JH?</a>
        </li>
      </ul>

    </div> 
    <div class="container">
        <div class="row">
            <div class="col-12" align="center">
                <a href="#"><img src="resources/images/logo.png" width="220px" height="150px"></a>
            </div>
        </div>
    </div>
    <br>

    <nav class="navbar navbar-expand-lg sticky-top navbar-light bg-light">
        <!-- <a class="navbar-brand" href="#">Navbar</a> -->
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
      
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <!-- <ul class="navbar-nav mr-auto"> -->
          <ul class="navbar-nav ml-auto">
            <li class="nav-item">
              <a class="nav-link" href="#"><img src="resources/images/new.png" width="50px" height="50px"><br>신상품</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#"><img src="resources/images/best.png" width="50px" height="50px"><br>베스트</a>
            </li>
              <li class="nav-item dropdown">
                <a class="nav-link dropdown" href="#" id="navbarDropdown1" role="button" aria-haspopup="true" aria-expanded="false">
                <img src="resources/images/food.png" width="50px" height="50px"><br>Food
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown1" id="food-menu">
                  <a class="dropdown-item" href="#"><img src="resources/images/beverage.png" width="30px" height="30px">&nbsp;음료</a>
                  <div class="dropdown-divider"></div>
                  <a class="dropdown-item" href="#"><img src="resources/images/milk.png" width="30px" height="30px">&nbsp;유제품</a>
                  <div class="dropdown-divider"></div>
                  <a class="dropdown-item" href="#"><img src="resources/images/bakery.png" width="30px" height="30px">&nbsp;베이커리</a>
                  <div class="dropdown-divider"></div>
                  <a class="dropdown-item" href="#"><img src="resources/images/canned_food.png" width="30px" height="30px">&nbsp;간편식품</a>
                  <div class="dropdown-divider"></div>
                  <a class="dropdown-item" href="#"><img src="resources/images/supplement.png" width="30px" height="30px">&nbsp;건강식품</a>
                  <div class="dropdown-divider"></div>
                  <a class="dropdown-item" href="#"><img src="resources/images/diet_food.png" width="30px" height="30px">&nbsp;다이어트 식단</a>
                </div>
              </li>
              <li class="nav-item dropdown">
                <a class="nav-link dropdown" href="#" id="navbarDropdown2" role="button" aria-haspopup="true" aria-expanded="false">
                <img src="resources/images/living.png" width="50px" height="50px"><br>리빙
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown2" id="living-menu">
                  <a class="dropdown-item" href="#"><img src="resources/images/diffuser.png" width="30px" height="30px">&nbsp;홈데코</a>
                  <div class="dropdown-divider"></div>
                  <a class="dropdown-item" href="#"><img src="resources/images/body_care.png" width="30px" height="30px">&nbsp;바디케어</a>
                  <div class="dropdown-divider"></div>
                  <a class="dropdown-item" href="#"><img src="resources/images/mask.png" width="30px" height="30px">&nbsp;생활용품</a>
                </div>
              </li>
            <li class="nav-item">
              <a class="nav-link" href="#"><img src="resources/images/event.png" width="50px" height="50px"><br>이벤트</a>
            </li>
          </ul>
          <!-- </ul> -->
          <form class="form-inline my-2 my-lg-0" id="searchBar">
            <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
          </form>
        </div>
      </nav>
<!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
    
</body>
</html>