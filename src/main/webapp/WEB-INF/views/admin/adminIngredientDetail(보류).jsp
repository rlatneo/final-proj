<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>admin</title>
<style>
	span{height:25px;}
</style>
</head>
<body>
	<jsp:include page="../common/adminSidebar.jsp"/>
	<div class="mainBox d-inline-block align-top my-5 p-4 ps-5 rounded" style="width: 900px; height:1000px; border: 2px solid rgba(0,0,0,0.1);">
		<h4 class="py-4 mb-0">식재료관리</h4>
		
		<form action="${contextPath}/adminIngredientUpdate.ad" method="post">
			<div class="row">
				<div class="col-6 row">
					<h5 class="my-3">- 식재료정보 -</h5>
					<span class="col-3">재료번호</span>
					<input type="text" class="col-9 pb-1 mb-2 rounded border" value="1" readonly>
					<span class="col-3">등록자</span>
					<input type="text" class="col-9 pb-1 mb-2 rounded border" value="관리자1" readonly>
					<span class="col-3">재료이름</span>
					<input type="text" class="col-9 pb-1 mb-2 rounded" placeholder="재료 이름을 입력해주세요.">
					<span class="col-3">분류</span>
					<input type="text" class="col-9 pb-1 mb-2 rounded" placeholder="재료 종류를 선택해주세요.">
					<span class="col-3">재고</span>
					<input type="number" class="col-9 pb-1 mb-2 rounded" placeholder="재고를 입력해주세요.">
					
					<span class="col-3">가격</span>
					<input type="number" class="col-6 pb-1 mb-2 rounded" placeholder="가격을 입력해주세요.">
					<span class="col-3">원</span>
					<span class="col-3">할인율</span>
					<input type="number" class="col-6 pb-1 mb-2 rounded" placeholder="할인율을 입력해주세요.">
					<span class="col-3">%</span>
					<span class="col-4 text-end">=</span>
					<input type="number" class="col-5 pb-1 mb-2 rounded border" readonly>
					<span class="col-3">원</span>
					
					<span class="col-3">내용</span>					
					<textarea rows="10" class="col-9 mb-2 rounded" placeholder="재료 내용을 입력해주세요.">어느 요리에나 쓰이는 양파! 배송할 때 같이 주문하세요!</textarea>
					
					<span class="col-3">공식등록</span>
					<button type="button" class="col-2 mb-2 rounded" style="border: 2px solid rgba(0,0,0,0.1); ">O</button>
					<input type="hidden" name="isAccept" value="Y" class="col-5">
<!-- 					<span class="col-5"></span> -->
					<span class="col-3">공개상태</span>
					<button type="button" class="col-2 mb-2 rounded" style="border: 2px solid rgba(0,0,0,0.1); ">O</button>
					<input type="hidden" name="isAccept" value="Y" class="col-5">
<!-- 					<span class="col-5"></span> -->
					
					<span class="col-12"></span>
	
					
				</div>
				
				<div class="col-6">
					<div class="ms-5" style="padding-top:56px;">
						<img class="w-100 rounded border" alt="로드 실패" src="${contextPath}/resources/images/logo.png"/>
					</div>
				</div>
				
				<input type="hidden" name="page" value="">
				<div class="d-flex justify-content-center pt-5">
					<button type="submit" class="rounded me-4" style="width: 100px; height:40px; border: 2px solid rgba(0,0,0,0.1); background:white; color: rgba(0,0,0,0.8);">수정하기</button>
					<button type="button" class="rounded" onclick="location.href='${contextPath}/adminIngredientManage.ad?page='" style="width: 100px; height:40px; border: 2px solid rgba(0,0,0,0.1); background:white; color: rgba(0,0,0,0.8);">뒤로가기</button>
				</div>
			</div>
		</form>
		
	</div>
	
</body>
</html>