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
			
			@media screen and (min-width: 768px) {
				#mobileCollapser { display: none; }
			}
		</style>
	</head>
	<body>
		<nav class="navbar navbar-default navbar-static-top" data-role="header">
			<div class="container-fulid row">
				<div class="navbar-header">
					<a class="navbar-brand navbar-left" href="/BookChiGi/">
						<img class="brand-logo" src="resources/res/Logo.png">
						<img class="brand-logo" src="resources/res/Title_en.png">
					</a>
					<button type="button" id="mobileCollapser" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
			        	<span class="sr-only">Toggle navigation</span>
			        	<span class="icon-bar"></span>
			        	<span class="icon-bar"></span>
			        	<span class="icon-bar"></span>
			      	</button>
			    </div>
				<div class="collapse navbar-collapse navbar-right" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav navbar-right">
						<li>
							<form class="navbar-form">
								<div class="form-group">
									<input type="text" class="form-control" placeholder="쳐볼만한 좋은 책은?">
									<button id="submitBtn" type="submit" class="btn btn-default">검색</button>
								</div>
							</form>
						</li>
						<li class="dropdown">
				          	<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
				          		<span class="glyphicon glyphicon-user"></span>
				          	</a>
				          	<c:choose>
				          		<c:when test="${not empty sessionScope.account }">
				          			<ul class="dropdown-menu">
							            <li><a href="myaccount" data-role="button">${sessionScope.account.userMail }</a></li>
							            <li role="separator" class="divider"></li>
							            <li><a href="recentBook">최근 찾은 서재</a></li>
							            <li><a href="favorite">관심 가는 서재</a></li>
							            <li><a href="purchased">구매한 서재</a></li>
							            <li role="separator" class="divider"></li>
							            <li><a href="secondary">중고장터</a></li>
							            <li><a href="talkabout">토론장</a></li>
							            <li role="separator" class="divider"></li>
							            <li><a href="login" data-role="button">로그아웃</a></li>
						          	</ul>
				          		</c:when>
				          		<c:otherwise>
				          			<ul class="dropdown-menu">
							            <li><a href="login" data-role="button">로그인</a></li>
							            <li role="separator" class="divider"></li>
							            <li><a href="signup" data-role="button">회원가입</a></li>
						          	</ul>
				          		</c:otherwise>
				          	</c:choose>
				        </li>
					</ul>
				</div>
			</div>
		</nav>
	</body>
</html>