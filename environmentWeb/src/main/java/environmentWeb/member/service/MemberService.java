package environmentWeb.member.service;

import java.sql.Connection;

import environmentWeb.common.JDBCTemplate;
import environmentWeb.member.dao.MemberDao;
import environmentWeb.member.model.MemberVO;

public class MemberService {
	
	private MemberDao dao=new MemberDao();
	
	
	public MemberVO login(String memberId, String pw) {
		Connection conn=JDBCTemplate.getConnection();
		MemberVO m=dao.login(conn,memberId,pw);
		//System.out.println("loginName=>" + m.getMemberName());
		JDBCTemplate.close(conn);
		return m;
	}
	
	public int insertMember(MemberVO m)
	{
		Connection conn=JDBCTemplate.getConnection();
		int result=dao.insertMember(conn,m);
		
		if(result>0) JDBCTemplate.commit(conn);
		else JDBCTemplate.rollback(conn);
		
		JDBCTemplate.close(conn);		
		
		return result;
	}
	
	
	
	public MemberVO checkDuplicateId(String memberId) {
		Connection conn=JDBCTemplate.getConnection();
		MemberVO m=dao.checkDuplicateId(conn,memberId);
		JDBCTemplate.close(conn);
		return m;
	}
	
	public int updateMember(MemberVO m) {
		Connection conn=JDBCTemplate.getConnection();
		int result=dao.updateMember(conn,m);
		if(result>0) JDBCTemplate.commit(conn);
		else JDBCTemplate.rollback(conn);
		JDBCTemplate.close(conn);
		return result;
	}
	
	public int deleteMember(String memberId) {
		Connection conn=JDBCTemplate.getConnection();
		int result=dao.deleteMember(conn,memberId);
		if(result>0) JDBCTemplate.commit(conn);
		else JDBCTemplate.rollback(conn);
		JDBCTemplate.close(conn);
		return result;
	}
	
	public int updatePassword(String memberId, String newPw) {
		Connection conn=JDBCTemplate.getConnection();
		int result=dao.updatePassword(conn,memberId,newPw);
		if(result>0) JDBCTemplate.commit(conn);
		else JDBCTemplate.rollback(conn);
		JDBCTemplate.close(conn);
		return result;
	}
	
	//비밀번호 틀렸을 때 1씩증가 db에 저장
	public int updatePasswordErrorNum(String memberId, int pwdErrorNum){
		System.out.println("updatePasswordErrorNum 들어옴.");
		Connection conn = JDBCTemplate.getConnection();
		int result = dao.updatePasswordErrorNum(conn, memberId, pwdErrorNum);
		System.out.println("service + updatePasswordErrorNum => " + result);
		if(result>0) JDBCTemplate.commit(conn);
		else JDBCTemplate.rollback(conn);
		JDBCTemplate.close(conn);
		return result;
	}
	
	//비밀번호 틀린 횟수 들고 오기
	public MemberVO selectPasswordErrorNum(String memberId) {
		Connection conn=JDBCTemplate.getConnection();
		MemberVO m=dao.selectPasswordErrorNum(conn,memberId);
		System.out.println("selectPasswordErrorNum=>" + m.getPasswordErrorNum());
		JDBCTemplate.close(conn);
		return m;
	}
	
}






