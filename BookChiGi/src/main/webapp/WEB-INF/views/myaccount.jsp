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
			body {}
			
			@media screen and (min-width: 768px) {
				#content { min-height: 800px; }
			}
		</style>
	</head>
	<body>
		<div data-role="page">
			<div data-role="header">
				<c:import url="fragment/headerbar.jsp"></c:import>
			</div>
			<div id="content" data-role="content" class="container">
				<c:choose>
					<c:when test="${!empty sessionScope.account }">
						${myaccountErr }
						<form id="myaccount" role="form" method="post">
							<input type="hidden" readonly="readonly" name="userNo" id="userNo" value="${sessionScope.account.userNo }">
							<div class="form-group">
								<label for="userMail">이메일 주소</label>
								<input type="email" class="form-control" name="userMail" id="userMail" placeholder="이메일 주소" value="${sessionScope.account.userMail }" readonly="readonly">
							</div>
							<div class="form-group">
								<label for="userPw">비밀번호</label>
								<input type="password" class="form-control" name="userPw" id="userPw" placeholder="변경시에만 입력해주세요">
							</div>
							<div class="form-group">
								<label for="repeatPw">비밀번호 확인</label>
								<input type="password" class="form-control" name="repeatPw" id="repeatPw" placeholder="변경시에만 입력해주세요">
							</div>
							<div class="form-group">
								<label for="userName">이름</label>
								<input type="text" class="form-control" name="userName" id="userName" placeholder="이름" value="${sessionScope.account.userName }">
							</div>
							<div class="form-group">
								<label for="userPhone">연락처</label>
								<input type="text" class="form-control" name="userPhone" id="userPhone" placeholder="연락처번호" value="${sessionScope.account.userPhone }">
							</div>
							<div class="form-group">
								<label for="userBirth">생년월일</label>
								<input type="date" class="form-control" name="userBirth" id="userBirth" value="${sessionScope.account.userBirth }">
							</div>
							<div class="form-group text-center">
								<button type="submit" id="signupSubmit" class="btn btn-info">회원정보 수정<i class="fa fa-check spaceLeft"></i></button>
								<button type="button" id="signupCancel" class="btn btn-warning">수정 취소<i class="fa fa-times spaceLeft"></i></button>
							</div>
						</form>
					</c:when>
					<c:otherwise>
						<c:import url="fragment/error.jsp"></c:import>
					</c:otherwise>
				</c:choose>
			</div>
			<div class="footer">
				<c:import url="fragment/footerbar.jsp"></c:import>
			</div>
		</div>
	</body>
</html>