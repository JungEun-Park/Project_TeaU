<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="x-ua-compatible" content="ie=edge">

<title>Admin_page</title>
<link rel="shortcut icon" href="assets/images/feature/11.jpg">

<!-- fraimwork - css include -->
<link rel="stylesheet" type="text/css"
	href="assets/css/bootstrap.min.css">

<!-- icon font - css include -->
<link rel="stylesheet" type="text/css" href="assets/css/fontawesome.css">

<!-- animation - css include -->
<link rel="stylesheet" type="text/css" href="assets/css/animate.css">

<!-- carousel - css include -->
<link rel="stylesheet" type="text/css" href="assets/css/slick.css">
<link rel="stylesheet" type="text/css" href="assets/css/slick-theme.css">

<!-- popup - css include -->
<link rel="stylesheet" type="text/css"
	href="assets/css/magnific-popup.css">

<!-- jquery-ui - css include -->
<link rel="stylesheet" type="text/css" href="assets/css/jquery-ui.css">

<!-- custom - css include -->
<link rel="stylesheet" type="text/css" href="assets/css/style.css">
<link rel="stylesheet" type="text/css" href="assets/css/teau.css">
</head>
<body>

	<jsp:include page="header.jsp"></jsp:include>
	<!-- contact_section - start
        ================================================== -->
	<section class="contact_section sec_ptb_120 bg_default_gray">
		<!--회원이름&포인트-->
		<div class="container">
			<div class="contact_form bg_white" style="margin-top: 100px;">
				<div class="row">
					<div class="offset-md-1 col-md-3">
						<div class="item_content img-fluid">
							<h3>
								<i class="fas fa-user"></i>티유대장 님
							</h3>
						</div>
					</div>
					<div class="offset-md-3 col-md-5">
						<div class="item_content">
							<h3 class="item_title text-uppercase">관리자 계정</h3>
							<br>
						</div>
					</div>
				</div>
			</div>
		</div>
		<br>
		<div class="container">
			<div class="contact_form bg_white" data-wow-delay=".1s"
				style="margin-top: 100px;">
				<div class="hi container">
					<h3>
						<i class="fal fa-user" style="font-weight: bold;"> 회원관리</i>
					</h3>
					<div class="row" style="display: flex; align-items: center;">
						<div class="col-md-12 col-lg-12" style="align-items: center">
							<a class="btn btn_primary text-uppercase" href="getMemberList.do"
								style=text-align:justify;>   회원
                        관리</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="container">
			<div class="contact_form bg_white" data-wow-delay=".1s"
				style="margin-top: 100px;">
				<div class="hi container">
					<h3>
						<i class="fal fa-shopping-bag" style=""></i> 상품관리
					</h3>
					<div class="row" style="display: flex; align-items: center;">
						<div class="col-md-12 col-lg-12" style="align-items: center">
							<a class="btn btn_primary text-uppercase" href="shopSeason.do">#계절별
								상품 관리</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<a class="btn btn_primary text-uppercase" href="shopUser.do">#사용자별
								상품 관리</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<a class="btn btn_primary text-uppercase" href="shopBlend.do">#베이스
								상품 관리</a>
						</div>
					</div>
				</div>

			</div>
		</div>

	</section>
	<!-- contact_section - end
        ================================================== -->

	</main>
	<!-- main body - end
      ================================================== -->

	<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>