<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="/cls/css/w3.css">
<link rel="stylesheet" href="/cls/css/user.css">
<script type="text/javascript" src="/cls/js/jquery-3.5.0.min.js"></script>
<style>
</style>
<script type="text/javascript">
   $(function(){
      $('#hbtn').click(function(){
         alert('홈으로 이동합니다');
         $(location).attr('href','/cls/main.cls');
      });
      
      $('#ltbtn').click(function(){
         $(location).attr('href','/cls/member/memberList.cls');
      });
   });
</script>
</head>
<body>
   <div class="w3-content w3-center">
      <div class="w3-col w3-card w3-margin w3-purple">
         <h2>회원 상세 정보</h2>
      </div>
      <div class="w3-row"></div>
         <div class="width: 200px; height: 200px; w3-border-bottom w3-margin">
            <img class="box" src="/cls/img/${DATA.avatar}">
         </div>
            <div class="w3-content h400 w3-padding w3-margin w3-card">
               <div class="w3-col w3-border-bottom"><h2><b>${DATA.name} 님 상세정보</b></h2></div>
                  <div class="w3-row"><p></p></div>
               <div class="w3-col m4 w3-right-align w3-margin-right">회원번호 : </div>
                  <div class="w3-col m6 w3-margin-left">${DATA.mno}</div>
                  <div class="w3-row"><p></p></div>
               <div class="w3-col m4 w3-right-align w3-margin-right">아이디 : </div>
                  <div class="w3-col m6 w3-margin-left">${DATA.id}</div>
                  <div class="w3-row"><p></p></div>
               <div class="w3-col m4 w3-right-align w3-margin-right">이름 : </div>
                  <div class="w3-col m6 w3-margin-left">${DATA.name}</div>
                  <div class="w3-row"><p></p></div>
               <div class="w3-col m4 w3-right-align w3-margin-right">이메일 : </div>
                  <div class="w3-col m6 w3-margin-left">${DATA.mail}</div>
                  <div class="w3-row"><p></p></div>
               <div class="w3-col m4 w3-right-align w3-margin-right">전화번호 : </div>
                  <div class="w3-col m6 w3-margin-left">${DATA.tel}</div>
                  <div class="w3-row"><p></p></div>
               <div class="w3-col m4 w3-right-align w3-margin-right">성별 : </div>
                  <div class="w3-col m6 w3-margin-left">${DATA.gen}</div>
               <div class="w3-row"><p></p></div>
               <div class="w3-col m4 w3-right-align w3-margin-right">가입일 : </div>
                  <div class="w3-col m6 w3-margin-left">${DATA.sdate}</div>
               </div> 
         <div class="w3-row w3-margin-top"><p></p></div>
         <div class="w3-col m6 w3-button w3-green" id="hbtn">HOME</div>
         <div class="w3-col m6 w3-button w3-blue" id="ltbtn">LIST</div>
      </div>
</body>
</html>