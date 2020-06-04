<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/cls/css/w3.css">
<script type="text/javascript" src="/cls/js/jquery-3.5.0.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$('#logout').click(function(){
		$(location).attr('href','/cls/member/logoutProc.cls');
	});
	$('#login').click(function(){
		$(location).attr('href','/cls/member/login.cls');
	});
	$('#mlbtn').click(function(){
		$(location).attr('href','/cls/member/memberList.cls');
	});
})
</script>
</head>
<body>
	<div class="w3-content mxw">
			
		<h2 class="w3-center w3-pink">Main Page</h2>
		<div class="w3-col w3-margin-top">
			<c:if test="${empty SID}">
			    <a class=" w3-blue w3-center w3-hover-aqua w3-col s3 " id="login"><h6>Login</h6></a>
		 	</c:if> 
			<c:if test="${not empty SID}">
			    <a class=" w3-blue w3-center w3-hover-aqua w3-col s3 " id="logout"><h6>Logout</h6></a>
			    <a class=" w3-indigo w3-center w3-hover-aqua w3-col s3 " id="mlbtn"><h6>MemberList</h6></a>
		 	</c:if> 
		</div>
	</div>
</body>
</html>