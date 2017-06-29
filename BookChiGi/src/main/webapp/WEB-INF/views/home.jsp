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
				$('.tabitem').removeClass ('active');
				$('.tabpage').hide ();
				
				$('#tabitem01').addClass ('active');
				$('#tabpage01').show ();
				
				$('#myTabs a').click (function (e) {
				  	e.preventDefault ();
				  	$(this).tab ('show');
				})
				
				$('#tabitem01').click (function () {
					$('.tabitem').removeClass ('active');
					$('.tabpage').hide ();
					
					$('#tabitem01').addClass ('active');
					$('#tabpage01').show ();
				});
				
				$('#tabitem02').click (function () {
					$('.tabitem').removeClass ('active');
					$('.tabpage').hide ();
					
					$('#tabitem02').addClass ('active');
					$('#tabpage02').show ();
				});
				
				$('#tabitem03').click (function () {
					$('.tabitem').removeClass ('active');
					$('.tabpage').hide ();
					
					$('#tabitem03').addClass ('active');
					$('#tabpage03').show ();
				});
				
				$('#tabitem04').click (function () {
					$('.tabitem').removeClass ('active');
					$('.tabpage').hide ();
					
					$('#tabitem04').addClass ('active');
					$('#tabpage04').show ();
				});
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
			body {
				
			}
			
			#mobileSubLine { background-color: red; }
			.tabpage { min-height: 720px; }
			blockquote { padding-top: 10px; padding-bottom: 10px; }
		</style>
	</head>
	<body>
		<div data-role="page">
			<div data-role="header">
				<c:import url="fragment/headerbar.jsp"></c:import>
			</div>
			<div data-role="content">
				<ul class="nav nav-tabs nav-justified">
					<li id="tabitem01" role="presentation" class="tabitem active"><a href="#">신간도서</a></li>
					<li id="tabitem02" role="presentation" class="tabitem"><a href="#">인기도서</a></li>
					<li id="tabitem03" role="presentation" class="tabitem"><a href="#">추천도서</a></li>
					<li id="tabitem04" role="presentation" class="tabitem"><a href="#">중고도서</a></li>
				</ul>
				<section>
					<div id="tabpage01" class="tabpage">
						<div class="container">
							<blockquote><h2>신간도서</h2></blockquote>
							<div class="content">
								<c:import url="fragment/list_new.jsp"></c:import>
							</div>
						</div>
					</div>
					<div id="tabpage02" class="tabpage">
						<div class="container">
							<blockquote><h2>인기도서</h2></blockquote>
							<div class="content">
								<c:import url="fragment/list_pop.jsp"></c:import>
							</div>
						</div>
					</div>
					<div id="tabpage03" class="tabpage">
						<div class="container">
							<blockquote><h2>추천도서</h2></blockquote>
							<div class="content">
								<c:import url="fragment/list_rec.jsp"></c:import>
							</div>
						</div>
					</div>
					<div id="tabpage04" class="tabpage">
						<div class="container">
							<blockquote><h2>중고도서</h2></blockquote>
							<div class="content">
								<c:import url="fragment/list_sec.jsp"></c:import>
							</div>
						</div>
					</div>
				</section>
			</div>
			<div class="footer">
				<c:import url="fragment/footerbar.jsp"></c:import>
			</div>
		</div>
	</body>
</html>