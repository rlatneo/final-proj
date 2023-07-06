<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head profile="http://www.w3.org/2005/10/profile">
<meta charset="UTF-8">
<title>menu detail</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
<link href="https://fonts.googleapis.com/earlyaccess/notosanskr.css" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<style>
* {
	outline: none;
	margin: 0px;
	font-family: 'Noto Sans KR', sans-serif;
}

html{
	scroll-behavior: smooth;
}

#order-wrap {
	width: 1200px;
	background: white;
	height: auto;
	display: flex;
	flex-flow: nowrap;
	justify-content: space-around;
	margin: auto;
}

.top {
	margin-bottom: 10px;
}

#productResult {
	position: relative;
	background: white;
	padding: 10px;
	margin-top: 10px;
	height: 50px;
	padding-bottom: 5px;
	border: 1px solid #4485d7;
	display: block;
}

#productResult h4 span{
	display: block;
	margin: 5px 20px;
}

.right {
	width: 40%;
}

.left {
	width: 50%;
	height: 80%;
}

.left img {
	width: 90%;
	height: 70%;
}

#userInfo{
	width: 90%; 
	height: 20%; 
	text-align: center;
}

.inputBox{
	width: 150px;
	text-align: center;
	height: 40px;
	width: 100%;
	border: 1px solid #4485d7;
	border-radius: 5px;
}

#period label{
	margin: 5px;
}

.select1st, .select2nd, .select3rd, .select4th{
	display: none;
}

.menuBox{
	width: 150px;
	text-align: center;
	height: 165px;
	width: 100%;
	border: 1px solid #4485d7;
	border-radius: 5px;
}

.menuSelect{
	margin: 8px;
}

.menuName{
	margin: 8px 20px;
}

#buybtn, #buybtn2{
	width: 100%;
	height: 40px;
	margin-top: 10px;
	border-radius: 5px;
	background-color: #4485d7;
	color: white;
	font-weight: 400;
	border-color: white;
}

#cartbtn, #bookmark {
	width: 100%;
	height: 40px;
	margin-top: 10px;
	border-radius: 5px;
	background-color: white;
	border: 1px solid #4485d7;
	color: #4485d7;
	font-weight: 400;
	
}

select {
	width: 50%;
	text-align: center;
	height: 30px;
	border: 1px solid #4485d7;
	border-radius: 5px;
	margin-top: 10px;
}

select option {
	width: 50%;
	text-align: center;
	height: 30px;
	border: 1px solid #4485d7;
	border-radius: 5px;
	margin-top: 10px;
}

p b {
	font-weight: 200;
}

.productInfo {
	margin: auto;
	padding: 10px;
	width: 80%;
}

.product ul li:hover {
	transform: scale(1.1);
	transition: 0.45s;
}

#decrease{
	color:#4485d7;
	font-size:20px;
	size:32px;
	background:white;
	font-weight:bold;
	width:32px;
    background-size: 14px;
    display: inline-block;
    border: none;
    margin: -1px 0 0 6px;
}

#increase{
	color:#4485d7;
	font-size:20px;
	background:white;
	font-weight:bold;
	width:32px;
    background-size: 14px;
    display: inline-block;
    border: none;
    margin: -1px 6px 0 0;
}

/* 추천대상 */
	#target{
		width: 500px;
		height: 200px;
		margin: auto;
		background-color: lightgray;
		border-radius: 10px;
		position: relative;
	}
	
	#pushPin{
		position: absolute;
		font-size: 30px;
		left: 235px;
		top: -20px;
	}
	
	#target ul{
		padding: 0 100px;
	}
	
	#detailInfo{
		width: 80%;
		height: 200px;
		margin: auto;
	}
	
	.detailInfoElem{
		width: 22.5%;
		height: 180px;
		margin: 0 1%;
		display: inline-block;
		text-align: center;
	}
	
	.detailIcon{
		font-size: 70px;
		color: #B0DAFF;
	}
	
/* 	식단 설명 */
	.menuABCD{
		width: 65%;
		height: 780px;
		background-color: lightgray;
		margin: 25px auto;
		border-radius: 10px;
		box-shadow: 5px 5px 7px 0px black;
	}
	
	.menuABCD h2{
		padding: 30px 60px 10px 60px; 
	}
	
	.menuMiniPic{
		border: 1px solid black;
		border-radius: 10px;
		height: 150px;
		margin: 20px 5px;
	}

/* 	중간선 */
	.mid{display: flex; flex-basis: 100%; align-item: center; color: rgba(0,0,0,1); font-size: 30px; margin: 5px 0px; font-weight: bold;}
	.mid::before{content: ""; flex-grow: 1; margin: 23px 16px 15px 200px; background: rgba(0,0,0,1); height: 1px; font-size: 0px; line-height: 0spx;}
	.mid::after{content: ""; flex-grow: 1; margin: 23px 200px 15px 16px; background: rgba(0,0,0,1); height: 1px; font-size: 0px; line-height: 0px;}

