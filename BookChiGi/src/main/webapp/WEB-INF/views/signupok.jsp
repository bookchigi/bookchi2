<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<html>
	<head>
		<meta charset="utf-8">
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
				$('#myModal').on ('shown.bs.modal', function () {
					$('#myInput').focus ();
				})
				
				$('#termsAgree').click (function () {
					$('#termsChkr').attr("checked", true);
				});
			});
		</script>
		<link rel="stylesheet" href="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css" />
		<link rel="stylesheet"
			href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
			integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
			crossorigin="anonymous">
		<style type="text/css">
			article { min-height: 600px; }
		</style>
	</head>
	<body>
		<div data-role="page">
			<div data-role="header">
				<c:import url="fragment/headerbar.jsp"></c:import>
			</div>
			<div data-role="content">
				<article class="container">
					<div class="page-header">
						<h1>회원가입을 축하합니다&nbsp;&nbsp;<small>Congraturations</small></h1>
					</div>
					<div class="col-md-6 col-md-offset-3">
						<h3>회원가입을 축하합니다. 북치기의 Ebook 컨텐츠를 이용하실 수 있습니다.</h3>
						<div class="row">
							<a class="btn btn-primary col-md-6" href="login">로그인하기</a>
							<a class="btn btn-default col-md-6" href="/BookChiGi">홈으로 돌아가기</a>
						</div>
					</div>
				</article>
			</div>
			<div data-role="footer">
				<c:import url="fragment/footerbar.jsp"></c:import>
			</div>
		</div>
	</body>
</html>
