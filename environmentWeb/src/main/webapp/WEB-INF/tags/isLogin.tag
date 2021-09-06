<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ tag trimDirectiveWhitespaces="true" %>
<%
	HttpSession httpSession = request.getSession(false);
	System.out.println("session=>" + httpSession.getAttribute("loginMember"));
	if(httpSession != null && httpSession.getAttribute("loginMember") != null){
%>
<jsp:doBody/>
<%
	}
%>
