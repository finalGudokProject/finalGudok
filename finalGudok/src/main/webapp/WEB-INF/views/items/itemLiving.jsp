<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	
	ul{
		list-style: none;
		display:inline-block;
	}
	
	.paper{
		margin:2%;
		width:25%;
		height:auto;
		float:left;
		text-align:left;
		border:1px solid black;
	}
	#cateName{
		font-size:30px;
		margin:3% 0 1% 7%;
	}
	
	/* 상품 리스트 정렬 CSS */
	#rankDiv{
		float:left;
		margin-left:2%;
		width:500px;
		height:auto;
		border:1px solid lightgray;
	}
	
	.rankDiv{
		float:left;
		size:30px;
		margin:0 3% 0 3%;
		width:17%;
		height:35px;
		display:inline-block;
		text-align:center;
		padding-top:4px;
	}
	
	#menu{
		background:white;
		width:220px;
		height:40px;
		vertical-align:middle !important;
		padding:2%;
		border-bottom:1px solid lightgray;
	}
	#menu a{
		display:block;
		color:black;
		vertical-align:middle !important;
	}	
	
	div.col-md-9{
		padding:0 !important;
	}
	
	.paperUl{
		padding:0px !important;
	}
	#menuId{
		margin-top:10%;
		padding-left:0;
		border:1px solid lightgray;
	}
	.smallMenu{
		display:none;
		width:180px;
		height:35px;
		opacity:90%;
		border: 1px solid black;
		left:60px;
		top:20px;
	}
	.smallMenu a{
		display:block;
	}
	
	.menuName{
		margin-left:10%;
		font-size:30px;
	}
	
	.listUl{
		padding:0 !important;
	}
	ul li a div ul li{color:black;}
	ul li a div ul li :hover{color:red;}
	
	#itemsRowDiv{
		margin:5%;
		text-align:center;
	}
	.sortClass{
		width:8rem;
		height:8rem;
		display:block;
	}
	
	td{
		text-align:center;
	}
	
	/* .sortDivC :hover{
		cursor:pointer;
		background:lightyellow;
	} */
	
	#sortTable td :hover{
		cursor:pointer;
		background:lightyellow;
	}
	
	
	.starR{
	  background: url('http://miuu227.godohosting.com/images/icon/ico_review.png') no-repeat right 0;
	  background-size: auto 100%;
	  width: 30px;
	  height: 30px;
	  display: inline-block;
	  text-indent: -9999px;
	  cursor: pointer;
	  margin:0 0 12px;
	}
	.starR.on{background-position:0 0;}
	
	.itemPriceDiv{
		font-size:25px;
		font-weight:bold;
	}