/* 	문의 */
	#qna{width: 1000px; margin: auto; text-align: center;}
	.boardNo{width: 100px;}
	.boardContent{width: 540px;}
	.boardWrite{width: 150px;}
	.boardDate{width: 210px;}
	.board{border-collapse: collapse; }
	.boardTop{background-color: #B0DAFF;}
	.line{border-bottom: 1px solid black; border-top: 1px solid black;}
	.lineAll{height: 50px; cursor: pointer;}
	.lineAll:hover{background-color: #19A7CE; color: white;}
	
/* 	입력 박스 */
	.inputTextBox{width:730px; height: 50px; margin: auto; position: relative;}
	.profilePic{width: 35px; height: 35px; border: none; border-radius: 50%; position: absolute; top: 5px;}
	.profileImg{width:35px; height: 35px; border-radius: 50%;}
	.enter{background-color: #19A7CE; color: white; border-radius: 10px; box-shadow: 5px 5px 7px 0px black; width: 80px; height: 40px; position: absolute; right: 0;}
	
/* 	후기 */
	.star{width: 110px;}
	.boardReviewWrite{width: 100px;}
	.boardReviewDate{width: 150px;}

/* 	모달 */
	.modal-body{text-align: center;}
	.bi-cart-check-fill{font-size: 60px; color: #B0DAFF;}
	.bi-cart-plus-fill{font-size: 60px; color: #B0DAFF;}
	.btn-n{background: lightgray; color: white;}
	.btn-n:hover{background: darkgray; color: black;}
	.btn-y{background: rgba(255, 170, 0, 0.5); color: white;}
	.btn-y:hover{background: rgba(255, 170, 0); color: black;}

	/*버튼*/
	.button {
	  width: 100px; height: 45px;
	  font-family: ;
	  font-size: 13px;
	  letter-spacing: 2.5px;
	  font-weight: 500;
	  color: #000;
	  background-color: #B0DAFF;
	  border: 1px solid black;
	  border-radius: 10px;
	  box-shadow: 0px 8px 15px rgba(0, 0, 0, 0.1);
	  transition: all 0.3s ease 0s;
	  cursor: pointer;
	  outline: none;
	  margin: 5px;
	  }
	  
	  .button-n {
	  width: 100px; height: 45px;
	  font-family: ;
	  font-size: 13px;
	  letter-spacing: 2.5px;
	  font-weight: 500;
	  color: #000;
	  background-color: #lightgray;
	  border: 1px solid black;
	  border-radius: 10px;
	  box-shadow: 0px 8px 15px rgba(0, 0, 0, 0.1);
	  transition: all 0.3s ease 0s;
	  cursor: pointer;
	  outline: none;
	  margin: 5px;
	  }
	.button:hover {
		background-color: #B0DAFF;
		box-shadow: 0px 8px 15px rgba(0, 0, 0, 0.1);
		color: #fff;
		transform: translateY(-7px);
		}
		
		
	.footer{
		display: flex; 
		justify-content: center;
		align-items : center;
		margin-top: 10px; margin-bottom: 30px;
		padding-top: 20px;
		border-top: 1px solid lightgray;
		}
	.footer{text-align: center;}
	.footer> .button{font-weight: bold;}
	
	#modalNick{display: inline-block;}
	#modalInfo{}

.modalMid{display: flex; flex-basis: 100%; align-item: center; color: rgba(0,0,0,1); font-size: 15px; margin: 5px 0px; font-weight: bold;}
.modalMid::before{content: ""; flex-grow: 1; margin: 10px 10px 10px 10px; background: rgba(0,0,0,1); height: 1px; font-size: 0px; line-height: 0spx;}
.modalMid::after{content: ""; flex-grow: 1; margin: 10px 10px 10px 10px; background: rgba(0,0,0,1); height: 1px; font-size: 0px; line-height: 0px;}

.modalMenu{font-weight: bold; background-color: lightgray; width: 180px; height: 50px;}
.moCon{height: 150px; border-radius: 10px;}
.moCon:hover{cursor: pointer;}
.cut{white-space: nowrap; overflow: hidden; text-overflow:ellipsis;}

/* 	페이지 */
	.page_wrap {
		text-align:center;
		font-size:0;
	}
	.page_nation {
		display:inline-block;
	}
	.page_nation .none {
		display:none;
	}
	.page_nation a {
		display:block;
		margin:0 3px;
		float:left;
		width:28px;
		height:28px;
		line-height:28px;
		text-align:center;
		background-color:#fff;
		font-size:13px;
		color:#999999;
		text-decoration:none;
	}
	.page_nation .arrow {
		margin-top: 0;
	}
	.page_nation .prev {
		background:white;
	}
	.page_nation .next {
		background:white;
	}
	.page_nation a.active {
		background-color:#19A7CE;
		color:white;
		border:1px solid #19A7CE;
		border-radius: 100%;
	}
	.qnaInputBox .inputText{border-radius: 10px; box-shadow: 5px 5px 7px 0px black; width: 600px; height: 40px; position: absolute; left: 210px;}
	.qnaInputBox{width:900px; height: 50px; margin: auto; position: relative;}
	.profile{width: 35px; height: 35px; border: none; border-radius: 50%; position: absolute; top: 5px;}
	fieldset{
		position: absolute;
		left: 40px;
		top: -5px;
	}
	
	#reviewBody fieldset {
		display: inline-block;
		direction: rtl;
		border: 0;
	}
	
	#reviewBody input[type=radio]{
		display: none;
	}
	#reviewBody fieldset label {
		
		font-size: 1.8em;
		color: lightgray;
	}
	
	#reviewBody fieldset label:hover{
		color: rgb(68, 133, 215);
	}
	
	#reviewBody fieldset label:hover ~ label{
		color: rgb(68, 133, 215);
	}
	
	#reviewBody fieldset input[type=radio]:checked ~ label{
		color: rgb(68, 133, 215);
	}
	
	#updateReviewBody fieldset {
		display: inline-block;
		direction: rtl;
		border: 0;
	}
	
	#updateReviewBody input[type=radio]{
		display: none;
	}
	#updateReviewBody fieldset label {
		
		font-size: 1.8em;
		color: lightgray;
	}
	
	#updateReviewBody fieldset label:hover{
		color: rgb(68, 133, 215);
	}
	
	#updateReviewBody fieldset label:hover ~ label{
		color: rgb(68, 133, 215);
	}
	
	#updateReviewBody fieldset input[type=radio]:checked ~ label{
		color: rgb(68, 133, 215);
	}
	fieldset label {cursor: pointer;}
</style>
<body>
<span>
<%@include file="../common/top.jsp" %>
<br>
</span>

	<form action="${contextPath}" method="get">
	<main id="order-wrap">
		<!-- 구매창 컨테이너 -->
		<div class="left">
			<!-- 구매창 왼쪽 사진 넣는 곳 -->
			<img src="${contextPath}/resources/uploadFiles/${thum.imageRenameName}">
			<br>
			<br>
			<div id="userInfo">
				<img src="resources/images/mudo.png" style="width: 100px; height: 100px; border-radius: 50%" role="button" data-bs-toggle="modal" data-bs-target="#profileModal"><br>
				<p role="button" data-bs-toggle="modal" data-bs-target="#profileModal" id="nickBtn" class="d-inline-block">닉네임</p>
			</div>
		</div>
		<div class="right">
			<!-- like 유무 가리는 용도 -->
<%-- 			<input type="hidden" id="likeYn" value="${ like }"> --%>
			<!-- 상품 정보 -->
			<div class="top">
				<div class="productNameBox" style="text-align: center">
					 <h3 style="font-weight: 400; font-size: 42px;">${menu.menuName}</h3>
				</div>
				<div style="margin: auto; text-align: center;">
				<br>
					<h2 style="font-weight: 200; display: inline-block; font-size: 50px;">
						<fmt:formatNumber value="${menu.productPrice}"/>원
					</h2>
					&nbsp;&nbsp;
					<c:if test="${ loginUser != null }">
						<c:if test="${like ne null}">
							<h4 id="like" class="like" style="display: inline-block; font-size: 40px; color: #4485d7; ">♥</h4>
						</c:if>
						<c:if test="${like eq null}">
							<h4 id="like" class="like" style="display: inline-block; font-size: 40px; color: #4485d7; ">♡</h4>
						</c:if>
<!-- 						<h4 id="bookmark" class="bookmark" style="display: inline-block; font-size: 35px; color: #4485d7; "><i class="bi bi-bookmark"></i></h4> -->
						
					</c:if>
				</div>
				<div>
					<div class="info_delivery_area">
                        <dl class="info_delivery">
                            <dt style="font-size: 20px; padding: 5px; margin-top: 20px;">
                            	<img src="resources/images/delivery.png" alt="배송아이콘" style="width: 28px; vertical-align: -8px;">
                            	&nbsp;배송 | 3,000원 
                            </dt>
							<hr style="margin: 0px;">
						</dl>
						<dl class="info_point">
                            <dt style="font-size: 20px; padding: 5px;">
                            	<img src="resources/images/point.png" alt="포인트아이콘" style="width: 28px; vertical-align: -8px;">
                            	&nbsp;<p style="font-size: 15px; display: inline-block;">적립(구매가격의 0.5% 적립) | 0,000원</p>
                            </dt>
							<hr style="margin: 0px;">
						</dl>
						
						
						<br>	
						
						<label>[필수] 수량을 선택해주세요.</label><br>
						<div id="period" class="inputBox">
							<label for="first">${menu.menuName} : </label>
							<button type="button" style="background: none;" id="decrease" onclick="decreaseClick()">-</button>
							<div id="quantity" style="display: inline-block;">1</div>
							<button type="button" style="background: none;" id="increase" onclick="increaseClick()">+</button>
						</div>
						
						<br>
						
						<div id="productResult">
							<div>
								<h4 class="productName" style="color: #19A7CE; margin-left: 20px;">
									총 상품 가격 : <label id="total"><fmt:formatNumber value="${menu.productPrice}"/>원</label>
								</h4>
							</div>
							<br>
						</div>
					</div>
					<input type="hidden" id="foodProductNo" name="foodProductNo" value="${ menu.foodProductNo }">
					<c:if test="${ loginUser == null }"><button type="button" id="buybtn2" style="display: inline-block; width: 100%;" onclick="location.href='${contextPath}/login.en'">구매하려면 먼저 로그인 해주세요</button></c:if>
					<c:if test="${ loginUser != null }">
						<button type="button" id="buybtn" style="display: inline-block; width: 44%;" data-bs-toggle="modal" data-bs-target="#buyModal">구매하기</button> <!-- 결제 창으로 -->
						<button type="button" id="cartbtn"  class="cartbtn" style="display: inline-block; width: 44%;" data-bs-toggle="modal" data-bs-target="#cartModal">장바구니</button>
						<c:if test="${ bookmark != 0 }">
							<button type="button" id="bookmark" style="display: inline-block; width: 10%;" value="bookmark"><i class="bi bi-bookmark-fill"></i></button>
						</c:if>
						<c:if test="${ bookmark == 0 }">
							<button type="button" id="bookmark" style="display: inline-block; width: 10%;" value="noBookmark"><i class="bi bi-bookmark"></i></button>
						</c:if>
					</c:if>
				</div>
			</div>
		</div>
	</main>
