package environmentWeb.member.model;

import java.util.Date;

public class MemberVO {
	//회원 정보
	private String memberId; //아이디
	private String memberName; //이름
	private String memberEmail; //이메일
	private String password; //패스워드
	private Date regDate; //가입날짜
	private Date passwordModDate; //비밀번호 변경 일자
	private int passwordErrorNum; //비밀번호 에러 횟수
	
	//생성자
	public MemberVO() {
		// TODO Auto-generated constructor stub
	}
	
	public MemberVO(String memberId, String memberName, String memberEmail, String password, Date regDate,
			Date passwordModDate, int passwordErrorNum) {
		super();
		this.memberId = memberId;
		this.memberName = memberName;
		this.memberEmail = memberEmail;
		this.password = password;
		this.regDate = regDate;
		this.passwordModDate = passwordModDate;
		this.passwordErrorNum = passwordErrorNum;
	}

	//회원 get&set
	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public String getMemberName() {
		return memberName;
	}

	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}

	public String getMemberEmail() {
		return memberEmail;
	}

	public void setMemberEmail(String memberEmail) {
		this.memberEmail = memberEmail;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Date getRegDate() {
		return regDate;
	}

	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}

	public Date getPasswordModDate() {
		return passwordModDate;
	}

	public void setPasswordModDate(Date passwordModDate) {
		this.passwordModDate = passwordModDate;
	}

	public int getPasswordErrorNum() {
		return passwordErrorNum;
	}

	public void setPasswordErrorNum(int passwordErrorNum) {
		this.passwordErrorNum = passwordErrorNum;
	}
}
