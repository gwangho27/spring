<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/cls/css/w3.css">
<link rel="stylesheet" href="/cls/css/join.css">
<script type="text/javascript " src="/cls/js/jquery-3.5.0.min.js"></script>

</head>
<body>
	<div class="w3-col m3"><p></p></div>
	<div class="w3-col m6 mxw">
		<header class="w3-row  w3-blue w3-card-4 w3-bo">
			<h4 class="w3-left w3-padding w3-margin">Increpas Join check</h4>
		</header>
		<hr class="w3-border-bottom">
		<div class="w3-row w3-padding w3-card mxv">
			<form action="/clsProj/member/joinProc.cls" method="POST" id="frm" encType="multipart/form-data">
				<div class=" w3-padding">				
					<label class="ttl" for="id"> 회 원 이름 :</label>
					<div class="infrm">
					 	<input type="text" name="name" id="name" class="input1">					
					</div>
				</div>
				<div class="w3-padding">				
					<label class=" ttl"for="id"> I D :</label>
					<div class="infrm">
					 	<input type="text" name="id" id="id" class="input2">
					 	<div class="w3-button w3-red idck btn "id="idck"> ID Check</div>				
						<p class="w3-col w3-center" id="idmsg" style="display:none;"></p>
						<div class="w3-col w3-center" id="idCont" style="display:none;">
							<h4 class="w3-col m6">I D : </h4><h4 class="w3-col m6" id="getId"></h4>
							<h4 class="w3-col m6">NAME : </h4><h4 class="w3-col m6" id="getName"></h4>
							<h4 class="w3-col m6">TEL : </h4><h4 class="w3-col m6" id="getTel"></h4>
							<h4 class="w3-col m6">MAIL : </h4><h4 class="w3-col m6" id="getMail"></h4>						
						</div>
					</div>
				</div>
				<div class="w3-padding">				
					<label class=" ttl"for="pw"> 비밀번호 :</label>
					<div class="infrm">
					 	<input type="password" name="pw" id="pw" class="input1">
					</div>
				</div>
				<div class="w3-padding">				
					<label class=" ttl"for="repw"> 비밀번호 확인 :</label>
					<div class="infrm">
					 	<input type="password" name="repw" id="repw" class="input1">
					</div>
					<div class="w3-row w3-hide" id="gl1">
						<label class=" ttl" for="repw"><p></p></label>
						<small class="w3-hide" id="gl2"></small>
					</div>
				</div>
				<div class=" w3-padding">				
					<label class="ttl" for="email"> 이 메 일 :</label>
					<div class="infrm">
					 	<input type="text" name="mail" id="mail" class="input1">					
					</div>
				</div>
				<div class=" w3-padding">				
					<label class="ttl" for="tel"> 전 화 번 호 :</label>
					<div class="infrm">
					 	<input type="text" name="tel" id="tel" class="input1">					
					</div>
				</div>
				<div class="w3-padding">				
					<label class="ttl"for="file"> 프로필 사진 :</label>
					<div class="infrm">
					 	<input type="file" name="file" id="file" class="input1">
					</div>
				</div>
				<div class="w3-row">				
					<div class="infrm w3-hide w3-margin-top w3-center" id="imgbox">
					 			<img src="cls/img/noimage.jpg" id="img1" alt="Image"class="imgbox w3-padding w3-border w3-card">
					</div>
				</div>
				<div class="w3-padding" style="position: relative; top: -7px;">				
					<label class="ttl"for="gen"> 성  별 :</label>
					<div class="infrm w3-center" style="position: relative; top: 7px;">
						<div class="w3-half w3-center">
						 	<input type="radio" name="gen" value="F" id="F" class="w3-radio"/> 여자 
						</div>
						<div class="w3-half w3-center">
						 	<input type="radio" name="gen" value="M" id="M" class="w3-radio"/> 남자
						</div>
					</div>
				</div>
				<div class="w3-padding w3-hide" id="avtgenb">
					<label class="ttl" style="position: relative;top: -10px"> 아바타 선택 : </label>
					<div class="infrm w3-center ">
						<div class="w3-hide" id="avtgenM">
							<input class="w3-radio" type="radio" name="avt"  value="11" />
							<img class="avtbox2 w3-margin-top" alt="image" src="cls/img/img_avatar1.png">						
							<input class="w3-radio" type="radio" name="avt"  value="12" />
							<img class="avtbox2 w3-margin-top" alt="image" src="cls/img/img_avatar2.png">
							<input class="w3-radio" type="radio" name="avt"  value="13"/>
							<img class="avtbox2 w3-margin-top" alt="image" src="cls/img/img_avatar3.png">						
						</div>
						<div class="w3-hide" id="avtgenF">
							<input class="w3-radio" type="radio"  value="14"name="avt" />
							<img class="avtbox2 w3-margin-top" alt="image" src="cls/img/img_avatar4.png">						
							<input class="w3-radio" type="radio" value="15" name="avt" />
							<img class="avtbox2 w3-margin-top" alt="image" src="cls/img/img_avatar5.png">
							<input class="w3-radio" type="radio" value="16" name="avt" />
							<img class="avtbox2 w3-margin-top" alt="image" src="cls/img/img_avatar6.png">						
						</div>
					</div>
				</div>
				<div class="w3-padding">
					<label class="ttl" for="y"> 생년월일 :</label>
					<div class="infrm w3-center">
						<input class="w3-center" type="date" name="birth" id="birth" style="width:92%;"/>
					</div>
				</div>
			</form>	
		</div>
		<div class="w3-border w3-row w3-margin-top">
			<div class="w3-half w3-button w3-red" id="btn1">Home</div>
			<div class="w3-half w3-button w3-green" id="btn2">Submit</div>
		</div>
	</div>
</body>
<script type="text/javascript" src="/clsProj/js/join.js">

</script>

</html>