</form>
<br>
<br>
		
	
<div class ="productInfoMain">

	<div id="target">
		<i id="pushPin" class="bi bi-pin-fill"></i>
		<h2 style="padding: 30px 0 10px 100px;">추천대상</h2>
		<ul>
			<li>식단 관리가 필요하신 분</li>
			<li>식단 관리가 필요하신 분</li>
			<li>식단 관리가 필요하신 분</li>
		</ul>
	</div>
	
	<br>
	
	<p class="mid">상세 설명</p>
	
	<br>
	<div id="detailInfo">
		<div class="detailInfoElem">
			<i class="bi bi-calendar-check detailIcon"></i><br>
			<p>1주일 치 식단을 기간별로 선택 가능</p>
		</div>
		
		<div class="detailInfoElem">
			<i class="bi bi-hand-thumbs-up detailIcon"></i><br>
			<p>1일 1키트</p>
		</div>
		
		<div class="detailInfoElem">
			<i class="bi bi-check-lg detailIcon"></i><br>
			<p>다양하게 골라먹을 수 있다</p>
		</div>
		
		<div class="detailInfoElem">
			<i class="bi bi-journal-check detailIcon"></i><br>
			<p>전문 영양사가 직접 구성한 식단</p>
		</div>
	</div>
	
	<p class="mid">식단</p>
	
	<c:set var="value" value="${mlList }"/>
	
	<div class="menuABCD">
		<h2>1일차</h2>
		<div style="margin: 0 40px;">
			<div class="menuMiniPic">
				<c:forEach items="${miList}" var="mi">
					<c:if test="${value[0].foodProductNo eq mi.imageDivideNo}">
						<img src="${contextPath}/resources/uploadFiles/${mi.imageRenameName}" width=150px; height=100%; style="border-radius: 5px;">
					</c:if>
				</c:forEach>
				<div class="d-inline-block" style="width: 900px; position: absolute; margin-left: 30px;">
					<h5>${value[0].foodName}</h5>
					<br>
					<p>${fn:split(value[0].foodContent, "@")[0]}</p>
				</div>
			</div>
			<div class="menuMiniPic">
				<c:forEach items="${miList}" var="mi">
					<c:if test="${value[1].foodProductNo eq mi.imageDivideNo}">
						<img src="${contextPath}/resources/uploadFiles/${mi.imageRenameName}" width=150px; height=100%; style="border-radius: 5px;">
					</c:if>
				</c:forEach>
				<div class="d-inline-block" style="width: 900px; position: absolute; margin-left: 30px;">
					<h5>${value[1].foodName}</h5>
					<br>
					<p>${fn:split(value[1].foodContent, "@")[0]}</p>
				</div>
			</div>
			<div class="menuMiniPic">
				<c:forEach items="${miList}" var="mi">
					<c:if test="${value[2].foodProductNo eq mi.imageDivideNo}">
						<img src="${contextPath}/resources/uploadFiles/${mi.imageRenameName}" width=150px; height=100%; style="border-radius: 5px;">
					</c:if>
				</c:forEach>
				<div class="d-inline-block" style="width: 900px; position: absolute; margin-left: 30px;">
					<h5>${value[2].foodName}</h5>
					<br>
					<p>${fn:split(value[2].foodContent, "@")[0]}</p>
				</div>
			</div>
			<div class="menuMiniPic">
				<c:forEach items="${miList}" var="mi">
					<c:if test="${value[3].foodProductNo eq mi.imageDivideNo}">
						<img src="${contextPath}/resources/uploadFiles/${mi.imageRenameName}" width=150px; height=100%; style="border-radius: 5px;">
					</c:if>
				</c:forEach>
				<div class="d-inline-block" style="width: 900px; position: absolute; margin-left: 30px;">
					<h5>${value[3].foodName}</h5>
					<br>
					<p>${fn:split(value[3].foodContent, "@")[0]}</p>
				</div>
			</div>
		</div>
	</div>
	<div class="menuABCD">
		<h2>2일차</h2>
		<div style="margin: 0 40px;">
			<div class="menuMiniPic">
				<c:forEach items="${miList}" var="mi">
					<c:if test="${value[4].foodProductNo eq mi.imageDivideNo}">
						<img src="${contextPath}/resources/uploadFiles/${mi.imageRenameName}" width=150px; height=100%; style="border-radius: 5px;">
					</c:if>
				</c:forEach>
				<div class="d-inline-block" style="width: 900px; position: absolute; margin-left: 30px;">
					<h5>${value[4].foodName}</h5>
					<br>
					<p>${fn:split(value[4].foodContent, "@")[0]}</p>
				</div>
			</div>
			<div class="menuMiniPic">
				<c:forEach items="${miList}" var="mi">
					<c:if test="${value[5].foodProductNo eq mi.imageDivideNo}">
						<img src="${contextPath}/resources/uploadFiles/${mi.imageRenameName}" width=150px; height=100%; style="border-radius: 5px;">
					</c:if>
				</c:forEach>
				<div class="d-inline-block" style="width: 900px; position: absolute; margin-left: 30px;">
					<h5>${value[5].foodName}</h5>
					<br>
					<p>${fn:split(value[5].foodContent, "@")[0]}</p>
				</div>
			</div>
			<div class="menuMiniPic">
				<c:forEach items="${miList}" var="mi">
					<c:if test="${value[6].foodProductNo eq mi.imageDivideNo}">
						<img src="${contextPath}/resources/uploadFiles/${mi.imageRenameName}" width=150px; height=100%; style="border-radius: 5px;">
					</c:if>
				</c:forEach>
				<div class="d-inline-block" style="width: 900px; position: absolute; margin-left: 30px;">
					<h5>${value[6].foodName}</h5>
					<br>
					<p>${fn:split(value[6].foodContent, "@")[0]}</p>
				</div>
			</div>
			<div class="menuMiniPic">
				<c:forEach items="${miList}" var="mi">
					<c:if test="${value[7].foodProductNo eq mi.imageDivideNo}">
						<img src="${contextPath}/resources/uploadFiles/${mi.imageRenameName}" width=150px; height=100%; style="border-radius: 5px;">
					</c:if>
				</c:forEach>
				<div class="d-inline-block" style="width: 900px; position: absolute; margin-left: 30px;">
					<h5>${value[7].foodName}</h5>
					<br>
					<p>${fn:split(value[7].foodContent, "@")[0]}</p>
				</div>
			</div>
		</div>
	</div>
	<div class="menuABCD">
		<h2>3일차</h2>
		<div style="margin: 0 40px;">
			<div class="menuMiniPic">
				<c:forEach items="${miList}" var="mi">
					<c:if test="${value[8].foodProductNo eq mi.imageDivideNo}">
						<img src="${contextPath}/resources/uploadFiles/${mi.imageRenameName}" width=150px; height=100%; style="border-radius: 5px;">
					</c:if>
				</c:forEach>
				<div class="d-inline-block" style="width: 900px; position: absolute; margin-left: 30px;">
					<h5>${value[8].foodName}</h5>
					<br>
					<p>${fn:split(value[8].foodContent, "@")[0]}</p>
				</div>
			</div>
			<div class="menuMiniPic">
				<c:forEach items="${miList}" var="mi">
					<c:if test="${value[9].foodProductNo eq mi.imageDivideNo}">
						<img src="${contextPath}/resources/uploadFiles/${mi.imageRenameName}" width=150px; height=100%; style="border-radius: 5px;">
					</c:if>
				</c:forEach>
				<div class="d-inline-block" style="width: 900px; position: absolute; margin-left: 30px;">
					<h5>${value[9].foodName}</h5>
					<br>
					<p>${fn:split(value[9].foodContent, "@")[0]}</p>
				</div>
			</div>
			<div class="menuMiniPic">
				<c:forEach items="${miList}" var="mi">
					<c:if test="${value[10].foodProductNo eq mi.imageDivideNo}">
						<img src="${contextPath}/resources/uploadFiles/${mi.imageRenameName}" width=150px; height=100%; style="border-radius: 5px;">
					</c:if>
				</c:forEach>
				<div class="d-inline-block" style="width: 900px; position: absolute; margin-left: 30px;">
					<h5>${value[10].foodName}</h5>
					<br>
					<p>${fn:split(value[10].foodContent, "@")[0]}</p>
				</div>
			</div>
			<div class="menuMiniPic">
				<c:forEach items="${miList}" var="mi">
					<c:if test="${value[11].foodProductNo eq mi.imageDivideNo}">
						<img src="${contextPath}/resources/uploadFiles/${mi.imageRenameName}" width=150px; height=100%; style="border-radius: 5px;">
					</c:if>
				</c:forEach>
				<div class="d-inline-block" style="width: 900px; position: absolute; margin-left: 30px;">
					<h5>${value[11].foodName}</h5>
					<br>
					<p>${fn:split(value[11].foodContent, "@")[0]}</p>
				</div>
			</div>
		</div>
	</div>
	<div class="menuABCD">
		<h2>4일차</h2>
		<div style="margin: 0 40px;">
			<div class="menuMiniPic">
				<c:forEach items="${miList}" var="mi">
					<c:if test="${value[12].foodProductNo eq mi.imageDivideNo}">
						<img src="${contextPath}/resources/uploadFiles/${mi.imageRenameName}" width=150px; height=100%; style="border-radius: 5px;">
					</c:if>
				</c:forEach>
				<div class="d-inline-block" style="width: 900px; position: absolute; margin-left: 30px;">
					<h5>${value[12].foodName}</h5>
					<br>
					<p>${fn:split(value[12].foodContent, "@")[0]}</p>
				</div>
			</div>
			<div class="menuMiniPic">
				<c:forEach items="${miList}" var="mi">
					<c:if test="${value[13].foodProductNo eq mi.imageDivideNo}">
						<img src="${contextPath}/resources/uploadFiles/${mi.imageRenameName}" width=150px; height=100%; style="border-radius: 5px;">
					</c:if>
				</c:forEach>
				<div class="d-inline-block" style="width: 900px; position: absolute; margin-left: 30px;">
					<h5>${value[13].foodName}</h5>
					<br>
					<p>${fn:split(value[13].foodContent, "@")[0]}</p>
				</div>
			</div>
			<div class="menuMiniPic">
				<c:forEach items="${miList}" var="mi">
					<c:if test="${value[14].foodProductNo eq mi.imageDivideNo}">
						<img src="${contextPath}/resources/uploadFiles/${mi.imageRenameName}" width=150px; height=100%; style="border-radius: 5px;">
					</c:if>
				</c:forEach>
				<div class="d-inline-block" style="width: 900px; position: absolute; margin-left: 30px;">
					<h5>${value[14].foodName}</h5>
					<br>
					<p>${fn:split(value[14].foodContent, "@")[0]}</p>
				</div>
			</div>
			<div class="menuMiniPic">
				<c:forEach items="${miList}" var="mi">
					<c:if test="${value[15].foodProductNo eq mi.imageDivideNo}">
						<img src="${contextPath}/resources/uploadFiles/${mi.imageRenameName}" width=150px; height=100%; style="border-radius: 5px;">
					</c:if>
				</c:forEach>
				<div class="d-inline-block" style="width: 900px; position: absolute; margin-left: 30px;">
					<h5>${value[15].foodName}</h5>
					<br>
					<p>${fn:split(value[15].foodContent, "@")[0]}</p>
				</div>
			</div>
		</div>
	</div>
	<div class="menuABCD">
		<h2>5일차</h2>
		<div style="margin: 0 40px;">
			<div class="menuMiniPic">
				<c:forEach items="${miList}" var="mi">
					<c:if test="${value[16].foodProductNo eq mi.imageDivideNo}">
						<img src="${contextPath}/resources/uploadFiles/${mi.imageRenameName}" width=150px; height=100%; style="border-radius: 5px;">
					</c:if>
				</c:forEach>
				<div class="d-inline-block" style="width: 900px; position: absolute; margin-left: 30px;">
					<h5>${value[16].foodName}</h5>
					<br>
					<p>${fn:split(value[16].foodContent, "@")[0]}</p>
				</div>
			</div>
			<div class="menuMiniPic">
				<c:forEach items="${miList}" var="mi">
					<c:if test="${value[17].foodProductNo eq mi.imageDivideNo}">
						<img src="${contextPath}/resources/uploadFiles/${mi.imageRenameName}" width=150px; height=100%; style="border-radius: 5px;">
					</c:if>
				</c:forEach>
				<div class="d-inline-block" style="width: 900px; position: absolute; margin-left: 30px;">
					<h5>${value[17].foodName}</h5>
					<br>
					<p>${fn:split(value[17].foodContent, "@")[0]}</p>
				</div>
			</div>
			<div class="menuMiniPic">
				<c:forEach items="${miList}" var="mi">
					<c:if test="${value[18].foodProductNo eq mi.imageDivideNo}">
						<img src="${contextPath}/resources/uploadFiles/${mi.imageRenameName}" width=150px; height=100%; style="border-radius: 5px;">
					</c:if>
				</c:forEach>
				<div class="d-inline-block" style="width: 900px; position: absolute; margin-left: 30px;">
					<h5>${value[18].foodName}</h5>
					<br>
					<p>${fn:split(value[18].foodContent, "@")[0]}</p>
				</div>
			</div>
			<div class="menuMiniPic">
				<c:forEach items="${miList}" var="mi">
					<c:if test="${value[19].foodProductNo eq mi.imageDivideNo}">
						<img src="${contextPath}/resources/uploadFiles/${mi.imageRenameName}" width=150px; height=100%; style="border-radius: 5px;">
					</c:if>
				</c:forEach>
				<div class="d-inline-block" style="width: 900px; position: absolute; margin-left: 30px;">
					<h5>${value[19].foodName}</h5>
					<br>
					<p>${fn:split(value[19].foodContent, "@")[0]}</p>
				</div>
			</div>
		</div>
	</div>
	<div class="menuABCD">
		<h2>6일차</h2>
		<div style="margin: 0 40px;">
			<div class="menuMiniPic">
				<c:forEach items="${miList}" var="mi">
					<c:if test="${value[20].foodProductNo eq mi.imageDivideNo}">
						<img src="${contextPath}/resources/uploadFiles/${mi.imageRenameName}" width=150px; height=100%; style="border-radius: 5px;">
					</c:if>
				</c:forEach>
				<div class="d-inline-block" style="width: 900px; position: absolute; margin-left: 30px;">
					<h5>${value[20].foodName}</h5>
					<br>
					<p>${fn:split(value[20].foodContent, "@")[0]}</p>
				</div>
			</div>
			<div class="menuMiniPic">
				<c:forEach items="${miList}" var="mi">
					<c:if test="${value[21].foodProductNo eq mi.imageDivideNo}">
						<img src="${contextPath}/resources/uploadFiles/${mi.imageRenameName}" width=150px; height=100%; style="border-radius: 5px;">
					</c:if>
				</c:forEach>
				<div class="d-inline-block" style="width: 900px; position: absolute; margin-left: 30px;">
					<h5>${value[21].foodName}</h5>
					<br>
					<p>${fn:split(value[21].foodContent, "@")[0]}</p>
				</div>
			</div>
			<div class="menuMiniPic">
				<c:forEach items="${miList}" var="mi">
					<c:if test="${value[22].foodProductNo eq mi.imageDivideNo}">
						<img src="${contextPath}/resources/uploadFiles/${mi.imageRenameName}" width=150px; height=100%; style="border-radius: 5px;">
					</c:if>
				</c:forEach>
				<div class="d-inline-block" style="width: 900px; position: absolute; margin-left: 30px;">
					<h5>${value[22].foodName}</h5>
					<br>
					<p>${fn:split(value[22].foodContent, "@")[0]}</p>
				</div>
			</div>
			<div class="menuMiniPic">
				<c:forEach items="${miList}" var="mi">
					<c:if test="${value[23].foodProductNo eq mi.imageDivideNo}">
						<img src="${contextPath}/resources/uploadFiles/${mi.imageRenameName}" width=150px; height=100%; style="border-radius: 5px;">
					</c:if>
				</c:forEach>
				<div class="d-inline-block" style="width: 900px; position: absolute; margin-left: 30px;">
					<h5>${value[23].foodName}</h5>
					<br>
					<p>${fn:split(value[23].foodContent, "@")[0]}</p>
				</div>
			</div>
		</div>
	</div>
	<div class="menuABCD">
		<h2>7일차</h2>
		<div style="margin: 0 40px;">
			<div class="menuMiniPic">
				<c:forEach items="${miList}" var="mi">
					<c:if test="${value[24].foodProductNo eq mi.imageDivideNo}">
						<img src="${contextPath}/resources/uploadFiles/${mi.imageRenameName}" width=150px; height=100%; style="border-radius: 5px;">
					</c:if>
				</c:forEach>
				<div class="d-inline-block" style="width: 900px; position: absolute; margin-left: 30px;">
					<h5>${value[24].foodName}</h5>
					<br>
					<p>${fn:split(value[24].foodContent, "@")[0]}</p>
				</div>
			</div>
			<div class="menuMiniPic">
				<c:forEach items="${miList}" var="mi">
					<c:if test="${value[25].foodProductNo eq mi.imageDivideNo}">
						<img src="${contextPath}/resources/uploadFiles/${mi.imageRenameName}" width=150px; height=100%; style="border-radius: 5px;">
					</c:if>
				</c:forEach>
				<div class="d-inline-block" style="width: 900px; position: absolute; margin-left: 30px;">
					<h5>${value[25].foodName}</h5>
					<br>
					<p>${fn:split(value[25].foodContent, "@")[0]}</p>
				</div>
			</div>
			<div class="menuMiniPic">
				<c:forEach items="${miList}" var="mi">
					<c:if test="${value[26].foodProductNo eq mi.imageDivideNo}">
						<img src="${contextPath}/resources/uploadFiles/${mi.imageRenameName}" width=150px; height=100%; style="border-radius: 5px;">
					</c:if>
				</c:forEach>
				<div class="d-inline-block" style="width: 900px; position: absolute; margin-left: 30px;">
					<h5>${value[26].foodName}</h5>
					<br>
					<p>${fn:split(value[26].foodContent, "@")[0]}</p>
				</div>
			</div>
			<div class="menuMiniPic">
				<c:forEach items="${miList}" var="mi">
					<c:if test="${value[27].foodProductNo eq mi.imageDivideNo}">
						<img src="${contextPath}/resources/uploadFiles/${mi.imageRenameName}" width=150px; height=100%; style="border-radius: 5px;">
					</c:if>
				</c:forEach>
				<div class="d-inline-block" style="width: 900px; position: absolute; margin-left: 30px;">
					<h5>${value[27].foodName}</h5>
					<br>
					<p>${fn:split(value[27].foodContent, "@")[0]}</p>
				</div>
			</div>
		</div>
	</div>
	
	<br>
	
	<c:if test="${loginUser ne null && myReview ne 0 }">
		<p class="mid">내가 쓴 후기</p>
		<br>
		<div id="qna">
			<table class="board">
				<tr class="boardTop">
					<th class="line boardNo">No.</th>
					<th class="line star">별점</th>
					<th class="line boardContent">내용</th>
					<th class="line boardReviewWrite">작성자</th>
					<th class="line boardReviewDate">날짜</th>
				</tr>
				<c:if test="${myReview eq 0 }">
					<tr>
						<td colspan=5 style="font-weight: bolder; font-size: 20px;"><br>내가 등록한 후기가 없습니다.</td>
					</tr>
				</c:if>
				<c:if test="${myReview ne 0 }">
					<c:forEach items="${ rList }" var="r">
						<c:if test="${r.reviewWriter eq loginUser.nickName}">
							<tr class="lineAll" <c:if test="${r.reviewWriter eq loginUser.nickName }"> data-bs-toggle="modal" data-bs-target="#updateReviewModal" onclick="openReviewModal('${r.reviewNo}', '${r.reviewContent}', '${r.reviewScore}')"</c:if>>
								<td class="line" <c:if test="${re.reviewWriter eq loginUser.nickName }"> data-bs-toggle="modal" data-bs-target="#updateReviewModal"</c:if>>${ r.reviewNo }</td>
								<td class="line">${ r.reviewScore eq 5 ? "★★★★★" : (r.reviewScore eq 4 ? "★★★★" : (r.reviewScore eq 3 ? "★★★" : (r.reviewScore eq 2 ? "★★" : "★"))) }</td>
								<td class="line">${ r.reviewContent }</td>
								<td class="line">${ r.reviewWriter }</td>
								<td class="line">${ r.reviewDate }</td>
							</tr>
						</c:if>
					</c:forEach>
				</c:if>
			</table>
		</div>
	</c:if>
	<br><br><br>
	<p class="mid">후기</p>
	<br>
	<div id="qna">
		<table class="board">
			<tr class="boardTop">
				<th class="line boardNo">No.</th>
				<th class="line star">별점</th>
				<th class="line boardContent">내용</th>
				<th class="line boardReviewWrite">작성자</th>
				<th class="line boardReviewDate">날짜</th>
			</tr>
			<c:if test="${reviewCount eq 0 }">
				<tr>
					<td colspan=5 style="font-weight: bolder; font-size: 20px;"><br> 등록된 후기가 없습니다.</td>
				</tr>
			</c:if>
			<c:if test="${reviewCount ne 0 }">
				<c:forEach items="${ rList }" var="r">
					<tr class="lineAll" <c:if test="${r.reviewWriter eq loginUser.nickName }"> data-bs-toggle="modal" data-bs-target="#updateReviewModal" onclick="openReviewModal('${r.reviewNo}', '${r.reviewContent}', '${r.reviewScore}')"</c:if>>
						<td class="line">${ r.reviewNo }</td>
						<td class="line">${ r.reviewScore eq 5 ? "★★★★★" : (r.reviewScore eq 4 ? "★★★★" : (r.reviewScore eq 3 ? "★★★" : (r.reviewScore eq 2 ? "★★" : "★"))) }</td>
						<td class="line">${ r.reviewContent }</td>
						<td class="line">${ r.reviewWriter }</td>
						<td class="line">${ r.reviewDate }</td>
					</tr>
				</c:forEach>
			</c:if>
		</table>
	</div>
	<br><br>
	<div class="page_wrap">
	   <div class="page_nation">
	      <!-- 		이전 페이지로	 -->
			<c:url var="goBack" value="${loc }">
				<c:param name="repage" value="${pi.currentPage - 1 }"></c:param>
				<c:param name="rId" value="${recipe.usersId}"></c:param>
				<c:param name="rNo" value="${recipe.foodNo}"></c:param>
				<c:param name="page" value="${page}"></c:param>
			</c:url>
			<c:if test="${rpi.currentPage > 1 }">
				<a class="arrow prev" href="${goBack }"><i class="bi bi-chevron-left"></i></a>
	<%-- 			<c:param name="rId" value="${recipe.usersId}"></c:param> --%>
	<%-- 			<c:param name="rNo" value="${recipe.foodNo}"></c:param> --%>
	<%-- 			<c:param name="page" value="${page}"></c:param> --%>
	<%-- 			<c:param name="repage" value="${repage}"></c:param> --%>
			</c:if>
			
	<!-- 		페이지 -->
			<c:forEach begin="${ rpi.startPage }" end="${ rpi.endPage }" var="p">
				<c:url var="goNum" value="${loc }">
					<c:param name="repage" value="${p }"></c:param>
					<c:param name="rId" value="${recipe.usersId}"></c:param>
					<c:param name="rNo" value="${recipe.foodNo}"></c:param>
					<c:param name="page" value="${page}"></c:param>
				</c:url>
				<c:if test="${ rpi.currentPage eq p }">
					<a class="active">${p }</a>
				</c:if>
				<c:if test="${ !(rpi.currentPage eq p) }">
					<a href="${goNum }">${p }</a>
				</c:if>
			</c:forEach>
			
			<c:url var="goNext" value="${loc }">
				<c:param name="repage" value="${rpi.currentPage + 1 }"></c:param>
				<c:param name="rId" value="${recipe.usersId}"></c:param>
				<c:param name="rNo" value="${recipe.foodNo}"></c:param>
				<c:param name="page" value="${page}"></c:param>
			</c:url>
			<c:if test="${rpi.currentPage < rpi.endPage }">
				<a class="arrow next" href="${goNext}"><i class="bi bi-chevron-right"></i></a>
			</c:if>
	   </div>
	</div>
	<br>
