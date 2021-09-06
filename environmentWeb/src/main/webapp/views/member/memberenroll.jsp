<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/views/common/header.jsp"%>
<!DOCTYPE html>
<html style="font-size: 16px;">
  <head>
  
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="Nam ultrices ultrices nec tortor pulvinar esteras loremips est orem.">
    <meta name="description" content="">
    <meta name="page_type" content="np-template-header-footer-from-plugin">
    <title>회원가입페이지</title>
	<link rel="stylesheet" href="<%=request.getContextPath() %>/css/Join.css" media="screen">
    <meta name="generator" content="Nicepage 3.23.8, nicepage.com">
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i">
    
    <!-- 네비게이션바 include기능 -->
	<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
	<script type="text/javascript">   
	$(document).ready( function() {
			$("#navBar").load("<%=request.getContextPath() %>/views/common/navBar.jsp");  //nav include
	});
	</script>
	
	<!-- footer include기능 -->
	<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
	<script type="text/javascript">   
	$(document).ready( function() {
			$("#footer").load("<%=request.getContextPath() %>/views/common/footer.jsp");  //nav include
	});
	</script>
    
    <script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": "",
		"logo": "../images/2743b7d2-73a2-42ac-e1ba-e365b897d6ea.png"
}</script>
    <meta name="theme-color" content="#478ac9">
    <meta property="og:title" content="Join">
    <meta property="og:type" content="website">
  </head>
  <body class="u-body">
  	<!-- navBar -->
  	<div id="navBar"></div>
  	<!-- section1 -->
    <section class="u-clearfix u-image u-section-1" id="sec-ef0d" data-image-width="1280" data-image-height="719">
      <div class="u-clearfix u-sheet u-valign-middle u-sheet-1">
        <div class="u-container-style u-group u-opacity u-opacity-80 u-radius-30 u-shape-round u-white u-group-1">
          <div class="u-container-layout u-container-layout-1">
            <h1 class="u-text u-text-default u-text-palette-1-base u-text-1">Let's Start!</h1>
            <div class="u-form u-form-1">
            <!-- class="u-clearfix u-form-spacing-10 u-form-vertical u-inner-form" -->
              <form action="<%=request.getContextPath() %>/memberenrollend.do" method="post" name="memberEnrollFrm">
                <input type="hidden" id="siteId" name="siteId" value="618681">
                <input type="hidden" id="pageId" name="pageId" value="619405">
                <div class="u-form-group u-form-name">
                
                <div class="u-form-group u-form-group-2">
                  	<label for="text-0ad8" class="u-label">ID</label>
                  	<input type="text" placeholder="Enter your ID" id="memberId_" name="memberId" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white" required/>
                  	<input type="button" style="width: 50px; height: 20px; font-size: 5px;" value="중복검사" onclick="fn_id_duplicate();"/>	
                </div>
                <div>
                  <label for="name-ebf3" class="u-label">Name</label>
                  <input type="text" placeholder="Enter your Name" id="memberName" name="memberName" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white" required="">
                </div>
                
                <div class="u-form-group u-form-group-3">
                  <label for="text-485b" class="u-label">Password</label>
                  <input type="password" id="password_" name="password" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white" placeholder="Enter your Password">
                </div>
                <div class="u-form-group u-form-group-4">
                  <label for="text-8310" class="u-form-control-hidden u-label"></label>
                  <input type="password" placeholder="Check your Password" id="password_2" name="confirmPassword" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white">
                </div>
                <div class="u-form-email u-form-group">
                  <label for="email-ebf3" class="u-label">Email</label>
                  <input type="email" placeholder="Enter a valid email address" id="memberEmail" name="memberEmail" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white" required="">
                </div>
                </div>
                <span class="u-align-center u-form-group u-form-submit" style="margin-left: 80px">
                  <a href="#" class="u-btn u-btn-round u-btn-submit u-button-style u-hover-palette-1-dark-1 u-palette-1-base u-radius-20 u-btn-1">Enter<br>
                  </a>
                  <input type="submit" value="submit" class="u-form-control-hidden">
                  <a href="#" class="u-btn u-btn-round u-btn-submit u-button-style u-hover-palette-1-dark-1 u-palette-1-base u-radius-20 u-btn-1">cancel<br>
                  </a>
                  <input type="submit" value="submit" class="u-form-control-hidden">
                </span>
                <c:if test="${errors.password or errors.confirmPassword or errors.email}">
				<script type="text/javascript">
					alert('모든 입력칸을 채워주세요.');
				</script>
				</c:if>
				<c:if test="${errors.duplicateId}">
				<script type="text/javascript">
					alert('아이디 중복이 발생하였습니다.');
				</script>
				</c:if>
				<c:if test="${errors.notMatch}">
					<script type="text/javascript">
						alert('암호와 확인이 일치하지 않습니다.');
					</script>
				</c:if>
				
				<!-- <div class="u-form-send-message u-form-send-success"> Thank you! Your message has been sent. </div>
                <div class="u-form-send-error u-form-send-message"> Unable to send your message. Please fix errors then try again. </div>
                <input type="hidden" value="" name="recaptchaResponse"> -->
              </form>
            </div>
          </div>
        </div>
      </div>
    </section>
    
    <!-- 회원 아이디 중복 확인 -->
    <form action="" name="checkDuplicateId">
   	 <input type="hidden" name="memberId">
    </form>
	<script>
		$(function(){
			//비밀번호와 비밀번호확인의 값이 일치하는지 ㅊcheck
			$("#password_2").blur((e)=>{
				const pwck=$(e.target).val();
				const pw=$("#password_").val();
				if(pwck!=pw){
					alert("패스워드가 일치하지 않습니다.");
					$("#password_").focus();
				}
			});
		});
		
		//입력한 아이디값이 4글자 이상이 아니면 전송금지
		const fn_enroll_validate=()=>{
			const memberId=$("#memberId_");
			if(memberId.val().length<4){
				alert("아이디는 최소 4자리 이상이여야 합니다.");
				userId.focus();
				return false;
			}
		}
		
		const fn_id_duplicate=()=>{
			//1. 연결할 주소
			const url="<%=request.getContextPath()%>/checkDuplicateId";
			const title="checkDuplicateId";
			const status="left=500px,top=100px,width=300px,height=200px";
			
			open("",title,status);
			
			//form에 있는 input의 값을 채우고 윈도우(새창)에서 그 결과를 받는 로직으로 설정
			//form태그는 name속성을 설정하면 그 name속성으로 직접접근이 가능함
			console.log(checkDuplicateId);
			//form의 name속으로 필요한 데이터 세팅하기
			checkDuplicateId.memberId.value=$("#memberId_").val();
			checkDuplicateId.method="post";
			checkDuplicateId.action=url;
			//이 form태그가 제출(submit)되는 윈도우를 지정
			checkDuplicateId.target=title;
			
			//제출
			checkDuplicateId.submit();
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

