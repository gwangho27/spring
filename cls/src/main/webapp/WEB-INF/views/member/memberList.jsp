<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 리스트</title>
<link rel="stylesheet" href="/cls/css/w3.css">
<link rel="stylesheet" href="/cls/css/user.css">
<script type="text/javascript" src="/cls/js/jquery-3.5.0.min.js"></script>
<script type="text/javascript">
	$(function(){
		$('.btn').click(function(){
			var sno = $(this).attr('id');
			alert(sno);
			 
			$('#mno').val(sno);
			$('#listFrm').attr('action','/cls/member/memberDetail.cls');
			$('#listFrm').submit();
			
		});
	});
	/*  */
</script>
</head>
<body>
	<form action="" method="POST" id="listFrm">
		<input type="hidden" name="mno" id="mno">
	</form>
	<div class="w3-content mxw">
		<h2 class="w3-center w3-padding w3-deep-purple">회원 리스트</h2>
		<div class=" w3-margin-top">
			<c:forEach var="data" items="${LIST}" varStatus="st">
				<div class="w3-button w3-card-4 w3-margin-left ${COLOR.get(st.index)} w-150 btn" id="${data.mno}">${data.name}</div>
			</c:forEach>
		</div>
	</div>
</body>
</html>