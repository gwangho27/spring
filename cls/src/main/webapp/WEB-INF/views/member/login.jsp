<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>cls login form</title>
</head>
<link rel="stylesheet" href="/cls/css/w3.css">
<script type="text/javascript" src="/cls/js/jquery-3.5.0.min.js"></script>
<style>
	.mxw {
		max-width: 800px;
	}
	.titlebar {
		width: 100%;
	}
	.ttl {
		width:20px;
		font-weight: bold;
		display:inline-block;
	}
	.mt20 {
		margin-top: 20px;
	}
	.inarea {
		width: 320px;
	}
	.ml {
		margin-left:10px;
	}
</style>
</head>
<body>
	<div class="w3-col w3-third"><p></p></div>
	<div class="w3-col w3-third" id="loginWin">
		<div class="w3-container" >
			<div class="w3-blue titlebar w3-center w3-card-4"><h3>login</h3></div>		
			<div class="w3-row w3-border mt20">
				<form class="w3-col w3-padding" id="frm" >	
					<div class="w3-row">
						<label class="w3-col m1 w3-right-align w3-center" id="lbl"><h5> id </h5></label>	
						<div class="w3-col m11">
							<input type="text" id="id" name="id" class="w3-padding inarea ml">
						</div>
					</div>
					<div>
						<label class="w3-col m1 w3-right-align w3-center" id="lbp"><h5> pw </h5></label>	
						<div class="w3-col m11">
							<input type="password" id="pw" name="pw" class="w3-padding inarea ml">
						</div>
					</div>
				</form>
			</div>
			<div class="w3-row w3-card-4 mt20">
				<div class=" w3-button w3-half w3-red" id="cbtn" >cancel</div>
				<div class=" w3-button w3-half w3-purple" id="lbtn">submit</div>			
			</div>
		</div>
	</div>
	<!-- 
	<form method="post" action="/cls/test/t03.cls" id="flm">
		<input type="hidden" name="nowPage" value="${PAGE.nowPage}">
		<input type="hidden" name="id" value="${SID}">
	</form>
	-->
</body>
<script type="text/javascript">
	$(document).ready(function(){
		$('#lbl').attr('for','id');
		$('#lbp').attr('for','pw');
		
		$('#lbtn').click(function(){
			//폼태그 속성 부여 
			/* $('#frm').attr('method','get'); //속성값을 알아오거나 부여하는 함수 
			$('#frm').attr('action','result.html'); */
			// 인풋태그의 내용이 입력되지 않으면 이 함수를 종료시킨다.
			
			var sid = $('#id').val(); // input태그의 내용을 가져오는 함수 
			var spw = $('#pw').val(); // input태그의 내용을 가져오는 함수 
			
			if(!sid) {
				$('#pw').val('');
				$('#id').focus('');
				$('#id').prop('disabled','ture');
				$('#pw').prop('disabled','ture');
			}  
			$('#frm').attr('method', 'POST'); 	
			$('#frm').attr('action','/cls/member/loginProc.cls');
			$('#frm').submit();
		});
		$('#cbtn').click(function(){
			$(location).attr('href','./');
		});

	}); 

</script>
</html>