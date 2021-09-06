<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>SAMPLE 상세</title>
	</head>
	<body>
		<h1>SAMPLE 상세</h1>
		<form action="updateSample.do" method="post">
		<input name="id" type="hidden" value="${sample.id }">
			<table border="1" cellpadding="0" cellspacing="0" width="700">
				<tr>
					<td bgcolor="orange" width="70">아이디</td>
					<td align="left"><input name="id" type="text"
						value="${sample.id }" disabled="disabled" /></td>
				</tr>
	
				<tr>
					<td bgcolor="orange">제목</td>
					<td align="left"><input name="title" type="text"
						value="${sample.title }" size="52" /></td>
				</tr>
	
				<tr>
					<td bgcolor="orange">작성자</td>
					<td align="left"><input name="regUser" type="text"
						value="${sample.reg_user }" /></td>
				</tr>
	
				<tr>
					<td bgcolor="orange">내용</td>
					<td align="left">
						<textarea style="margin: 0px; width: 627px; height: 36px;" name="content" type="text" cols="40"
							row="5" value="${sample.content }">${sample.content }
						</textarea>
					</td>
				</tr>
	
				<tr>
					<td bgcolor="orange">등록일</td>
					<td align="left">${sample.reg_date }</td>
				</tr>
	
				<tr>
					<td colspan="2" align="center"><input type="submit"
						value="UPDATE" /></td>
				</tr>
			</table>
		</form>
		<a href="insertSample.jsp">INSERT</a>&nbsp;&nbsp;&nbsp;
		<a href="deleteSample.do?id=${sample.id }">DELETE</a>&nbsp;&nbsp;&nbsp;
		<a href="selectSampleList.do">LIST</a>
	</body>

</html>