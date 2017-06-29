package com.ebook.BookChiGi.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;

import com.ebook.BookChiGi.model.dto.MemberVO;

public class ImplementedMemberDAO implements MemberDAO {
	@Autowired
	private DataSource ds = null;
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rset = null;
	
	private void closeAll () throws SQLException {
		if (rset != null) rset.close ();
		if (pstmt != null) pstmt.close ();
		if (conn != null) conn.close ();
	}
	
	@Override public List<MemberVO> searchMemberAll () throws SQLException {
		return null;
	}

	@Override public MemberVO searchMemberByNum (int userNo) throws SQLException {
		return null;
	}

	@Override
	public MemberVO searchMemberByMail (String userMail) throws SQLException {
		try {
			conn = ds.getConnection ();
			pstmt = conn.prepareStatement ("select * from BookChiGi_member where userMail = ?");
			pstmt.setString (1, userMail);
			rset = pstmt.executeQuery ();
			
			if (rset.next ()) return new MemberVO (rset);
		} catch (Exception e) { e.printStackTrace ();
		} finally { closeAll (); }
		
		return null;
	}

	@Override
	public MemberVO searchMemberByName (String userName) throws SQLException {
		return null;
	}
	
	@Override
	public boolean isMemberByMail (String userMail) throws SQLException {
		try {
			conn = ds.getConnection ();
			pstmt = conn.prepareStatement ("select * from BookChiGi_member where userMail = ?");
			pstmt.setString (1, userMail);
			rset = pstmt.executeQuery ();
			
			return rset.next ();
		} catch (Exception e) { e.printStackTrace ();
		} finally { closeAll (); }
		
		return false;
	}
	
	@Override
	public boolean isLoginPassed (String userMail, String userPw) throws SQLException {
		int counter = 0;
		
		try {
			conn = ds.getConnection ();
			pstmt = conn.prepareStatement ("select * from BookChiGi_member where userMail = ? and userPw = ?");
			pstmt.setString (1, userMail);
			pstmt.setString (2, userPw);
			rset = pstmt.executeQuery ();
			
			while (rset.next ()) counter++;
			
			return (counter == 1);
		} catch (Exception e) { e.printStackTrace ();
		} finally { closeAll (); }
		
		return false;
	}

	@Override
	public int signupMember (MemberVO member) throws SQLException {
		int resultCode = 0;
		
		try {
			if (!isMemberByMail (member.getUserMail ())) {
				conn = ds.getConnection ();
				pstmt = conn.prepareStatement ("insert into BookChiGi_member values (member_seq.nextval, ?, ?, ?, ?, ?, ?, sysdate, 2)");
				pstmt.setString (1, member.getUserMail ());
				pstmt.setString (2, member.getUserPw ());
				pstmt.setString (3, member.getUserName ());
				pstmt.setString (4, member.getUserPhone ().substring (0, 3) + "-"
						+ member.getUserPhone().substring (3, 7) + "-"
						+ member.getUserPhone().substring (7, member.getUserPhone().length ()));
				pstmt.setString (5, member.getUserGender () == "man"? "³²" : "¿©");
				pstmt.setDate (6, member.getUserBirth ());
				return pstmt.executeUpdate ();
			} else resultCode = -1;
		} catch (Exception e) { e.printStackTrace ();
		} finally { closeAll (); }
		
		return resultCode;
	}

	@Override
	public int modifyMember (MemberVO member) throws SQLException {
		String sql = "update bookchigi_member set username = ?, userphone = ?, userbirth = ?";
		if (member.getUserPw () != "" && member.getRepeatPw().equals (member.getUserPw ())) sql += ", userPw = ?";
		sql += " where userNo = ?";
		
		if ((member.getUserPw().equals (member.getRepeatPw ()))) {
			try {
				conn = ds.getConnection ();
				pstmt = conn.prepareStatement (sql);
				System.out.println (sql);
				pstmt.setString (1, member.getUserName ());
				pstmt.setString (2, member.getUserPhone().contains ("-")? member.getUserPhone () : member.getUserPhone ().substring (0, 3) + "-"
						+ member.getUserPhone().substring (3, 7) + "-"
						+ member.getUserPhone().substring (7, member.getUserPhone().length ()));
				pstmt.setDate (3, member.getUserBirth ());
				if (member.getUserPw () != "" && member.getRepeatPw().equals (member.getUserPw ())) {
					pstmt.setString (4, member.getUserPw ());
					pstmt.setInt (5, member.getUserNo ());
				} else pstmt.setInt (4, member.getUserNo ());
				
				return pstmt.executeUpdate ();
			} catch (Exception e) { e.printStackTrace ();
			} finally { closeAll (); }
		}
		
		return 0;
	}

	@Override
	public int removeMember (int userNo) throws SQLException {
		return 0;
	}
}