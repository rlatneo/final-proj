<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지 - 배송지 수정</title>
<link rel="shortcut icon" href="resources/images/favicon.ico" type="image/x-icon">
<link rel="icon" href="resources/images/favicon.ico" type="image/x-icon">
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<style>
	#dropdownMenu2{color: black; font-weight: bold; background: linear-gradient(to top, #B0DAFF 35%, transparent 5%);}

	table {
	   text-align: left;
	   margin: 0 auto;
	   width: 940px;
	   border-top: 2px solid #444444;
	   border-bottom: 2px solid #444444;
	   border-collapse: collapse;
	}
	
	td {
	   border-top: 1px solid #444444;
	   border-left: 1px solid #444444;
	   padding: 10px;
	}
	.orderInfo{font-size: 17px; font-weight: bold;}
	.detail{
		width: 200px; background: #B0DAFF;
	}
	table tr{height: 70px; border-bottom: 1px solid lightgray;}
	input[type="text"] {height: 35px;}
	#btn{
		width: 85px; height: 40px;
		border: 2px solid black;
		border-radius: 20px;
		box-shadow: 0px 5px black;
		margin-left: 425px;
		font-weight: bold;
		background: white;
	}
	#btn:active{
		box-shadow: 0px 1px 0px black; transform: translateY(5px);
		background: #B0DAFF;
	}
</style>
</head>
<body>
	<%@ include file="../common/top.jsp" %>
	
	<br><br>
	
	<div id="Div">
		<div class="myPageDiv">
		<%@ include file="../common/usersSideBar.jsp" %>
			<div class="content">
				<p id="pmyPage">배송지 수정</p>
				<div style="border: 1px solid black; background: black; height: 1px;"></div>
				<br><br>
				<p class="orderInfo">배송지 정보</p>
					<form method="post" id="form">
						<input type="hidden" value="${ loginUser.usersNo }" name="usersNo">
						<input type="hidden" value="${ sa.shippingNo }" name="shippingNo">
						<table>
							<tr>
								<td class="detail">배송지명</td>
								<td><input type="text" style="width: 400px; margin-left: 15px" name="shippingName" value="${ sa.shippingName }" id="shippingName"></td>
							</tr>
							<tr>
								<td class="detail">받으시는분</td>
								<td>
									<input type="text" style="width: 400px; margin-left: 15px" name="recipient" value="${ sa.recipient }" id="recipient">
								</td>
							</tr>
							<tr>
								<td class="detail">주소</td>
								<td>
									<input type="text" style="width: 150px; margin-bottom: 10px; margin-left: 15px;" id="sample6_postcode" placeholder="우편번호" name="postcode" value="${ fn:replace(fn:split(sa.address, ',')[0], '[', '').trim() }">
									<input type="button" style="border-radius: 10; height: 35px;" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
									<input type="text" id="sample6_address" style="margin-bottom: 10px; width: 400px; margin-left: 15px;" placeholder="주소" name="addressInfo" value="${ fn:replace(fn:split(sa.address, ',')[1], '[', '').trim() }"><br> 
									<input type="text" id="sample6_detailAddress" style="margin-bottom: 10px; width: 400px; margin-left: 15px;" placeholder="상세주소" name="detailAddress" value="${ fn:replace(fn:split(sa.address, ',')[2], ']', '').trim() }"><br>
								</td>
							</tr>
							<tr>
								<td class="detail">휴대전화</td>
								<td><input type="text" style="width: 400px; margin-left: 15px" name="phone" value="${ sa.phone }" id="phone"></td>
							</tr>
						</table>
					<br><br>
					<button id="btn">수정하기</button>
				</form>
			</div>
		</div>
	</div>
	
	<br><br><br><br><br><br><br>
	
	<%@ include file="../common/footer.jsp" %>
	
	<script>
	   function sample6_execDaumPostcode() { //우편번호 찾기 클릭 시
	        new daum.Postcode({ //다음에서 제공하는 Postcode 메서드 
	            oncomplete: function(data) {
	                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

	                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
	                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
	                var addr = ''; // 주소 변수

	                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
	                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
	                    addr = data.roadAddress;
	                } else { // 사용자가 지번 주소를 선택했을 경우(J)
	                    addr = data.jibunAddress;
	                }


	                // 우편번호와 주소 정보를 해당 필드에 넣는다.
	                document.getElementById('sample6_postcode').value = data.zonecode;
	                document.getElementById("sample6_address").value = addr;
	                // 커서를 상세주소 필드로 이동한다.
	                document.getElementById("sample6_detailAddress").focus();
	            }
	        }).open();
	    }
	   
	   const editBtn = document.getElementById('btn');
	   const form = document.getElementById('form');
		
		editBtn.addEventListener('click', (e) => {
			const shippingName = document.getElementById('shippingName').value;
			const recipient = document.getElementById('recipient').value;
			const postcode = document.getElementById('sample6_postcode').value;
			const addressInfo = document.getElementById('sample6_address').value;
			const detailAddress = document.getElementById('sample6_detailAddress').value;
			const phone = document.getElementById('phone');
			const phoneNumber = phone.value;
	    	const regex = /[0-9]/;
	    	
	    	if (!regex.test(phoneNumber) && phoneNumber.trim() != '') {
	    		swal({
					 text: "숫자만 입력해주세요.",
					 icon: "error",
					 button: "확인"
				}).then(function() {
					phone.focus();
			    });
	    		e.preventDefault();
	    		return;
			} 
			if (
				shippingName.trim() === '' ||
				recipient.trim() === '' ||
				postcode.trim() === '' ||
				addressInfo.trim() === '' ||
				detailAddress.trim() === '' ||
				phoneNumber.trim() === ''
			) {
				swal({
					text: '모든 입력값은 필수사항입니다.',
					icon: 'error',
					button: '확인',
				});
				e.preventDefault();
			} else {
				form.action = '${ contextPath }/myPage_updateAddress.me';
				form.submit();
			}
		});
	</script>
	
	
</body>
</html>