<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<!DOCTYPE html>
<html>
	<head>
		<link rel="stylesheet"
			href="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css" />
		<script
			src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
			integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
			crossorigin="anonymous">
		</script>
		<style type="text/css">
			.caption { padding-bottom: 20px; }
		</style>
	</head>
	<body>
		<div class="row">
			<c:forEach items="${booklist_new }" var="book">
				<div class="card col-xs-12 col-sm-6 col-md-4 col-lg-3">
				    <div class="thumbnail">
				      	<a href="detail?idx=${book.book_isbn }"><img src="${book.book_cover }" style="width: 100%; height: 160%;"></a>
				      	<div class="caption">
					        <h3>${book.book_name }</h3>
				        	<p>구매가 ${book.book_price }원</p>
				        	<p><a href="${book.book_isbn }" class="btn btn-primary" role="button">상세보기</a> <a href="#" class="btn btn-default" role="button">바로 담기</a></p>
				      	</div>
				    </div>
				</div>
			</c:forEach><br>
			<a href="page_new" class="btn btn-primary col-xs-12 col-sm-12 col-md-12 col-lg-12" data-role="button">더 많은 신간도서 보러가기</a><br>
		</div><br>
	</body>
</html>