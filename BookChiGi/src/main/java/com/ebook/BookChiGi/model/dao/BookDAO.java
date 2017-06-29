package com.ebook.BookChiGi.model.dao;

import java.sql.SQLException;
import java.util.List;

import com.ebook.BookChiGi.model.dto.BookVO;

public interface BookDAO {
	List<BookVO> alignBookByNew (int paginator) throws SQLException;
	List<BookVO> alignBookByPop (int paginator) throws SQLException;
	List<BookVO> alignBookByRec (int paginator) throws SQLException;
	List<BookVO> alignBookBySec (int paginator) throws SQLException;
	
	BookVO searchBookByIsbn (int isbn) throws SQLException;
	BookVO searchBookByAuthor (String author) throws SQLException;
	BookVO searchBookByPublisher (String publisher) throws SQLException;
	
}