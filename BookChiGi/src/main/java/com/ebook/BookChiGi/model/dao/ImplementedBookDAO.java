package com.ebook.BookChiGi.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;

import com.ebook.BookChiGi.model.dto.BookVO;

public class ImplementedBookDAO implements BookDAO {
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
	
	@Override public List<BookVO> alignBookByNew (int paginator) throws SQLException {
		List<BookVO> list = new ArrayList<BookVO> ();
		
		try {
			conn = ds.getConnection ();
			pstmt = conn.prepareStatement ("select * from (select * from bookchigi_book_info order by book_release desc) where rownum between ? and ?");
			pstmt.setInt (1, (paginator-1) * 20 + 1);
			pstmt.setInt (2, paginator * 20);
			rset = pstmt.executeQuery ();
			
			while (rset.next ()) {
				list.add (new BookVO (rset.getInt ("book_isbn"), rset.getString ("book_name"), rset.getInt ("book_price"),
						rset.getString ("book_type"), rset.getString ("book_author"), rset.getString ("book_publisher"), 
						rset.getDate ("book_release"), rset.getInt ("book_page"), rset.getString ("book_contents"), rset.getString ("book_cover")));
			}
		} catch (Exception e) { e.printStackTrace ();
		} finally { closeAll (); }
		
		return list;
	}

	@Override public List<BookVO> alignBookByPop (int paginator) throws SQLException {
		List<BookVO> list = new ArrayList<BookVO> ();
		
		try {
			conn = ds.getConnection ();
			pstmt = conn.prepareStatement ("select * from (select * from bookchigi_book_info order by book_release desc) where rownum < 200");
			rset = pstmt.executeQuery ();
			
			while (rset.next ()) {
				list.add (new BookVO (rset.getInt ("book_isbn"), rset.getString ("book_name"), rset.getInt ("book_price"),
						rset.getString ("book_type"), rset.getString ("book_author"), rset.getString ("book_publisher"), 
						rset.getDate ("book_release"), rset.getInt ("book_page"), rset.getString ("book_contents"), rset.getString ("book_cover")));
			}
		} catch (Exception e) { e.printStackTrace ();
		} finally { closeAll (); }
		
		return list;
	}

	@Override public List<BookVO> alignBookByRec (int paginator) throws SQLException {
		List<BookVO> list = new ArrayList<BookVO> ();
		
		try {
			conn = ds.getConnection ();
			pstmt = conn.prepareStatement ("select * from bookchigi_book_info where rownum < 200");
			rset = pstmt.executeQuery ();
			
			while (rset.next ()) {
				list.add (new BookVO (rset.getInt ("book_isbn"), rset.getString ("book_name"), rset.getInt ("book_price"),
						rset.getString ("book_type"), rset.getString ("book_author"), rset.getString ("book_publisher"), 
						rset.getDate ("book_release"), rset.getInt ("book_page"), rset.getString ("book_contents"), rset.getString ("book_cover")));
			}
			
			Collections.shuffle (list);
		} catch (Exception e) { e.printStackTrace ();
		} finally { closeAll (); }
		
		return list;
	}

	@Override public List<BookVO> alignBookBySec (int paginator) throws SQLException {
		List<BookVO> list = new ArrayList<BookVO> ();
		
		try {
			conn = ds.getConnection ();
			pstmt = conn.prepareStatement ("select * from (select * from bookchigi_book_info order by book_release desc) where rownum < 200");
			rset = pstmt.executeQuery ();
			
			while (rset.next ()) {
				list.add (new BookVO (rset.getInt ("book_isbn"), rset.getString ("book_name"), rset.getInt ("book_price"),
						rset.getString ("book_type"), rset.getString ("book_author"), rset.getString ("book_publisher"), 
						rset.getDate ("book_release"), rset.getInt ("book_page"), rset.getString ("book_contents"), rset.getString ("book_cover")));
			}
		} catch (Exception e) { e.printStackTrace ();
		} finally { closeAll (); }
		
		return list;
	}

	@Override
	public BookVO searchBookByIsbn(int isbn) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public BookVO searchBookByAuthor(String author) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public BookVO searchBookByPublisher(String publisher) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}
}