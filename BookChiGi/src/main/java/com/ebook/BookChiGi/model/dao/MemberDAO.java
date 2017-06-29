package com.ebook.BookChiGi.model.dao;

import java.sql.SQLException;
import java.util.List;

import com.ebook.BookChiGi.model.dto.MemberVO;

public interface MemberDAO {
	public List<MemberVO> searchMemberAll () throws SQLException;
	public MemberVO searchMemberByNum (int userNo) throws SQLException;
	public MemberVO searchMemberByMail (String userMail) throws SQLException;
	public MemberVO searchMemberByName (String userName) throws SQLException;
	public boolean isMemberByMail (String userMail) throws SQLException;
	public boolean isLoginPassed (String userMail, String userPw) throws SQLException;
	public int signupMember (MemberVO member) throws SQLException;
	public int modifyMember (MemberVO member) throws SQLException;
	public int removeMember (int userNo) throws SQLException;
}