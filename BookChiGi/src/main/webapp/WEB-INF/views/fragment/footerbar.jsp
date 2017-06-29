<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
	<head>
   		<link rel="stylesheet" href="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css" />
    	<style type="text/css">
    		#companyProfile { height: inherit; }
    		.brand *, .brand img {
				height: 40px;
				display: inline-block;
			}
         	#mobileSubLine { background-color: red; }
      	</style>
   	</head>
   	<body>
      	<div class="row panel-footer" data-role="footer">
         	<div id="companyProfile" class="col col-xs-12 col-sm-12 col-md-6 col-lg-6">
	            <a class="brand navbar-left" href="/BookChiGi/">
                  	<img class="brand-logo" src="resources/res/Logo.png">
                  	<img class="brand-logo" src="resources/res/Title_en.png">
               	</a>
            </div>
            <div id="companyDetail" class="col col-xs-12 col-sm-12 col-md-6 col-lg-6">
               	Ebook Company<br>
               	사업자등록번호 : 110-10-10000<br>
               	대표 : 나준민, 개인정보 관리책임자 : 김성엽
           	</div>
         	<div id="termsProfile" class="col col-md-12">
	            <button type="button" class="btn btn-default col-xs-12 col-sm-12 col-md-6 col-lg-6" data-role="button">사이트이용약관</button>
               	<button type="button" class="btn btn-default col-xs-12 col-sm-12 col-md-6 col-lg-6" data-role="button">개인정보취급방침</button>
               	<button type="button" class="btn btn-default col-xs-12 col-sm-12 col-md-6 col-lg-6" data-role="button">이메일무단수집거부</button>
               	<button type="button" class="btn btn-default col-xs-12 col-sm-12 col-md-6 col-lg-6" data-role="button">제휴문의</button>
         	</div>
      	</div>
   	</body>
</html>