</div>
<c:if test="${loginUser != null}">
    <c:if test="${not empty oList}">
        <div class="qnaInputBox">
            <c:set var="canWriteReview" value="false" />
            <c:forEach items="${oList}" var="o" varStatus="s">
                <c:set var="hasReview" value="false" />
                <c:forEach items="${rList}" var="r">
                    <c:if test="${o.orderNo eq r.orderNo and r.reviewWriter eq loginUser.nickName}">
                        <c:set var="hasReview" value="true" />
                    </c:if>
                </c:forEach>
                <c:if test="${o.usersNo eq loginUser.usersNo and !hasReview}">
                    <c:set var="canWriteReview" value="true" />
                    <input type="hidden" id="order" value="${o.orderNo}">
                    <input type="hidden" id="product" value="${o.productNo}">
                </c:if>
                <c:if test="${canWriteReview}">
                    <button data-bs-toggle="modal" data-bs-target="#reviewModal" id="reviewIn" class="enter">등록</button>
                    <input type="hidden" id="reviewId" value="${loginUser.nickName}">
                </c:if>
                <c:if test="${canWriteReview}">
                    <!-- 루프 중단을 위한 조건 체크 -->
                    <c:set var="canWriteReview" value="false" />
                </c:if>
            </c:forEach>
        </div>
    </c:if>
