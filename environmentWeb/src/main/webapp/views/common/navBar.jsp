<%@page import="environmentWeb.member.model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="u" tagdir="/WEB-INF/tags"%>
<%
	MemberVO memberVO = new MemberVO();
%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>navBar</title>
	<link rel="stylesheet" href="<%=request.getContextPath() %>/css/main.css" media="screen">
	<script class="u-script" type="text/javascript" src="<%=request.getContextPath() %>/js/jquery-1.9.1.min.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="<%=request.getContextPath() %>/js/main.js" defer=""></script>
	</head>
	<body>
		<header class="u-clearfix u-header u-sticky u-sticky-ade3 u-white u-header" id="sec-38c0"><div class="u-clearfix u-sheet u-valign-middle u-sheet-1">
	        <a href="<%=request.getContextPath() %>/index.jsp" class="u-image u-image-default u-logo u-image-1" data-image-width="200" data-image-height="94">
	          <img src="<%=request.getContextPath() %>/images/envLogo.png" class="u-logo-image u-logo-image-1">
	        </a>
	        <nav class="u-menu u-menu-dropdown u-offcanvas u-menu-1" data-responsive-from="MD">
	          <div class="menu-collapse" style="font-size: 1.5rem; letter-spacing: 0px; text-transform: uppercase; font-weight: 700;">
	            <a class="u-button-style u-custom-active-border-color u-custom-active-color u-custom-border u-custom-border-color u-custom-borders u-custom-hover-border-color u-custom-hover-color u-custom-left-right-menu-spacing u-custom-padding-bottom u-custom-text-active-color u-custom-text-color u-custom-text-hover-color u-custom-text-shadow u-custom-text-shadow-blur u-custom-text-shadow-color u-custom-text-shadow-transparency u-custom-text-shadow-x u-custom-text-shadow-y u-custom-top-bottom-menu-spacing u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" href="#">
	              <svg><use xlink:href="#menu-hamburger"></use></svg>
	              <svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"><defs><symbol id="menu-hamburger" viewBox="0 0 16 16" style="width: 16px; height: 16px;"><rect y="1" width="16" height="2"></rect><rect y="7" width="16" height="2"></rect><rect y="13" width="16" height="2"></rect>
	</symbol>
	</defs></svg>
	            </a>
	          </div>
	          <div class="u-custom-menu u-nav-container">
	            <ul class="u-nav u-spacing-30 u-unstyled u-nav-1"><li class="u-nav-item"><a class="u-border-2 u-border-active-palette-1-base u-border-hover-palette-1-base u-border-no-left u-border-no-right u-border-no-top u-button-style u-nav-link u-text-active-palette-1-base u-text-grey-90 u-text-hover-grey-90" href="Say.html" style="padding: 10px 0px;">Say</a>
	</li><li class="u-nav-item"><a class="u-border-2 u-border-active-palette-1-base u-border-hover-palette-1-base u-border-no-left u-border-no-right u-border-no-top u-button-style u-nav-link u-text-active-palette-1-base u-text-grey-90 u-text-hover-grey-90" href="Tip.html" style="padding: 10px 0px;">Tip</a>
	</li><li class="u-nav-item"><a class="u-border-2 u-border-active-palette-1-base u-border-hover-palette-1-base u-border-no-left u-border-no-right u-border-no-top u-button-style u-nav-link u-text-active-palette-1-base u-text-grey-90 u-text-hover-grey-90" href="Talk.html" style="padding: 10px 0px;">Talk</a>
	</li></ul>
	          </div>
	          <div class="u-custom-menu u-nav-container-collapse">
	            <div class="u-black u-container-style u-inner-container-layout u-opacity u-opacity-95 u-sidenav">
	              <div class="u-sidenav-overflow">
	                <div class="u-menu-close"></div>
	                <ul class="u-align-center u-nav u-popupmenu-items u-unstyled u-nav-2"><li class="u-nav-item"><a class="u-button-style u-nav-link" href="Say.html" style="padding: 10px 0px;">Say</a>
	</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="Tip.html" style="padding: 10px 0px;">Tip</a>
	</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="Talk.html" style="padding: 10px 0px;">Talk</a>
	</li></ul>
	              </div>
	            </div>
	            <div class="u-black u-menu-overlay u-opacity u-opacity-70"></div>
	          </div>
	          <!-- 로그인 버튼 -->
	          <!-- http://localhost:8090/environmentWeb/views/member/login.jsp -->
	        <u:isLogin>
	        <div>
				${loginMember.memberName }님, 안녕하세요.
				<a href="http://localhost:8090/environmentWeb/logout">[로그아웃하기]</a>
			</div>
			</u:isLogin>
			<u:notLogin>
				</nav><span class="u-icon u-icon-rectangle u-icon-1"><a href="http://localhost:8090/environmentWeb/views/member/login.jsp"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 128 128" style=""><use xlink:href="#svg-8c21"></use></svg><svg class="u-svg-content" viewBox="0 0 128 128" id="svg-8c21"><path d="m64 17.43a46.754 46.754 0 0 0 -27.4 84.638l.043.03.008.006a46.775 46.775 0 0 0 54.692 0l.046-.032a46.754 46.754 0 0 0 -27.389-84.642zm-24.62 82.305v-3.025a22.766 22.766 0 0 1 22.77-22.78h1.735.115s.076 0 .115 0h1.735a22.766 22.766 0 0 1 22.77 22.78v3.025a43.233 43.233 0 0 1 -49.24 0zm24.735-29.3h-.23a15.518 15.518 0 0 1 -15.454-15.5c0-.4.017-.806.051-1.214a15.571 15.571 0 0 1 31.037.012c.033.4.05.8.05 1.2a15.518 15.518 0 0 1 -15.454 15.5zm28.005 26.586v-.311a26.261 26.261 0 0 0 -18.82-25.199 18.966 18.966 0 0 0 9.766-16.58c0-.5-.021-1-.062-1.484a19.07 19.07 0 0 0 -38.013-.012c-.042.491-.063.994-.063 1.5a18.959 18.959 0 0 0 9.772 16.576 26.26 26.26 0 0 0 -18.82 25.199v.311a43.25 43.25 0 1 1 56.24 0z"></path></svg></span></a>	
			</u:notLogin>
		<br/>
	        
	      </div>
	     </header>
	</body>
</html>