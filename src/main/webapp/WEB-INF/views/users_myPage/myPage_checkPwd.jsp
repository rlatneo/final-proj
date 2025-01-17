<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- <title>마이페이지 - 회원정보 수정</title> -->
<title>마이페이지 - 회원정보 수정</title>
<link rel="shortcut icon" href="resources/images/favicon.ico" type="image/x-icon">
<link rel="icon" href="resources/images/favicon.ico" type="image/x-icon">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<style>

#dropdownMenu2{color: black; font-weight: bold; background: linear-gradient(to top, #B0DAFF 35%, transparent 5%);}

.btn-3d {
	text-decoration: none;
	width: 100px;
	height: 35px;
	position: relative;
	display: inline-block;
	font-weight: bold;
	font-size: 15px;
	padding: 5px;
	/*   padding: 20px 60px; */
	color: white;
	margin: 20px 10px 10px;
	border-radius: 6px;
	text-align: center;
	transition: top .01s linear;
	text-shadow: 0 1px 0 rgba(0, 0, 0, 0.15);
	cursor: pointer;
}

.btn-3d.blue:hover {
	color: white;
	background-color: #699DD1;
}

.btn-3d:active {
	top: 9px;
}

.btn-3d.blue {
	background-color: #6DA2D9;
	box-shadow: 0 0 0 1px #6698cb inset, 0 0 0 2px rgba(255, 255, 255, 0.15)
		inset, 0 8px 0 0 rgba(110, 164, 219, .7), 0 8px 0 1px
		rgba(0, 0, 0, .4), 0 8px 8px 1px rgba(0, 0, 0, 0.5);
}

.btn-3d.blue:active {
	box-shadow: 0 0 0 1px #6191C2 inset, 0 0 0 2px rgba(255, 255, 255, 0.15)
		inset, 0 0 0 1px rgba(0, 0, 0, 0.4);
}
#check{text-align: center;}
</style>
</head>
<body>
	<%@ include file="../common/top.jsp" %>
	
	<br><br>
	
	<div id="Div">
		<div class="myPageDiv">
		<%@ include file="../common/usersSideBar.jsp" %>
			<div class="content">
				<p id="pmyPage">회원정보 수정</p>
				<div style="border: 1px solid black; background: black; height: 1px;"></div>
				<br>
				<label class="profile">비밀번호 확인</label><br><br><br>
				<div id="check">
				<br><br><br>
					<b style="font-size: 20px;">정보수정을 위해 비밀번호를 입력해주세요.</b><br><br>
					<label style="font-size: 15px;">회원님의 개인정보를 안전하게 보호하기 위해<br>
					<a style="color: red;">인증 후 변경이 가능</a>합니다.</label><br>
					<c:if test="${ !fn:contains(loginUser.usersPw, '$2a$')}">
						<label>소셜 로그인 회원은 네이버 / 카카오에서<br> 정보 수정 가능합니다.</label><br><br><br>
						<b style="font-size: 20px;">아이디 : 소셜 로그인 회원입니다. </b>&nbsp;&nbsp;&nbsp;
					</c:if>
					<c:if test="${ fn:contains(loginUser.usersPw, '$2a$')}">
						<br>
						<b style="font-size: 20px;">아이디 : </b>&nbsp;&nbsp;&nbsp;
						<label style="margin-right: 215px; font-size: 20px;">${ loginUser.usersId }</label><br><br>
						<input type="password" name="usersPwd" placeholder="비밀번호를 입력하세요" style="width: 300px; height: 40px;" id="pwd">
						<a class="btn-3d blue" id="checkBtn">확인</a>
					</c:if>
					<br><br>
				</div>
			</div>
		</div>
	</div>
	
	<br><br><br><br><br><br><br><br><br>
	
	<%@ include file="../common/footer.jsp" %>
	
	<script>
		const checkBtn = document.getElementById('checkBtn');
		const pwd = document.getElementById('pwd');
		
		checkBtn.addEventListener('click', () => {
		    performAction();
		});

		pwd.addEventListener('keyup', (event) => {
		    if (event.key === 'Enter') {
		        performAction();
		    }
		});

		function performAction() {
		    if (pwd.value == '') {
		        swal({
		            text: "비밀번호를 입력해주세요.",
		            icon: "error",
		            button: "확인",
		        });
		    } else {
		        $.ajax({
		            type: 'POST',
		            url: '${ contextPath }/myPage_checkPwd.me',
		            data: { usersPwd: pwd.value },
		            success: data => {
		                console.log(data);
		                if (data == 'yes') {
		                    location.href = '${ contextPath }/myPage_editInfo.me'
		                } else {
		                    swal({
		                        text: "비밀번호를 다시 확인해주세요.",
		                        icon: "error",
		                        button: "확인",
		                    });
		                }
		            },
		            error: data => {
		                console.log(data);
		                swal({
		                    text: "에러 발생.",
		                    icon: "error",
		                    button: "확인",
		                });
		            }
		        });
		    }
		}
	</script>
</body>
</html>