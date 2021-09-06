<%@page import="environmentWeb.member.model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<%
	MemberVO m=(MemberVO)request.getAttribute("member");
%>

<style>
	section#enroll-container input[readonly]{background-color:lightgray;}
</style>
<section id=enroll-container>
		<h2>회원 정보 수정</h2>
		<form id="memberFrm" method="post" onsubmit="return fn_update_validate();">
			<table>
				<tr>
					<th>아이디</th>
					<td>
						<input type="text" name="userId" id="userId_" 
						value="<%=m.getMemberId()%>" readonly>
					</td>
				</tr>
				<%-- <tr>
					<th>패스워드</th>
					<td>
						<input type="password" name="password" id="password_" 
						value="<%=m.getPassword()%>" required>
					</td>
				</tr>
				<tr>
					<th>패스워드확인</th>
					<td>	
						<input type="password" id="password_2" required><br>
					</td>
				</tr>   --%>
				<tr>
					<th>이름</th>
					<td>	
					<input type="text"  name="userName" id="userName" 
					value="<%=m.getMemberName()%>" required><br>
					</td>
				</tr> 
				<tr>
					<th>이메일</th>
					<td>	
						<input type="email" placeholder="abc@xyz.com" name="email" id="email" value="<%=m.getMemberEmail()%>"><br>
					</td>
				</tr>
			</table>
			<input type="button" value="정보수정" onclick="fn_update_member();"/>
<!-- 			<button type="button">정보수정btn</button> -->
			<button type="button" onclick="fn_password_update();">비밀번호변경</button>
			<input type="button" value="탈퇴" onclick="fn_delete_member();"/>
		</form>
	</section>
	
	<script>
		const fn_password_update=()=>{
			const url="<%=request.getContextPath()%>/updatePassword?userId=<%=m.getMemberId()%>";
			const status="left=500px,top=200px,width=400px,height=210px";
			open(url,"_blank",status);
		}
	
	
	
		<%-- const fn_delete_member=()=>{
			if(confirm("정말로 탈퇴하시겠습니까?")){
				//탈퇴로직 진행
				location.replace("<%=request.getContextPath()%>/deleteMember?userId=<%=loginMember.getUserId()%>");
				//location.replace("/06_HelloMVC/deleteMember?userId="+'user04')
			}
		} --%>
	
	
	
		const fn_update_member=()=>{
			const frm=$("#memberFrm");
			console.log(frm);
			//form태그에 action속성이 설정되어있지 않아 설정하고 submit함수 호출하면 됨.
			//동적으로 form으로 전송되는 servlet을 변경할 수 있다. -> 동적요청
			frm.attr("action","<%=request.getContextPath()%>/memberUpdate.do");
			frm.submit();
		}
		const fn_update_validate=()=>{
			
			
			
			return true;
		}
		$("#password_2").blur((e)=>{
			const pw=$("#password_").val();
			const pwck=$(e.target).val();
			if(pw!=pwck){
				alert("비밀번호가 일치하지 않습니다.");
				$("#password_").focus();
			}
		});	
		
	</script>
	