</c:if>




<br><br>
<br>

<!-- 식단 작성자 프로필 -->
<div class="modal fade" id="profileModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered">
		<div class="modal-content">
			<div class="modal-header">
				<h1 class="modal-title fs-5" id="exampleModalLabel">영양사 프로필</h1>
				<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
			</div>
			<div class="modal-body">
				<div id="modalNick">
					<img src="resources/images/mudo.png" style="width: 100px; height: 100px; border-radius: 50%"><br>
					<p style="font-weight: bold;">${menu.name}</p>
				</div>
				<div id="modalInfo">
					<p style="font-weight: bold; font-size: 20px;">영양사 소개</p>
					${menu.title}
					<br><br>
					<p style="font-weight: bold; font-size: 20px;">자격증</p>
					${menu.career }
					<br><br>
				</div>
				
				<p class="modalMid">등록한 식단표</p>
				<div class="album p-3 bg-white">
					<div class="container px-3">
						<div class="row row-cols-1 row-cols-sm-1 row-cols-md-2 g-4">
							<c:forEach items="${pList}" var="p">
								<div class="col">
									<div class="shadow-sm">
										<div class="card-body moCon" style="background-color: lightgray">
											<h6 style="font-weight: bold;"><a class="cut" style="text-decoration: none; color: black;">${p.menuName} / ${p.menuKind eq 1 ? "다이어트" : (p.menuKind eq 2 ? "몸보신" : (p.menuKind eq 3 ? "든든밥상" : (p.menuKind eq 4? "고단백" : "채식")))}</a></h6>
											<img src="${contextPath}/resources/uploadFiles/${p.imageRenameName}" width="150px" height="100px" style="border-radius: 10px;">
											<input type="hidden" value="${p.productNo}">
										</div>
									</div>
								</div>
							</c:forEach>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<div class="modal fade" id="buyModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered">
		<div class="modal-content">
			<div class="modal-header">
				<h1 class="modal-title fs-5" id="exampleModalLabel">구매하시겠습니까?</h1>
				<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
			</div>
			<div class="modal-body" id="">
				<i class="bi bi-cart-check-fill"></i><br>
				<h3>${menu.menuName }</h3><br>
				수량 : <label id="buyMenuCount">0</label>개<br>
				가격 : <label id="buyMenuPrice">0</label>
			</div>
			<div class="footer">
				<button type="button" class="button-n btn-n" data-bs-dismiss="modal">취소</button>
				<button type="button" class="button btn-y" id="subscribe" onclick="location.href='${contextPath}/payDetail2.ma'">구매하기</button>
			</div>
		</div>
	</div>