</style>
</head>
<body>
<jsp:include page="../common/header.jsp"/>
<div class="container">
	<div class="row">
	<div class="col-md-12">
		<div id="cateName" style="font-size:50px;">리빙</div>
		<div style="margin:0 0 3% 0%">
			<table style="display:block;">
				<tr>
					<td style="width:10%;"><span>생활용품</span></td>
					<td style="width:10%;"><span>바디케어</span></td>
					<td style="width:10%;"><span>홈데코</span></td>
				</tr>
			</table>
		</div>
			<div style="border-top:1px solid lightgray;border-bottom:1px solid lightgray;">
			<table align="center" style="margin-bottom:1%;" id="sortTable">
				<tr>
					<td><div class="sortDivC">
					<img src="${contextPath }/resources/images/newItem.png" class="sortClass"><span style="display:block;">신상품순</span>
					</div></td>
					<td><div class="sortDivC">
					<img src="${contextPath }/resources/images/popul.png" class="sortClass"><span style="display:block;">인기순</span>
					</div></td>
					<td><div class="sortDivC">
					<img src="${contextPath }/resources/images/high.png" class="sortClass"><span style="display:block;">높은 가격순</span>
					</div></td>
					<td><div class="sortDivC">
					<img src="${contextPath }/resources/images/low.png" class="sortClass"><span style="display:block;">낮은 가격순</span>
					</div></td>
				</tr>
			</table>
			</div>
			
	</div>
	
	<div class="row" id="itemsRowDiv">
		<div class="col-4">
			<div class="card" style="position:relative;">
				<img src="resources/images/breadLogo.jpg" class="card-img-top" alt="...">
					<div class="card-body">
						<h3 class="card-title"><b>상품명</b></h3>
						<h5>상품약식설명</h5>
						<div class="itemPriceDiv"><s>10,000원</s>→9,000원</div>
						<div class="starRev">
						  <span class="starR on">별1</span>
						  <span class="starR on">별2</span>
						  <span class="starR on">별3</span>
						  <span class="starR on">별4</span>
						  <span class="starR on">별5</span>
						</div>
						<a href="#" class="btn btn-primary">미리보기</a>
					</div>
			</div>
		</div>
		
		<div class="col-4">
			<div class="card">
				<img src="resources/images/breadLogo.jpg" class="card-img-top" alt="...">
					<div class="card-body">
						<h3 class="card-title"><b>상품명</b></h3>
						<h5>상품약식설명</h5>
						<div class="itemPriceDiv"><s>10,000원</s>→9,000원</div>
						<div class="starRev">
						  <span class="starR on">별1</span>
						  <span class="starR on">별2</span>
						  <span class="starR on">별3</span>
						  <span class="starR on">별4</span>
						  <span class="starR on">별5</span>
						</div>
						<a href="#" class="btn btn-primary">미리보기</a>
					</div>
			</div>
		</div>
		
		<div class="col-4">
			<div class="card">
				<img src="resources/images/breadLogo.jpg" class="card-img-top" alt="...">
					<div class="card-body">
						<h3 class="card-title"><b>상품명</b></h3>
						<h5>상품약식설명</h5>
						<div class="itemPriceDiv">10,000원</div>
						<div class="starRev">
						  <span class="starR on">별1</span>
						  <span class="starR on">별2</span>
						  <span class="starR on">별3</span>
						  <span class="starR on">별4</span>
						  <span class="starR on">별5</span>
						</div>
						<a href="#" class="btn btn-primary">미리보기</a>
					</div>
			</div>
		</div>
	</div>
	
	<div class="row" id="itemsRowDiv">
		<div class="col-4">
			<div class="card">
				<img src="resources/images/breadLogo.jpg" class="card-img-top" alt="...">
					<div class="card-body">
						<h3 class="card-title"><b>상품명</b></h3>
						<h5>상품약식설명</h5>
						<div class="itemPriceDiv"><s>10,000원</s>→9,000원</div>
						<div class="starRev">
						  <span class="starR on">별1</span>
						  <span class="starR on">별2</span>
						  <span class="starR on">별3</span>
						  <span class="starR on">별4</span>
						  <span class="starR on">별5</span>
						</div>
						<a href="#" class="btn btn-primary">미리보기</a>
					</div>
			</div>
		</div>
		
		<div class="col-4">
			<div class="card">
				<img src="resources/images/breadLogo.jpg" class="card-img-top" alt="...">
					<div class="card-body">
						<h3 class="card-title"><b>상품명</b></h3>
						<h5>상품약식설명</h5>
						<div class="itemPriceDiv">10,000원</div>
						<div class="starRev">
						  <span class="starR on">별1</span>
						  <span class="starR on">별2</span>
						  <span class="starR on">별3</span>
						  <span class="starR on">별4</span>
						  <span class="starR on">별5</span>
						</div>
						<a href="#" class="btn btn-primary">미리보기</a>
					</div>
			</div>
		</div>
		
		<div class="col-4">
			<div class="card">
				<img src="resources/images/breadLogo.jpg" class="card-img-top" alt="...">
					<div class="card-body">
						<h3 class="card-title"><b>상품명</b></h3>
						<h5>상품약식설명</h5>
						<div class="itemPriceDiv"><s>10,000원</s>→9,000원</div>
						<div class="starRev">
						  <span class="starR on">별1</span>
						  <span class="starR on">별2</span>
						  <span class="starR on">별3</span>
						  <span class="starR on">별4</span>
						  <span class="starR on">별5</span>
						</div>
						<a href="#" class="btn btn-primary">미리보기</a>
					</div>
			</div>
		</div>
	</div>
	
	<div class="row" id="itemsRowDiv">
		<div class="col-4">
			<div class="card">
				<img src="resources/images/breadLogo.jpg" class="card-img-top" alt="...">
					<div class="card-body">
						<h3 class="card-title"><b>상품명</b></h3>
						<h5>상품약식설명</h5>
						<div class="itemPriceDiv">10,000원</div>
						<div class="starRev">
						  <span class="starR on">별1</span>
						  <span class="starR on">별2</span>
						  <span class="starR on">별3</span>
						  <span class="starR on">별4</span>
						  <span class="starR on">별5</span>
						</div>
						<a href="#" class="btn btn-primary">미리보기</a>
					</div>
			</div>
		</div>
		
		<div class="col-4">
			<div class="card">
				<img src="resources/images/breadLogo.jpg" class="card-img-top" alt="...">
					<div class="card-body">
						<h3 class="card-title"><b>상품명</b></h3>
						<h5>상품약식설명</h5>
						<div class="itemPriceDiv">10,000원</div>
						<div class="starRev">
						  <span class="starR on">별1</span>
						  <span class="starR on">별2</span>
						  <span class="starR on">별3</span>
						  <span class="starR on">별4</span>
						  <span class="starR on">별5</span>
						</div>
						<a href="#" class="btn btn-primary">미리보기</a>
					</div>
			</div>
		</div>
		
		<div class="col-4">
			<div class="card">
				<img src="resources/images/breadLogo.jpg" class="card-img-top" alt="...">
					<div class="card-body">
						<h3 class="card-title"><b>상품명</b></h3>
						<h5>상품약식설명</h5>
						<div class="itemPriceDiv"><s>10,000원</s>→9,000원</div>
						<div class="starRev">
						  <span class="starR on">별1</span>
						  <span class="starR on">별2</span>
						  <span class="starR on">별3</span>
						  <span class="starR on">별4</span>
						  <span class="starR on">별5</span>
						</div>
						<a href="#" class="btn btn-primary">미리보기</a>
					</div>
			</div>
		</div>
	</div>
	
	
	</div>
</div>
<jsp:include page="../common/footer.jsp"/>
	<!-- <script>
		$(function(){
			$(".paper").mouseenter(function(){
				$(this).css("border","1px solid black");
			}).mouseout(function(){
				$(this).css("border","none");
			})
		})
	</script> -->
	
	<!-- 사이드 메뉴바 -->
	<script>
	$(function(){
		$(".menu").mouseenter(function(){
			$(this).find("li").css("display","block").css("background","white");
		}).mouseleave(function(){
			$(this).find("li").css("display","none");
		})
	})
	</script>
	
	<script>
		$(function(){
			$("div.card").click(function(){
				location.href="itemDetail.do";
			}).mouseenter(function(){
				$(this).css("cursor","pointer");
			})
		})
	</script>
</body>
</html>