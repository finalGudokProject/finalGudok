<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

<title></title>
<style>
.list{
        margin:20px;
        list-style-type: none;
    }
    
  
  #list a{
    color:black;
    text-decoration: none;
  }
  button{
      background-color: rgb(0, 125, 255);
  }
  table {
    width: 100%;
    border: 1px solid #444444;
    border-collapse: collapse;
  }
  th, td {
    border: 1px solid #444444;
  }
</style>
</head>
<body>
	<jsp:include page="../common/menubar.jsp"/>
	<br><br><br>
	
	<div class="container">
    <div class="row">
      <div class="col-3">
        <h1 align="center">고객센터</h1>
        <ul class="list" id="list">
            <li style="margin-bottom: 5%;"><img src="resources/images/Alert.png" style="width:20%; height:20%;margin-bottom:3%"><a id="notice" style="color:rgb(0, 125, 255);" readonly>공지사항</a></li>
            <li style="margin-bottom: 5%;"><img src="resources/images/FAQ.png" style="width:20%; height:20%;margin-bottom:3%"><a id="FAQ"  href="sc_FAQ.html">FAQ</a></li>
            <li style="margin-bottom: 5%;"><img src="resources/images/inquiary.png" style="width:20%; height:20%;margin-bottom:3%"><a id="inquiary"  href="sc_nquriary.html">1:1문의</a></li>
            <li style="margin-bottom: 5%;"><img src="resources/images/proposal.png" style="width:20%; height:20%;margin-bottom:3%"><a id="product_proposal"  href="sc_proposal.html">상품제안</a></li>
            <li style="margin-bottom: 5%;"><img src="resources/images/benefit.png" style="width:20%; height:20%;margin-bottom:3%"><a id="tier_benefit"  href="sc_benefit.html">등급별 혜택</a></li>
        </ul>
      </div>
      <div class="col-9">
        
          
            <div style="font-size: 30px;">공지사항</div>
            <hr style="border-color:rgb(0, 125, 255);">
            <table style="margin-top:15px">
                <thead style="text-align: center;">
                  <tr>
                    <th style="width:10%; padding:20px;">제목</th>
                    <td style="width: 35%;">${board.bTitle }</td>
                    <th style="width: 10%;">작성일</th>
                    <td style="width: 10%;">${board.bWrite_date }</td>
                    <th style="width: 5%;">조회수</th>
                    <td style="width: 5%;">${board.bRead_num }</td>
                  </tr>
                </thead>
                <tbody >
                  <tr>
                      <td colspan="6" style="height:auto; padding:5%">
                        <span style="margin:auto">
                        ${board.bContent }
                        </span>
                        <br><br>
                        <center>
                          	<c:if test="${!empty board.originalFileName }">
                          		<img src="${contextPath }/resources/aNoticeUploadFiles/${board.renameFileName }">
							</c:if>
                        </center>
                      </td>
                  </tr>
                </tbody>
              </table>

            <br><br><br>
            <a href="noticeList.do" type="button" class="btn btn-primary" style="float:right;">목록으로</a>
            </div>
            </div>
            </div>
            
            <br><br><br>
            <footer class="page-footer font-small indigo">
				<jsp:include page="../common/footer.jsp" />
			</footer>
</body>
</html>