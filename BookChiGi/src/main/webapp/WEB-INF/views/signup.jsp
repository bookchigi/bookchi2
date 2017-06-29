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
				$('#myModal').on ('shown.bs.modal', function () {
					$('#myInput').focus ();
				})
				
				$('#termsAgree').click (function () {
					$('#termsChkr').attr("checked", true);
				});
				
				$('#signupCancel').click (function () {
					window.history.back ();
				});
			});
			
			$.mobile.ajaxLinksEnabled = false;
			$.mobile.ajaxFormsEnabled = false;
			$.mobile.ajaxEnabled = false;
		</script>
		<link rel="stylesheet" href="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css" />
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
			integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
			crossorigin="anonymous">
		<style type="text/css">
			form#signup { min-height: 600px; }
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
						<h1>회원가입&nbsp;&nbsp;<small>Sign Up</small></h1>
					</div>
					<div class="col-md-6 col-md-offset-3">
						${signupErr }
						<form id="signup" role="form" method="post">
							<div class="form-group">
								<label for="userMail">이메일 주소</label>
								<input type="email" class="form-control" name="userMail" id="userMail" placeholder="이메일 주소">
							</div>
							<div class="form-group">
								<label for="userPw">비밀번호</label>
								<input type="password" class="form-control" name="userPw" id="userPw" placeholder="비밀번호">
							</div>
							<div class="form-group">
								<label for="repeatPw">비밀번호 확인</label>
								<input type="password" class="form-control" name="repeatPw" id="repeatPw" placeholder="비밀번호 확인">
								<p class="help-block">비밀번호 확인을 위해 다시한번 입력 해 주세요</p>
							</div>
							<div class="form-group">
								<label for="userName">이름</label>
								<input type="text" class="form-control" name="userName" id="userName" placeholder="이름">
							</div>
							<div class="form-group">
								<label for="userPhone">연락처</label>
								<input type="text" class="form-control" name="userPhone" id="userPhone" placeholder="연락처번호">
							</div>
							<div class="form-group">
								<label for="userGender">성별</label>
								<div class="radio">
								  	<label>
									    <input type="radio" name="userGender" id="userGender" value="man">남성
								  	</label>
								</div>
								<div class="radio">
								  	<label>
									    <input type="radio" name="userGender" id="userGender" value="woman">여성
								  	</label>
								</div>
							</div>
							<div class="form-group">
								<label for="userBirth">생년월일</label>
								<input type="date" class="form-control" name="userBirth" id="userBirth">
							</div>
							<div class="form-group">
								<label>약관 동의</label><br>
								<input id="termsChkr" type="checkbox">
								<a data-toggle="modal" data-target=".bs-example-modal-lg">이용약관</a>에 동의합니다.
							</div>
							<div class="form-group text-center">
								<button type="submit" id="signupSubmit" class="btn btn-info">회원가입<i class="fa fa-check spaceLeft"></i></button>
								<button type="button" id="signupCancel" class="btn btn-warning" onclick="history.back();">가입취소<i class="fa fa-times spaceLeft"></i></button>
							</div>
						</form>
					</div>
				</article>
			</div>
			<div data-role="footer">
				<c:import url="fragment/footerbar.jsp"></c:import>
			</div>
			<div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
			  	<div class="modal-dialog modal-lg" role="document">
			    	<div class="modal-content">
			      		<div class="modal-header">
					        <h3 class="modal-title" id="modelHeader">회원가입 이용약관</h3>
				      	</div>
				      	<div class="modal-body">
					        <c:import url="terms.jsp"></c:import>
					    </div>
					    <div class="modal-footer">
					        <button id="termsAgree" type="button" class="btn btn-primary" data-dismiss="modal">약관의 내용을 읽었으며 이에 동의합니다.</button>
					        <button type="button" class="btn btn-default">동의하지 않습니다.</button>
					    </div>
			    	</div>
			  	</div>
			</div>
		</div>
	</body>
</html>
