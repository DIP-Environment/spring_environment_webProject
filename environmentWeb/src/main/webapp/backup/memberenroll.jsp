<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/views/common/header.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<section id=enroll-container>
      <h2>회원 가입 정보 입력</h2>
      <form name="memberEnrollFrm" action="<%=request.getContextPath() %>/memberenrollend.do" method="post" onsubmit="return fn_enroll_validate();" >
       <table>
		<tr>
			<th>아이디</th>
			<td>
				<input type="text" placeholder="4글자이상" name="memberId" id="memberId_" required>
				<input type="button" value="중복검사" onclick="fn_id_duplicate();">
			</td>
		</tr>
		<tr>
			<th>이름</th>
			<td>	
			<input type="text"  name="memberName" id="memberName" required><br>
			</td>
		</tr>
		<tr>
			<th>패스워드</th>
			<td>
				<input type="password" name="password" id="password_" required><br>
			</td>
		</tr>
		<tr>
			<th>패스워드확인</th>
			<td>	
				<input type="password" id="password_2" ><br>
			</td>
		</tr>  
		<tr>
			<th>이메일</th>
			<td>	
				<input type="email" placeholder="abc@xyz.com" name="memberEmail" id="memberEmail" required><br>
			</td>
		</tr>
	</table>
	<input type="submit" value="가입" >
	<input type="reset" value="취소">
       </form>
   </section>
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















