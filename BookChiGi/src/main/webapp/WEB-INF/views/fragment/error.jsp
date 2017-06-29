<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
	<head>
		<link rel="stylesheet" href="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css" />
		<style type="text/css">
			.navbar-header {
				height: 80px;
			}
			.navbar-header *, .navbar-brand img {
				height: 100%;
				display: inline-block;
			}
			ul.navbar-nav {
				margin: 20px;
			}
			#errBox {
				width: 100%;
				text-align: center;
			}
			#errBox * { text-align: center; }
		</style>
	</head>
	<body>
		<div data-role="content" class="container">
			<div id="errBox">
				<h1>여긴 어떻게 알고 오셨나요?</h1>
				<p>죄송한데... 줄 서서 기다려주세요?</p>
				<br>
				<div class="row">
					<button type="button" class="btn btn-default col-xs-6 col-sm-6 col-md-6 col-lg-6" onclick="history.back();" data-role="button">뒤로 돌아가기</button>
					<button type="button" class="btn btn-primary col-xs-6 col-sm-6 col-md-6 col-lg-6" onclick="location.replace ('/BookChiGi/');" data-role="button">홈으로 가기</button>
				</div>
			</div>
		</div>
	</body>
</html>