</div>

<div class="modal fade" id="cartModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered">
		<div class="modal-content">
			<div class="modal-header">
				<h1 class="modal-title fs-5" id="exampleModalLabel">장바구니 담기</h1>
				<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
			</div>
			<div class="modal-body">
				<i class="bi bi-cart-plus-fill"></i><br>
				<h3>${menu.menuName}</h3><br>
				수량 : <label id="cartMenuCount">0</label>개<br>
				가격 : <label id="cartMenuPrice">0</label>
			</div>
			<div class="footer">
				<button type="button" class="button-n btn-n" data-bs-dismiss="modal">계속<br>쇼핑하기</button>
				<button type="button" class="button btn-y" id="moveCart" onclick="location.href='${contextPath }/basket.ma'">장바구니로</button>
			</div>
		</div>
	</div>
</div>

<!-- 댓글 등록 모달 -->
<div class="modal fade" id="reviewModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered">
		<div class="modal-content">
			<div class="modal-header">
				<h1 class="modal-title fs-5" id="exampleModalLabel">리뷰 작성</h1>
				<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
			</div>
			<br>
			<form method="post" id="writeReview">
				<div class="modal-body" id="reviewBody">
					<input type="hidden" name="productNo" value="${ menu.foodProductNo }">
					<input type="hidden" name="reviewWriter" value="${ loginUser.nickName }">
					<input type="hidden" name="orderNo" id="orderNo">
					<fieldset>
						<input type="radio" name="reviewScore" value="5" id="reviewScore5">
							<label for="reviewScore5">★</label>
						<input type="radio" name="reviewScore" value="4" id="reviewScore4">
							<label for="reviewScore4">★</label>
						<input type="radio" name="reviewScore" value="3" id="reviewScore3">
							<label for="reviewScore3">★</label>
						<input type="radio" name="reviewScore" value="2" id="reviewScore2">
							<label for="reviewScore2">★</label>
						<input type="radio" name="reviewScore" value="1" id="reviewScore1">
							<label for="reviewScore1">★</label>
					</fieldset>
					<br><br>
					<textarea id="reviewWrite" style="width: 400px; height: 150px; border-radius: 10px; resize: none;" maxlength="100" placeholder="내용을 입력해주세요." name="reviewContent"></textarea>
				</div>
				<div class="footer">
					<button type="button" class="button btn-n" data-bs-dismiss="modal">취소</button>
					<button type="button" class="button btn-y" id="write">작성하기</button>
				</div>
			</form>
		</div>
	</div>
