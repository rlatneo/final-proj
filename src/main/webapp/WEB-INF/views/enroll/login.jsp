<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<style>
	body{background: #1f8acb;}	
	.form-line{
		width: 600px; height: 600px;
		border: 5px solid white;
		border-radius: 45px; 
		margin-left: auto; margin-right: auto; margin-top: 100px; margin-bottom: 100px;
		}
	.form-dot{
		width: 580px; height: 580px;
		border: 5px dotted white;
		border-radius: 40px;
		margin: 5px;
		}
	.join-form{
		width: 560px; height: 555px;
		background: white;
		border-radius: 30px;
		margin: 0 auto; margin-top: 12px;
		}
	.mid{
		display: flex; justify-content: center;  
		font-size: 18px; color: #1f8acb; font-weight: bold;
		}
	.join{
		font-size: 25px; font-weight: bold;
		margin: 10px; margin-top: 50px;
		color: #1f8acb;
		}
	.join-line{
		width: 140px; height: 65px;
		border-bottom: 3px solid #1f8acb;}
	.input{
		border-radius: 8px; border: 2px solid #1f8acb;
		width: 284px; height: 35px;
		padding-left: 5px;
		margin-bottom: 25px; margin-top: 5px;
		font-size : 15px;
		}
	.input, .label, .checkbox{margin-left: 50px;}
	.line{
		width: 400px; border-bottom: 3px solid #1f8acb;
		margin: 0 auto; margin-top: 30px; margin-bottom: 30px;
		}
	.mid22{margin: 0 auto;}
	.button{
		width: 150px; height: 50px;
		border-radius: 25px; border: 2px solid black;
		font-size: 20px; font-weight: bold;
		margin-top: 20px; margin-bottom: 20px; margin-left: 130px;
		background: white;
		box-shadow: 0px 5px 0px black;
		cursor: pointer;
		}
	.button:active{box-shadow: 0px 1px 0px black; margin-top: 51.5px;}
	.logincheck{font-size: 13px; margin-top: -15px;}
	.logincheck:hover{text-decoration: underline; cursor: pointer;}
</style>
</head>
<body>
	<div class="outline">
		<div class="form-line">
			<div class="form-dot">
				<div class="join-form">
					<div class="mid">
						<div class="join-line"></div>
						<div class="join">로그인</div>
						<div class="join-line"></div>
					</div>
					<br>
					<div class="mid">
						<div class="mid22">
							<form class="form" action="" method="post">
								<label class="label">아이디</label><br>
								<input type="text" name="id" id="id" class="input" placeholder="아이디를 입력하세요" required><br>
								<label class="label">비밀번호</label><br>
								<input type="password" name="pwd" id="pwd" class="input" placeholder="비밀번호를 입력하세요" required><br>
								<div><button class="button">로그인</button></div>
								<div class="line"></div>
								<div class="logincheck" onclick="location.href='join.en'"> 아직 홀로세끼 계정이 없으신가요? SIGN IN</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>