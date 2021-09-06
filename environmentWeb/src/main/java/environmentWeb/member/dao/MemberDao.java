package environmentWeb.member.dao;

import java.io.FileReader;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import environmentWeb.common.JDBCTemplate;
import environmentWeb.member.model.MemberVO;

public class MemberDao {

	private Properties prop=new Properties();
	
	public MemberDao() {
		try {
			String filePath=MemberDao.class.getResource("/sql/en_member_sql.properties").getPath();
			prop.load(new FileReader(filePath));
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	//로그인
	public MemberVO login(Connection conn, String memberId, String pwd) {
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		MemberVO m=null;
		try {
			pstmt=conn.prepareStatement(prop.getProperty("selectMember"));
			pstmt.setString(1,memberId);
			pstmt.setString(2, pwd);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				//조회된 row가 있다
				m=new MemberVO();
				m.setMemberId(rs.getString("member_Id"));
				m.setMemberName(rs.getString("member_Name"));
				m.setMemberEmail(rs.getString("member_Email"));
				m.setPassword(rs.getString("pwd"));
				m.setRegDate(rs.getDate("regDate"));
				m.setPasswordModDate(rs.getDate("pwd_ModDate"));
				m.setPasswordErrorNum(rs.getInt("pwd_Error_Num"));
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(rs);
			JDBCTemplate.close(pstmt);
		}
		return m;
	}
	
	public int insertMember(Connection conn, MemberVO m) {
		PreparedStatement pstmt=null;
		int result=0;
		try {
			pstmt=conn.prepareStatement(prop.getProperty("insertMember"));
			pstmt.setString(1, m.getMemberId());
			pstmt.setString(2, m.getMemberName());
			pstmt.setString(3, m.getMemberEmail());
			pstmt.setString(4, m.getPassword());
			pstmt.setInt(5, m.getPasswordErrorNum());
			result=pstmt.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(pstmt);
		}
		return result;
	}

	public MemberVO checkDuplicateId(Connection conn, String memberId) {
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		MemberVO m=null;
		try {
			pstmt=conn.prepareStatement(prop.getProperty("selectMemberId"));
			pstmt.setString(1, memberId);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				m=new MemberVO();
				m.setMemberId(rs.getString("member_Id"));
				m.setMemberName(rs.getString("member_Name"));
				m.setMemberEmail(rs.getString("member_Email"));
				m.setPassword(rs.getString("pwd"));
				m.setRegDate(rs.getDate("regDate"));
				m.setPasswordModDate(rs.getDate("pwd_ModDate"));
				m.setPasswordErrorNum(rs.getInt("pwd_Error_Num"));
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(rs);
			JDBCTemplate.close(pstmt);
		}
		return m;
	}
	
	public int updateMember(Connection conn, MemberVO m) {
		PreparedStatement pstmt=null;
		int result=0;
		try {
			pstmt=conn.prepareStatement(prop.getProperty("updateMember"));
			pstmt.setString(1, m.getMemberName());
			pstmt.setString(2, m.getMemberEmail());
			pstmt.setString(3, m.getMemberId());
			result=pstmt.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(pstmt);
		}
		return result;
	}
	
	
	
	public int deleteMember(Connection conn, String memberId) {
		PreparedStatement pstmt=null;
		int result=0;
		try {
			pstmt=conn.prepareStatement(prop.getProperty("deleteMember"));
			pstmt.setString(1,memberId);
			result=pstmt.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(pstmt);
		}
		return result;
		
	}
	
	public int updatePassword(Connection conn,String memberId, String newPwd) {
		PreparedStatement pstmt=null;
		int result=0;
		try {
			pstmt=conn.prepareStatement(prop.getProperty("updatePassword"));
			pstmt.setString(1, newPwd);
			pstmt.setString(2, memberId);
			result=pstmt.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(pstmt);
		}return result;
	}
	
	//비밀번호 틀렸을 때 1씩 증가.
	public int updatePasswordErrorNum(Connection conn, String memberId, int pwdErrorNum) {
		System.out.println("dao + updatePasswordErrorNum=>" + pwdErrorNum + ":" + memberId);
		PreparedStatement pstmt=null;
		int result=0;
		try {
			pstmt=conn.prepareStatement(prop.getProperty("updatePasswordErrorNum"));
			pstmt.setInt(1, pwdErrorNum);
			pstmt.setString(2, memberId);
			result=pstmt.executeUpdate();
			System.out.println("dao=>" + result);
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(pstmt);
		}return result;
	}
	
	//비밀번호 틀린 횟수 들고 오기.
	public MemberVO selectPasswordErrorNum(Connection conn, String memberId) {
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		MemberVO m=null;
		try {
			pstmt=conn.prepareStatement(prop.getProperty("selectPasswordErrorNum"));
			pstmt.setString(1,memberId);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				//조회된 row가 있다
				m=new MemberVO();
				m.setPasswordErrorNum(rs.getInt("pwd_Error_Num"));
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(rs);
			JDBCTemplate.close(pstmt);
		}
		return m;
	}
	
}










