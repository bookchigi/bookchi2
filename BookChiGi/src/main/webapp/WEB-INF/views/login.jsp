<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>북을 울려라~ 북치기</title>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		<script src="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
			integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
			crossorigin="anonymous"></script>
		<script type="text/javascript">
			$(document).ready (function () {
				
			});
		</script>
		<link rel="stylesheet" href="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css" />
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
			integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
			crossorigin="anonymous">
		<style type="text/css">
			body, body * {
				margin: 0px;
				padding: 0px;
			}
			
			section { padding: 50px; }
			section h1 { padding-bottom: 20px; }
			div.btn-group-justified { padding-top: 80px; }
			form#signup { min-height: 600px; }
		</style>
	</head>
	<body>
		<div data-role="page">
			<div data-role="header">
				<c:import url="fragment/headerbar.jsp"></c:import>
			</div>
			<div data-role="content">
				<section id="content" class="row">
					<h1>BookChiGi&nbsp;&nbsp;<small>로그인</small></h1>
					
					${loginErr }
					<form action="login" id="login" role="form" method="post">
						<div class="form-group">
							<label for="userMail">아이디</label>
							<input type="email" class="form-control" name="userMail" id="userMail" placeholder="메일주소형식">
						</div>
						<div class="form-group">
							<label for="userPw">비밀번호</label>
							<input type="password" class="form-control" name="userPw" id="userPw" placeholder="비밀번호">
						</div>
						<div class="btn-group btn-group col-xs-12 col-sm-12 col-md-12 col-lg-12" role="group" aria-label="...">
							<button type="submit" class="btn btn-primary col-xs-12 col-sm-12 col-md-4">로그인</button>
							<a href="signup" class="btn btn-default col-xs-12 col-sm-12 col-md-4">회원가입</a>
							<a href="refind" class="btn btn-success col-xs-12 col-sm-12 col-md-4">계정찾기</a>
						</div>
					</form>
				</section>
			</div>
			<div data-role="footer">
				<c:import url="fragment/footerbar.jsp"></c:import>
			</div>
		</div>
	</body>
</html>