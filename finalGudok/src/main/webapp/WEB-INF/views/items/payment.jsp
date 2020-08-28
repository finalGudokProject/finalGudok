<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
        integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

    <title>결제페이지</title>
    <style>
        /*폰트 적용*/
        body {
            font-family: 'Jua', sans-serif;
        }

        .vl {
            border: 1px solid #495057;
            height: 370px;
            margin-left: 30px;
            margin-right: 30px;
        }

        #paymentInfo {
            margin-bottom: 50px;
        }

        #paymentInfo>div {
            display: inline-block;
            vertical-align: baseline;
        }

        td {
            padding: 5px;
        }

        tr:nth-child(1) {
            text-align: center;
        }
        
        #payBtn, #goBackBtn{
        	margin-left:10px;
        	margin-right:10px;
        }

        h2 {
            color: black;
            margin-top: 50px;
        }
    </style>
    <link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
</head>

<body>
    <jsp:include page="../common/menubar.jsp" />

    <section>
        <div id="titleDiv">
            <h2 align="center">결제 페이지</h2>
        </div>
        <div id="paymentInfo" align="center">
            <div id="customerInfo">
                <table id="customerTable" width="500" height="500">
                    <tr>
                        <td colspan="3">
                            <h4>배송정보</h4>
                        </td>
                    </tr>
                    <tr>
                        <td>받는 사람</td>
                        <td>${loginUser.memberName }</td>
                        <td><button class="btn">수정하기</button>
                    </tr>
                    <tr>
                        <td>연락처</td>
                        <td colspan="2"><input type="tel" placeholder="연락처를 입력하세요"></td>
                    </tr>
                    <tr>
                        <td>구독주기</td>
                        <td colspan="2"><input type="text"></td>
                    </tr>
                    <tr>
                        <td>주소</td>
                        <td>${loginUser.address2 }<br>${loginUser.address3 }</td>
                        <td><button type="button" class="btn">주소 변경</button></td>
                    </tr>
                    <tr>
                        <td>배송 요청사항</td>
                        <td colspan="2">
                            <select name="cycle" id="cycle">
                                <option value="0">--</option>
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                            </select>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="vl"></div>
            <div id="itemInfo">
                <table id="itemTable" width="500" height="500">
                    <tr>
                        <td colspan="3">
                            <h4>주문상품</h4>
                        </td>
                    </tr>
                    <tr>
                        <td><img src="${contextPath }/resources/images/logo.png" width=50 height=50></td>
                        <td><input type="text"></td>
                        <td><input type="text"></td>
                    </tr>
                    <tr>
                        <td colspan="2">주문금액</td>
                        <td><input type="text"></td>
                    </tr>
                    <tr>
                        <td colspan="2">배송비</td>
                        <td><input type="text"></td>
                    </tr>
                    <tr>
                        <td colspan="2">최종 결제금액</td>
                        <td><input type="text"></td>
                    </tr>
                    <tr>
                        <td colspan="3" align="center">
                            <button type="submit" class="btn" id="payBtn" onclick="requestPay();">결제하기</button>
                            <button type="button" class="btn" id="goBackBtn">이전으로</button>
                        </td>
                    </tr>
                </table>
            </div>
        </div>

    </section>

    <footer>
        <jsp:include page="../common/footer.jsp" />
    </footer>
  
    <script>
		function requestPay(){
		var IMP = window.IMP; // 생략해도 괜찮습니다.
		IMP.init("imp38859026"); // "imp00000000" 대신 발급받은 "가맹점 식별코드"를 사용합니다.
		
		// IMP.request_pay(param, callback) 호출
		  IMP.request_pay({ // param
			pg : "html5_inicis.INIBillTst", // 실제 계약 후에는 실제 상점아이디로 변경
			pay_method : 'card', // 'card'만 지원됩니다.
			merchant_uid : 'merchant_' + new Date().getTime(),
			name : '최초인증결제',
			amount : 0, // 결제창에 표시될 금액. 실제 승인이 이뤄지지는 않습니다. (모바일에서는 가격이 표시되지 않음)
			customer_uid : 'your-customer-unique-id', //customer_uid 파라메터가 있어야 빌링키 발급을 시도합니다.
			buyer_email : 'iamport@siot.do',
			buyer_name : '아임포트',
			buyer_tel : '02-1234-1234'
		  }, function (rsp) { // callback
		    if (rsp.success) {
		    	alert("성공");
		    	
		    	jQuery.ajax({
		            url: "payment.do", // 서비스 웹서버
		            method: "POST",
		            headers: { "Content-Type": "application/json" },
		            data: {
		              customer_uid: "your-customer-unique-id",
		              // 카드(빌링키)와 1:1로 대응하는 값
		            }
		          });
		    } else {
		    	alert("실패");
		    }
		  });
		}
	</script>
	
	
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
        integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"
        integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI"
        crossorigin="anonymous"></script>
    <script type="text/javascript" src="https://code.jquery.com/jquery-latest.min.js" ></script>
  	<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
</body>

</html>