</div>

<!-- 댓글 수정 모달 -->
<div class="modal fade" id="updateReviewModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered">
		<div class="modal-content">
			<div class="modal-header">
			<c:if test=""></c:if>
				<h1 class="modal-title fs-5" id="exampleModalLabel">리뷰 수정</h1>
				<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
			</div>
			<br>
			<form method="post" id="updateReview">
				<div class="modal-body" id="updateReviewBody">
					<input type="hidden" name="reviewNo" id="reviewNo">
					<input type="hidden" name="productNo" value="${ menu.foodProductNo }" id="mNo">
					<fieldset>
						<input type="radio" name="reviewScore" value="5" id="reviewUpdateScore5">
							<label for="reviewUpdateScore5">★</label>
						<input type="radio" name="reviewScore" value="4" id="reviewUpdateScore4">
							<label for="reviewUpdateScore4">★</label>
						<input type="radio" name="reviewScore" value="3" id="reviewUpdateScore3">
							<label for="reviewUpdateScore3">★</label>
						<input type="radio" name="reviewScore" value="2" id="reviewUpdateScore2">
							<label for="reviewUpdateScore2">★</label>
						<input type="radio" name="reviewScore" value="1" id="reviewUpdateScore1">
							<label for="reviewUpdateScore1">★</label>
					</fieldset>
					<br><br>
					<textarea id="reviewContentUpdate" name="reviewContent" style="width: 400px; height: 150px; border-radius: 10px; resize: none;" maxlength="100" placeholder="내용을 입력해주세요."></textarea>
				</div>
				<div class="footer">
					<button type="button" class="button btn-n" id="reviewDelete">삭제하기</button>
					<button type="button" class="button btn-y" id="update">수정하기</button>
				</div>
			</form>
		</div>
	</div>
</div>

<br><br>
<%@ include file="../common/footer.jsp" %>

<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script> <!-- 예쁜 alert창 : https://sweetalert.js.org/ -->
<script>
	function decreaseClick(){
		var quantity = document.getElementById('quantity');
		var parseQuan = parseInt(quantity.innerText);
		var total = document.getElementById('total');
		
		if(parseQuan >= 2){
			console.log(total);
			quantity.innerText = parseQuan - 1;
			var result = ${menu.productPrice} * quantity.innerText;
			
			total.innerText = result.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',') + "원";
		}
	}
	
	function increaseClick(){
		var quantity = document.getElementById('quantity');
		var parseQuan = parseInt(quantity.innerText);
		var total = document.getElementById('total');
		
		quantity.innerText = parseQuan + 1;
		var result = ${menu.productPrice} * quantity.innerText;
		
		total.innerText = result.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',') + "원";
	}

	const productNo = '${menu.foodProductNo}';
	const usersNo = '${loginUser.usersNo}';
	
	
// 	function buybtn(){
// 		const quantity = document.getElementById('quantity');
// 		const buyMenuCount =document.getElementById('buyMenuCount');
		
// 		const buyMenuPrice = document.getElementById('buyMenuPrice');
// 		const total = document.getElementById('total');
		
// 		buyMenuCount.innerText = quantity.innerText;
// 		buyMenuPrice.innerText = total.innerText;
		
// 		console.log("quantity : " + buyMenuCount.innerText);
// 		console.log("productNo : " + productNo);
// 		console.log("usersNo : " + usersNo);
		
// 		$.ajax({
//             url: "insertCart.ma",
//             async: false,
//             data: {
//         		"productNo":productNo, 
// 	        	"cartCount":buyMenuCount.innerText,
// 	        	"usersNo":usersNo,
// 	        },
//             success: data =>{
//         		console.log("success");
//             },
//             error: data => {
//             	console.log("error");
//             	 alert("카트 담기 실패");
//             }
//         }) // 우선 장바구니에 담고 -> 구매하기버튼 누르면 구매페이지로 이동(cartNo 젤 최신꺼 들고가야함)
// 	}

	const buybtn = document.getElementById('buybtn');
	buybtn.addEventListener('click', function(){
	const quantity = document.getElementById('quantity');
		const buyMenuCount =document.getElementById('buyMenuCount');
		
		const buyMenuPrice = document.getElementById('buyMenuPrice');
		const total = document.getElementById('total');
		
		buyMenuCount.innerText = quantity.innerText;
		buyMenuPrice.innerText = total.innerText;
		
		console.log("quantity : " + buyMenuCount.innerText);
		console.log("productNo : " + productNo);
		console.log("usersNo : " + usersNo);
		
		$.ajax({
            url: "insertCart.ma",
            async: false,
            data: {
        		"productNo":productNo, 
	        	"cartCount":buyMenuCount.innerText,
	        	"usersNo":usersNo,
	        },
            success: data =>{
        		console.log("success");
            },
            error: data => {
            	console.log("error");
            	 alert("카트 담기 실패");
            }
        }) // 우선 장바구니에 담고 -> 구매하기버튼 누르면 구매페이지로 이동(cartNo 젤 최신꺼 들고가야함)	
	})
	
// 	function cartbtn(){
// 		const quantity = document.getElementById('quantity');
// 		const cartMenuCount =document.getElementById('cartMenuCount');
		
// 		const cartMenuPrice = document.getElementById('cartMenuPrice');
// 		const total = document.getElementById('total');
		
// 		cartMenuCount.innerText = quantity.innerText;
// 		cartMenuPrice.innerText = total.innerText;
		
// 		console.log("quantity : " + cartMenuCount.innerText);
// 		console.log("productNo : " + productNo);
// 		console.log("usersNo : " + usersNo);
		
