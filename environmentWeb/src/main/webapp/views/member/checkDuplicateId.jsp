<%@page import="environmentWeb.member.model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<%@ include file="/views/common/header.jsp"%>
<%
	MemberVO result=(MemberVO)request.getAttribute("result");
	System.out.println("result => " + result);
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 중복확인</title>
<style>
	div#checkId-container{text-align:center;padding-top:50px;}
	span#duplicated{color:red;font-weight:bolder;}
</style>
</head>
<body>
	<div id="checkId-container">
		<%if(result==null){ %>
			[<span><%=request.getParameter("memberId") %></span>]는 사용가능합니다.	
			<br><br>
			<button type="button" onclick="fn_close();">닫기</button>
		<%}else{ %>
			[<span id="duplicated"><%=request.getParameter("memberId") %></span>]는 사용중입니다.
			<br><br>
			<!-- 아이디 재입력창 구성 -->
			<form action="<%=request.getContextPath() %>/checkDuplicateId" method="post">
				<input type="text" name="memberId" id="memberId">
				<input type="submit" value="중복검사" >
			</form>
		<%} %>
	</div>
	<script>
		const fn_close=()=>{
			//1. 현재값을 부모창의 userId_에 대입
			const memberId='<%=request.getParameter("memberId")%>';
			opener.memberEnrollFrm.memberId.value=memberId;
			opener.memberEnrollFrm.memberName.focus();
			//윈도우창 닫기
			close();
		}
	</script>
</body>
</html>