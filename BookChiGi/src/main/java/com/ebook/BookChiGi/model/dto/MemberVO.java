package com.ebook.BookChiGi.model.dto;

import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;

public class MemberVO {
	private int userNo;
	private String userMail;
	private String userPw;
	private String repeatPw;
	private String userName;
	private String userPhone;
	private String userGender;
	private Date userBirth;
	
	public MemberVO () {}
	public MemberVO (ResultSet rset) throws SQLException {
		this.userNo = rset.getInt ("userNo");
		this.userMail = rset.getString ("userMail");
		this.userPw = rset.getString ("userPw");
		this.userName = rset.getString ("userName");
		this.userPhone = rset.getString ("userPhone");
		this.userGender = rset.getString ("userGender");
		this.userBirth = rset.getDate ("userBirth");
	}
	
	public int getUserNo () { return userNo; }
	public String getUserMail () { return userMail; }
	public String getUserPw () { return userPw; }
	public String getRepeatPw () { return repeatPw; }
	public String getUserName () { return userName; }
	public String getUserPhone () { return userPhone; }
	public String getUserGender () { return userGender; }
	public Date getUserBirth () { return userBirth; }
	
	public void setUserNo (int userNo) { this.userNo = userNo; }
	public void setUserMail (String userMail) { this.userMail = userMail; }
	public void setUserPw (String userPw) { this.userPw = userPw; }
	public void setRepeatPw (String repeatPw) { this.repeatPw = repeatPw; }
	public void setUserName (String userName) { this.userName = userName; }
	public void setUserPhone (String userPhone) { this.userPhone = userPhone; }
	public void setUserGender (String userGender) { this.userGender = userGender; }
	public void setUserBirth (Date userBirth) { this.userBirth = userBirth; }
	
	@Override
	public String toString () {
		return "MemberVO [userNo = " + userNo + ", userMail = " + userMail + ", userPw = " + userPw + ", repeatPw = " + repeatPw + ", userName = " + userName
				+ ", userPhone = " + userPhone + ", userGender = " + userGender + ", userBirth = " + userBirth + "]";
	}
}