// 		$.ajax({
// 	            url: "insertCart.ma",
// 	            async: false,
// 	            data: {
// 	        		"productNo":productNo, 
// 		        	"cartCount":cartMenuCount.innerText,
// 		        	"usersNo":usersNo,
// 		        },
// 	            success: data =>{
//             		console.log("success");
// 	            },
// 	            error: data => {
// 	            	console.log("error");
// 	            	 alert("카트 담기 실패");
// 	            }
// 			})
// 	}
	const cartbtn = document.getElementById('cartbtn');
	cartbtn.addEventListener('click', function(){
		const quantity = document.getElementById('quantity');
		const cartMenuCount =document.getElementById('cartMenuCount');
		
		const cartMenuPrice = document.getElementById('cartMenuPrice');
		const total = document.getElementById('total');
		
		cartMenuCount.innerText = quantity.innerText;
		cartMenuPrice.innerText = total.innerText;
		
		console.log("quantity : " + cartMenuCount.innerText);
		console.log("productNo : " + productNo);
		console.log("usersNo : " + usersNo);
		
		$.ajax({
            url: "insertCart.ma",
            async: false,
            data: {
        		"productNo":productNo, 
	        	"cartCount":cartMenuCount.innerText,
	        	"usersNo":usersNo,
	        },
            success: data =>{
           		console.log("success");
            },
            error: data => {
            	console.log("error");
            	 alert("카트 담기 실패");
            }
		})
	})
	
	const moCons = document.getElementsByClassName('moCon');
	for(const moCon of moCons){
		moCon.addEventListener("click", function(){
			const mNo = this.childNodes[5].value;
			location.href="${contextPath}/menuDetail.mn?mNo=" + mNo; 
		})
	}

	const like = document.querySelector(".like");
	
	like.addEventListener("click", function() {
	    if(like.innerText === '♡') {
	        //찜이 안 되어 있으면 
	        $.ajax({
	        	url:'${contextPath}/insertLike.ma',
	        	data:{
	        		usersNo:usersNo,
	        		divisionNo:productNo
	        	},
	        	success: data=> {
	        		if(data == 'success') {
	        			like.innerText = '♥';
	        			swal({
							 text: "해당 상품의 찜 등록이 완료되었습니다.",
							 icon: "success",
							 button: "확인",
							});
		        		setTimeout(function() {
		        			swal.close(); 
		        		}, 3000);
	        		} else { //실패 시 
	        			swal({
							 text: "해당 상품의 찜 등록이 실패했습니다.",
							 icon: "error",
							});
		        		setTimeout(function() {
		        			swal.close(); 
		        		}, 2000);
	        		}
	        	},
	        	error:data=>{
        			swal({
						 text: "해당 상품의 찜 등록이 실패했습니다.",
						 icon: "error",
						});
	        		setTimeout(function() {
	        			swal.close(); 
	        		}, 2000);
	        	}
	        })
	    } else { //찜 등록이 되어 있으면 
	    	$.ajax({
	    		url:'${contextPath}/deleteLike.ma',
	    		data:{
	    			usersNo:usersNo,
	        		divisionNo:productNo
	    		},
	    		success: data => {
	    			console.log(data);
	    			if(data == 'success') {
	    				like.innerText ='♡';
	        			swal({
							 text: "해당 상품의 찜 해제가 완료되었습니다.",
							 icon: "success",
							});
		        		setTimeout(function() {
		        			swal.close(); 
		        		}, 2000);
	        		} else { //실패 시 
	        			swal({
							 text: "해당 상품의 찜 해제가 실패했습니다.",
							 icon: "error",
							});
		        		setTimeout(function() {
		        			swal.close(); 
		        		}, 2000);
	        		}
	    		},
	    		error: data=>{
	    			
	    		}
	    	})
	    }
	});
	
	const bookmark = document.querySelector('#bookmark');
	console.log(bookmark.value);
	bookmark.addEventListener('click', function(){
		if(bookmark.value == 'noBookmark'){
			$.ajax({
				url: "insertBookmark.mn",
				data:{
	        		usersNo:usersNo,
	        		divisionNo:productNo
	        	},
	        	success: data=> {
	        		if(data == 'success') {
	        			bookmark.innerHTML = '<i class="bi bi-bookmark-fill"></i>';
	        			bookmark.value = 'bookmark';
	        			swal({
							 text: "해당 상품의 스크랩이 완료되었습니다.",
							 icon: "success",
							 button: "확인",
							});
		        		setTimeout(function() {
		        			swal.close(); 
		        		}, 3000);
	        		} else { //실패 시 
	        			swal({
							 text: "해당 상품의 스크랩에 실패했습니다.",
							 icon: "error",
							});
		        		setTimeout(function() {
		        			swal.close(); 
		        		}, 2000);
	        		}
	        	},
	        	error:data=>{
	    			swal({
						 text: "해당 상품의 스크랩에 실패했습니다.",
						 icon: "error",
						});
	        		setTimeout(function() {
	        			swal.close(); 
	        		}, 2000);
	        	}
	        })
		} else {
			$.ajax({
	    		url:"deleteBookmark.mn",
	    		data:{
	    			usersNo:usersNo,
	        		divisionNo:productNo
	    		},
	    		success: data => {
	    			console.log(data);
	    			if(data == 'success') {
	    				bookmark.innerHTML = '<i class="bi bi-bookmark"></i>';
	    				bookmark.value = 'noBookmark';
	        			swal({
							 text: "해당 상품의 스크랩이 해제되었습니다.",
							 icon: "success",
							});
		        		setTimeout(function() {
		        			swal.close(); 
		        		}, 2000);
	        		} else { //실패 시 
	        			swal({
							 text: "해당 상품의 스크랩 해제에 실패했습니다.",
							 icon: "error",
							});
		        		setTimeout(function() {
		        			swal.close(); 
		        		}, 2000);
	        		}
	    		},
	    		error: data=>{
	    		}
	    	})
		}
	})
	
// 	$(document).ready(function() {
//     $(".cartbtn").click(function() {
//         var productNo = $("input[name='productNo']").val();
//         var cartCount = $(".buyCount").val();
//         var optionSize = $(".size").val();
        
        
//         var data = {
//             productNo: productNo,
//             cartCount: cartCount,
//             optionSize: optionSize
//         };
        
//         $.ajax({
//             url: "${contextPath}/addCart.ca",
//             type: "post",
//             data: data,
//             success: function(data) {
//             	if(data > 0) {
//                 alert("카트 담기 성공");
//             	}
//             },
//             error: function(data) {
//                
//             }
//         });
//     });
// });
	
	const order = document.getElementById('order');
	const orderNo = document.getElementById('orderNo');
	const reviewIn = document.getElementById('reviewIn');
	const content = document.getElementById('reviewWrite');
	const writeReview = document.getElementById('writeReview');
	const sub = document.getElementById('write');
	
	if(order != null){
		reviewIn.addEventListener('click', () => {
			orderNo.value = order.value;
			sub.addEventListener('click', () => {
				if(content.value == ''){
					swal({
			            text: "리뷰 내용을 입력해주세요.",
			            icon: "error",
			            button: "확인",
			        });
				} else {
					writeReview.action = '${contextPath}/writeReview.mn';		
					writeReview.submit();
				}
			});
		});
	}
	
	const rNo = document.getElementById('reviewNo');
	const score5 = document.getElementById('reviewUpdateScore5');
	const score4 = document.getElementById('reviewUpdateScore4');
	const score3 = document.getElementById('reviewUpdateScore3');
	const score2 = document.getElementById('reviewUpdateScore2');
	const score1 = document.getElementById('reviewUpdateScore1');
	const updateContent = document.getElementById('reviewContentUpdate');
	const updateForm = document.getElementById('updateReview');
	const updateB = document.getElementById('update');
	const deleteB = document.getElementById('reviewDelete');
	const mNo = document.getElementById('mNo');
	
	function openReviewModal(reviewNo, reviewContent, reviewScore) {
	    rNo.value = reviewNo;
	    updateContent.value = reviewContent;
	    if(reviewScore == 5){
	    	score5.checked = true;
	    } else if(reviewScore == 4){
	    	score4.checked = true;
	    } else if(reviewScore == 3){
	    	score3.checked = true;
	    } else if(reviewScore == 2){
	    	score2.checked = true;
	    } else if(reviewScore == 1){
	    	score1.checked = true;
	    }
	  }
	
	updateB.addEventListener('click', () => {
		if(updateContent.value == ''){
			swal({
	            text: "리뷰 내용을 입력해주세요.",
	            icon: "error",
	            button: "확인",
	        });
		} else {
			updateForm.action = '${contextPath}/updateReview.mn';		
			updateForm.submit();
		}
	});
	reviewDelete.addEventListener('click', () => {
		swal({
		    text: '정말 삭제하시겠습니까?',
		    icon: 'warning',
		    buttons: ["취소", "삭제하기"]
		}).then((yes) => {
			if(yes){
				location.href = '${contextPath}/deleteReview.mn?reviewNo=' + rNo.value + '&mNo=' + mNo.value;
			}
		});
	});
 </script> 

</body>
</html>