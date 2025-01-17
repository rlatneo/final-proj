<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고객센터</title>
<link rel="shortcut icon" href="resources/images/favicon.ico" type="image/x-icon">
<link rel="icon" href="resources/images/favicon.ico" type="image/x-icon">
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
<style>
	#admin{color: black; font-weight: bold; background: linear-gradient(to top, #B0DAFF 35%, transparent 5%);}
</style>

</head>
<body>
<%@ include file="../common/top.jsp" %>
<br><br>
	<div class="container-xxl" align="center">
		<br><br><br>
		<br>
		<br>
		<div class="customer d-flex align-items-start">
			<%@ include file="../common/customerBoardPanel.jsp" %>
		    <div class="tab-content" id="v-pills-tabContent">
				<div class="tab-pane show text-center active" id="v-pills-home" role="tabpanel" aria-labelledby="v-pills-home-tab" tabindex="0">
					<br>
					<h1 style="text-align: left;">공지사항</h1><p style="text-align: left;">공지사항 제목을 클릭해주세요.</p>
					
					<hr>
					<br>
					<table class="table cols-12 table-bordered text-center">
				        <tr>
					        <th class="col-1">글번호</th>
					        <th class="col-9">제목</th>
					        <th class="col-2">작성날짜</th>
				    	</tr>
				    	<c:if test="${ empty faqType || faqType == 1 }">
				    	<c:forEach items="${ nlist }" var="i">
					    <tr class="modalNotice">
					        <th class="col-1">${i.faqNo }</th>
					        <th class="col-9 text-cetner ntitle" style="cursor: pointer;">${i.faqTitle }</th>
					        <th class="col-2 ntime"><fmt:formatDate value="${i.faqDate }" pattern="yyyy-MM-dd"/></th>
					    </tr>
					   		<input type="hidden" class="ncontent" value="${i.faqContent}">
					    </c:forEach>
					    </c:if>
					</table>
					<br><br>
					<div class="pageCustomers" > 
						<nav aria-label="Page navigation example">
							<ul class="pageCustomer pagination justify-content-center">
							    <c:if test="${ pi.currentPage > 1 }">
							    <li class="page-item">
							    	<c:url var="goBack" value="${ loc }">
										<c:param name="page" value="${ pi.currentPage-1 }"></c:param>
									</c:url>
									<a class="page-link" href="${ goBack }" aria-label="Previous">
										<span aria-hidden="true">&laquo;</span>
									</a>
								</li>
								</c:if>
								<c:forEach begin="${ pi.startPage }" end="${ pi.endPage }" var="p">
								   	<c:url var="goNum" value="${ loc }">
										<c:param name="page" value="${ p }"></c:param>
									</c:url>
								  	<li class="page-item pageCustomer"><a class="page-link" href="${ goNum }">${ p }</a></li>
								</c:forEach>
								<c:if test="${ pi.currentPage < pi.maxPage }">
								<li class="page-item">
									<c:url var="goNext" value="${ loc }">
										<c:param name="page" value="${ pi.currentPage+1 }"></c:param>
									</c:url>
									<a class="page-link" href="${ goNext }" aria-label="Next">
										<span aria-hidden="true">&raquo;</span>
									</a>
								</li>
								</c:if>
							</ul>
						</nav>	
					</div>
				</div>
			</div> 
		</div>
	</div>
	<br><br><br><br><br>
	
	<div class="modal fade" id="modalNotice" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="title" aria-hidden="true">
	  <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h1 class="modal-title fs-5" id="title"></h1>
	        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	      </div>
	      <div class="modal-body" id="content">
	      
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
	      </div>
	    </div>
	  </div>
	</div>
<%@ include file="../common/footer.jsp" %>	

<script>

	$('.modalNotice').each(function(index, item){
		$(this).click(function(e){
			e.preventDefault();
			$('#modalNotice').modal("show");
			const title = document.querySelector('#title');
			const content = document.querySelector('#content');
			const ntitle = document.querySelectorAll('.ntitle');
			const ncontent = document.querySelectorAll('.ncontent');
			const ntime = document.querySelectorAll('.ntime');
			title.innerText = ntitle[index].innerText;
			content.innerHTML = '<h5>' + ntime[index].innerText + '</h5>' + '<br><p>' + ncontent[index].value + '</p>';
		})
	})

</script>
</body>
</html>