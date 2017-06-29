package com.ebook.BookChiGi.model.dto;

import java.sql.Date;

public class BookVO {
    private int book_isbn;
    private String book_name;
    private int book_price;
    private String book_type;
    private String book_author;
    private String book_publisher;
    private Date book_release;
    private int book_page;
	private String book_contents;
	private String book_cover;

	public BookVO () {}
	public BookVO (int book_isbn, String book_name, int book_price, String book_type,
			String book_author, String book_publisher, Date book_release,
			int book_page, String book_contents, String book_cover) {
		this.book_isbn = book_isbn;
		this.book_name = book_name;
		this.book_price = book_price;
		this.book_type = book_type;
		this.book_author = book_author;
		this.book_publisher = book_publisher;
		this.book_release = book_release;
		this.book_page = book_page;
		this.book_contents = book_contents;
		this.book_cover = book_cover;
	}

	@Override
	public int hashCode () {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((book_author == null) ? 0 : book_author.hashCode ());
		result = prime * result + ((book_contents == null) ? 0 : book_contents.hashCode ());
		result = prime * result + ((book_cover == null) ? 0 : book_cover.hashCode ());
		result = prime * result + book_isbn;
		result = prime * result + ((book_name == null) ? 0 : book_name.hashCode ());
		result = prime * result + book_page;
		result = prime * result + book_price;
		result = prime * result + ((book_publisher == null) ? 0 : book_publisher.hashCode ());
		result = prime * result + ((book_release == null) ? 0 : book_release.hashCode ());
		result = prime * result + ((book_type == null) ? 0 : book_type.hashCode ());
		return result;
	}

	@Override
	public boolean equals (Object obj) {
		if (this == obj) return true;
		if (obj == null) return false;
		if (getClass () != obj.getClass ()) return false;
		BookVO other = (BookVO) obj;
		if (book_author == null) {
			if (other.book_author != null) return false;
		} else if (!book_author.equals(other.book_author)) return false;
		if (book_contents == null) {
			if (other.book_contents != null) return false;
		} else if (!book_contents.equals(other.book_contents)) return false;
		if (book_cover == null) {
			if (other.book_cover != null) return false;
		} else if (!book_cover.equals(other.book_cover)) return false;
		if (book_isbn != other.book_isbn) return false;
		if (book_name == null) {
			if (other.book_name != null) return false;
		} else if (!book_name.equals(other.book_name)) return false;
		if (book_page != other.book_page) return false;
		if (book_price != other.book_price) return false;
		if (book_publisher == null) {
			if (other.book_publisher != null) return false;
		} else if (!book_publisher.equals(other.book_publisher)) return false;
		if (book_release == null) {
			if (other.book_release != null) return false;
		} else if (!book_release.equals(other.book_release)) return false;
		if (book_type == null) {
			if (other.book_type != null) return false;
		} else if (!book_type.equals(other.book_type)) return false;
		
		return true;
	}

	public int getBook_isbn () { return book_isbn; }
	public int getBook_price () { return book_price; }
	public int getBook_page () { return book_page; }
	public String getBook_name () { return book_name; }
	public String getBook_type () { return book_type; }
	public String getBook_author () { return book_author; }
	public String getBook_publisher () { return book_publisher; }
	public String getBook_contents () { return book_contents; }
	public String getBook_cover () { return book_cover; }
	public Date getBook_release () { return book_release; }
	
	public void setBook_isbn (int book_isbn) { this.book_isbn = book_isbn; }
	public void setBook_price (int book_price) { this.book_price = book_price; }
	public void setBook_page (int book_page) { this.book_page = book_page; }
	public void setBook_name (String book_name) { this.book_name = book_name; }
	public void setBook_type (String book_type) { this.book_type = book_type; }
	public void setBook_author (String book_author) { this.book_author = book_author; }
	public void setBook_publisher (String book_publisher) { this.book_publisher = book_publisher; }
	public void setBook_contents (String book_contents) { this.book_contents = book_contents; }
	public void setBook_cover (String book_cover) { this.book_cover = book_cover; }
	public void setBook_release (Date book_release) { this.book_release = book_release; }

	@Override
	public String toString () {
		return "BookVo [book_isbn=" + book_isbn + ", book_price=" + book_price + ", book_page=" + book_page
				+ ", book_name=" + book_name + ", book_type=" + book_type + ", book_author=" + book_author
				+ ", book_publisher=" + book_publisher + ", book_contents=" + book_contents + ", book_cover="
				+ book_cover + ", book_release=" + book_release + "]";
	}
}