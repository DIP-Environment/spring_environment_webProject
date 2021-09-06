<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html style="font-size: 16px;">
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="Nam ultrices ultrices nec tortor pulvinar esteras loremips est orem.">
    <meta name="description" content="">
    <meta name="page_type" content="np-template-header-footer-from-plugin">
    <title>Login</title>
    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/Login.css" media="screen">
    <meta name="generator" content="Nicepage 3.23.8, nicepage.com">
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i">
    
    <!-- 네비게이션바 include기능 -->
	<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
	<script type="text/javascript">   
	$(document).ready( function() {
			$("#navBar").load("../common/navBar.jsp");  //nav include
	});
	</script>
	
	<!-- footer include기능 -->
	<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
	<script type="text/javascript">   
	$(document).ready( function() {
			$("#footer").load("../common/footer.jsp");  //nav include
	});
	</script>
    
    <script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": "",
		"logo": "../images/2743b7d2-73a2-42ac-e1ba-e365b897d6ea.png"
}</script>
    <meta name="theme-color" content="#478ac9">
    <meta property="og:title" content="Login">
    <meta property="og:type" content="website">
  </head>
  <body class="u-body">
  	<!-- navBar -->
  	<div id="navBar"></div>
    <section class="u-clearfix u-image u-section-1" id="sec-ef0d" data-image-width="1280" data-image-height="719">
      <div class="u-clearfix u-sheet u-valign-middle u-sheet-1">
        <div class="u-container-style u-group u-opacity u-opacity-80 u-radius-30 u-shape-round u-white u-group-1">
          <div class="u-container-layout u-container-layout-1">
            <h1 class="u-text u-text-default u-text-palette-1-base u-text-1">Sign in!</h1>
            <div class="u-form u-form-1">
              <form id="loginFrm" action= "<%=request.getContextPath() %>/login" method="post" >
                <input type="hidden" id="siteId" name="siteId" value="618681">
                <input type="hidden" id="pageId" name="pageId" value="619496">
                <div class="u-form-group u-form-group-1">
                  <label for="text-0ad8" class="u-label">ID</label>
                  <input type="text" placeholder="Enter your ID" id="memberId" name="memberId" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white">
                  <c:if test="${errors.id}">
					<script type="text/javascript">
						/* alert('ID를 입력하세요.'); */
					</script>
				  </c:if>
                </div>
                <div class="u-form-group u-form-group-2">
                  <label for="text-485b" class="u-label">Password</label>
                  <input type="password" id="password" name="password" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white" placeholder="Enter your Password">
                  <c:if test="${errors.password}">
					<script type="text/javascript">
						/* alert('암호를 입력하세요.'); */
					</script>
				  </c:if>
                </div>
                <div class="u-align-center u-form-group u-form-submit">
                  <a href="#" class="u-btn u-btn-round u-btn-submit u-button-style u-hover-palette-1-dark-1 u-palette-1-base u-radius-20 u-btn-1">Enter<br>
                  </a>
                  <input type="submit" value="submit" class="u-form-control-hidden">
                </div>
                <div class="u-form-send-message u-form-send-success"> Thank you! Your message has been sent. </div>
                <div class="u-form-send-error u-form-send-message"> Unable to send your message. Please fix errors then try again. </div>
                <input type="hidden" value="" name="recaptchaResponse">
              </form>
            </div>
            <a href="<%=request.getContextPath()%>/views/member/memberenroll.jsp" class="u-border-1 u-border-active-palette-2-base u-border-hover-palette-1-base u-btn u-button-style u-none u-text-palette-1-base u-btn-2">SignUp<span style="font-size: 1rem;">
                <span style="font-size: 1.5rem;"></span>
              </span>
            </a>
          </div>
        </div>
      </div>
    </section>
    
    <!-- 회원 아이디 비번 점검 -->
    <script>
		const fn_login_validate=()=>{
			//userId input태그에 값이 있으면 값이 4글자 이상이면
			const userId=$("#userId").val();
			if(userId.trim().length<4){
				alert("아이디를 4글자 이상 입력하세요");
				return false;
			}
			//password 공란이 아니면 전송
			const pw=$("#password").val();
			if(pw.trim().length==0){
				alert("비밀번호를 입력하세요!");
				return false;
			}	
		}
	</script>
    
    
    <!-- <footer class="u-align-center u-clearfix u-footer u-grey-80 u-footer" id="sec-9377"><div class="u-clearfix u-sheet u-sheet-1">
        <p class="u-small-text u-text u-text-variant u-text-1">대구디지털산업진흥원 DIP</p>
        <p class="u-small-text u-text u-text-variant u-text-2"> 대구 수성구 알파시티1로 170(대흥동) 대구디지털산업진흥원</p>
        <p class="u-small-text u-text u-text-variant u-text-3"> 대표전화 : 053-655-5600 / 팩스 : 053-655-3501</p>
      </div></footer> -->
    <div id="footer"></div>
    <section class="u-backlink u-clearfix u-grey-80">
      <a class="u-link" href="https://nicepage.com/website-templates" target="_blank">
        <span>Website Template</span>
      </a>
      <p class="u-text">
        <span>created with</span>
      </p>
      <a class="u-link" href="https://nicepage.com/" target="_blank">
        <span>Offline Website Builder</span>
      </a>. 
    </section>
  </body>
</html>