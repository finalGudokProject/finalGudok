<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
	 <!-- sweetalert시작 -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet"href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css" />
	<!-- sweetalert끝 -->
<style>
	.basketImg{
		width:30%;
		height:30%;
	}
	.listChk{
		width:5%;
		height:5%;
	}
	input[type=checkbox]{
		width:30px;
		height:30px;
		display:block;
		margin:0 auto;
		
	}
	td{
		vertical-align:middle;
		font-size:20px;
	}
	th{
		font-size:20px;
	}
	
	input[type=button]{
		background:#6AAED9;
		color:white;
		border-radius:5px;
		padding:2%;
		width:20%;
		transition:0.5s;
	  	position:relative;
	  	border:1px solid #6AAED9;
		margin-bottom:1%;
	}
	input[type=button]:hover{
		background:#11538C;
		color:#white;
		border:1px solid #11538C;
	}
	
	input[type=button]:hover:before,input[type=button]:hover:after{
		width:100%;
		transition:0.5s;
	}
		
	.signImg{
		width:35px;
		height:35px;
	}
	
	.signImgP{
		width:35px;
		height:35px;
	}
	
	.signImgM{
		width:35px;
		height:35px;
	}
	
	
	table .countTd{
		vertical-align:middle;
	}
	
	
</style>
<body>
	<jsp:include page="../common/menubar.jsp"/>


		
		<div style="padding-left:12%;">
			<img src="${contextPath }/resources/images/basketImg.png" style="width:7%;height:7%;">
			<span style="vertical-align:middle;font-size:50px;"><b>장바구니</b></span>
		</div>
	<div class="container">
		<div class="row" style="text-align:center;">
			<table style="border:1px solid black; text-align:center; padding:10%;" align="center">
				<thead>
				<tr style="border-bottom:1px solid lightgray; vertical-align:middle;">
					<th class="listChk"  style="width:3%;"><input type="checkbox" id="allChk"></th>
					<th style="width:7%;"><label for="chk" style="display:block;margin:0px;text-align:center;">전체선택(0/?)</label></th>
					<th colspan="2">상품정보</th>
					<th style="width:15%;">수량</th>
					<th style="width:10%;">구독주기</th>
					<th style="width:10%;">상품가격</th>
				</tr>
				
				</thead>
				<c:forEach var="c" items="${list }" varStatus="vs">
				<fmt:formatNumber var="itemPrice" value="${c.itemPrice * c.cartCount }" type="number"/>
				<tr style="border-bottom:1px solid lightgray;vertical-align:middle;">
					<td class="listChk"><input type="checkbox" class="chk" value="${c.itemPrice * c.cartCount}"></td>
					<td colspan="2" style="width:30%;"><img src="${contextPath }/resources/images/breadLogo.jpg" class="basketImg"></td>
					<td><input type="hidden" id="totalPriceInput">${c.itemName }</td>
					<td class="countTd">
					<c:if test="${c.cartCount == 1 }">
					<img src="${contextPath }/resources/images/XSIGN.png" class="signImgM" id="signM">
					</c:if>
					<c:if test="${c.cartCount != 1 }">
					<img src="${contextPath }/resources/images/minus.png" class="signImgM" id="signM">
					</c:if>
					<input type="hidden">
					<input type="hidden" value="${c.itemPrice }">
					<input type="text" readonly class="amountT" value="${c.cartCount }" style="width:50px;text-align:center;">
					<img src="${contextPath }/resources/images/plus.png" class="signImgP" id="signP"></td>
					<td>
					<c:choose>
						<c:when test="${c.cartSubs == 1 }">
							<select style="width:80px;height:30px;" name="cartSubs">
								<option value="1" selected>1주일</option>
								<option value="2">2주일</option>
								<option value="3">3주일</option>
								<option value="4">4주일</option>
							</select>
						</c:when>
						<c:when test="${c.cartSubs == 2 }">
							<select style="width:80px;height:30px;" name="cartSubs">
								<option value="1">1주일</option>
								<option value="2" selected>2주일</option>
								<option value="3">3주일</option>
								<option value="4">4주일</option>
							</select>
						</c:when>
						<c:when test="${c.cartSubs == 3 }">
							<select style="width:80px;height:30px;" name="cartSubs">
								<option value="1">1주일</option>
								<option value="2">2주일</option>
								<option value="3" selected>3주일</option>
								<option value="4">4주일</option>
							</select>
						</c:when>
						<c:otherwise>
							<select style="width:80px;height:30px;" name="cartSubs">
								<option value="1" selected>1주일</option>
								<option value="2">2주일</option>
								<option value="3">3주일</option>
								<option value="4" selected>4주일</option>
							</select>
						</c:otherwise>
					</c:choose>
					</td>
					<td>${itemPrice}원</td>
				</tr>
				</c:forEach>
				
				<tr>
					<td colspan="7" style="text-align:right; padding-right:3%; font-size:40px;"><input type="text" id="totalPrice">총 주문 금액 : 체크박스 체크한 것만 연산</td>
				</tr>
				<tr>
					<td colspan="7" style="text-align:right;padding-right:3%;"><input type="button" value="0개 상품 선택됨" style="margin-right:5%;" id="delBtn"><input type="button" value="10,000원 결제하기" id="paymentBtn"></td>
				</tr>
			</table>
		</div>
	</div>	<!-- 컨테이너 끝 -->
	
	<script>
		$(function(){
			var count = "";
			var check = "";
			var sum = 0;
			$("#allChk").on("click", function(){
				if($("#allChk").prop("checked")){
					$("input[type=checkbox]").prop("checked",true);
					check = $("input:checkbox[class=chk]:checked").length;
					$("#delBtn").val(check + "개 상품 선택됨");
					$("input:checkbox[class=chk]:checked").each(function(){
						sum += Number($(this).val());
					})
					console.log(sum);
				}else{
					$("input[type=checkbox]").prop("checked",false);
					check = $("input:checkbox[class=chk]:checked").length;
					$("#delBtn").val(check + "개 상품 선택됨");
					sum = 0;
					console.log(sum);
				}
			})
			$(".chk").on("click", function(){
				if($("#allChk").prop("checked")){
					$("#allChk").prop("checked",false);
				}
				if($(this).prop("checked")){
					check++;
					$("#delBtn").val(check + "개 상품 선택됨");
					
					/* sum += $(this).parent().next().next().find("input").val(); */
					sum += Number($(this).val());
					$("#totalPrice").val(sum);	
					console.log(sum);
				}else{
					check--;
					$("#delBtn").val(check + "개 상품 선택됨");
					sum -= Number($(this).val());
					console.log(sum);
					
				}
			})
		})
	</script>
	
	
	<!-- 수량 버튼 -->
		<script>
			function addComma(num) {
			 	var regexp = /\B(?=(\d{3})+(?!\d))/g;
				return num.toString().replace(regexp, ',');
			}
			$(function(){
				$(".signImgP").on("click",function(){
					if($(this).parent().prev().prev().prev("td").find("input").prop("checked") == true){
						swal("","선택된 상태로는 수량 변경을 할 수 없습니다.","error");
					}else{
						var amount = $(this).prev().val();
						amount = Number(amount) + 1;
						console.log(amount);
						$(this).prev().val(amount);
						
						var valueCheck = $(this).prev().prev().val();
						$(this).prev().prev().prev().val("");
						var realValue = $(this).prev().prev().prev().val(valueCheck * amount);
						var varPrice = $(this).prev().prev().prev().val();
	
						$(this).parent().next("td").next("td").text("");
						$(this).parent().prev("td").find("input").val(varPrice);
						$(this).parent().prev().prev().prev("td").find("input").val(varPrice);
						
						
						$(this).parent().next("td").next("td").text(addComma(varPrice)+"원");
						
						if(amount > 1){
							$(this).prev().prev().prev().prev().attr("src","${contextPath }/resources/images/minus.png");
						}
					}
				})
				$(".signImgM").on("click",function(){
					if($(this).parent().prev().prev().prev("td").find("input").prop("checked") == true){
						swal("","선택된 상태로는 수량 변경을 할 수 없습니다.","error");
					}else{
						var amount = $(this).next().next().next().val();
						if(amount > 1){
							amount = Number(amount) - 1;
							$(this).next().next().next().val(amount);
							/* console.log(amount); */
							
							var valueCheck = $(this).next().next().val();
							$(this).next().val("");
							var realValue = $(this).next().val(valueCheck * amount);
							var varPrice = $(this).next().val();
							
							$(this).parent().next("td").next("td").text("");
							$(this).parent().next("td").next("td").text(varPrice);
							$(this).parent().prev().prev().prev("td").find("input").val(varPrice);
							$(this).parent().next("td").next("td").text(addComma(varPrice)+"원");
							
							if(amount < 2){
								$(this).attr("src","${contextPath }/resources/images/XSIGN.png");
							}
							
						}else if(amount == 1){
								swal("","1개 미만은 선택하실 수 없습니다.","error");
						}
					}
				})
			})
		</script>
		
		<!-- 장바구니 목록 삭제버튼 -->
		<script>
			$(function(){
				$("#delBtn").on("click", function(){
					var check = $("input:checkbox[class=chk]:checked").length;
					if(check == 0){
						swal("","체크된 상품이 존재하지 않습니다.","info");
					}else{
						swal({
							text : check + "개의 상품을 장바구니에서 삭제하시겠습니까?",
							icon : "warning",
							buttons : ["예", "아니오"],
							closeOnEsc : false,
							dangerMode : true,
						}).then((result)=>{
							if(result){
								
							}else{
								swal("",check+"개의 상품이 장바구니에서 삭제되었습니다.","success");
							}
						})
					}
				})
			})	
		</script>
		<!-- 장바구니 목록 삭제버튼 끝 -->
		
		<!-- 결제하기 버튼 -->
		<script>
			$(function(){
				$("#paymentBtn").on("click", function(){
					var check = $("input:checkbox[class=chk]:checked").length;
					if(check == 0){
						swal("","체크된 상품이 존재하지 않습니다.","info");
					}else{
						swal({
							text : check + "개의 상품 " + "얼마를 결제하시겠습니까?",
							icon : "warning",
							buttons : ["예", "아니오"],
							closeOnEsc : false,
							dangerMode : true,
						}).then((result)=>{
							if(result){
								
							}else{
								swal("","결제 페이지로","success");
							}
						})
					}
				})
			})	
		</script>
		<!-- 결제하기 버튼 끝 -->
		
	<jsp:include page="../common/footer.jsp"/>
</body>
</html>