<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%
	String msg = (String) request.getAttribute("msg");
%>
<!DOCTYPE html>
<html>
<meta charset="EUC-KR">
<title>Join</title>
<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="x-ua-compatible" content="ie=edge">

<title>Join</title>





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

<style>
.contact_form {
	margin-left: 15%;
	margin-right: 15%;
}

.container .btn {
	display: inline-block
}

@font-face {
	font-family: 'InfinitySans-RegularA1';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-04@2.1/InfinitySans-RegularA1.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

@font-face {
	font-family: 'twayair';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_tway@1.0/twayair.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

.font {
	font-family: 'InfinitySans-RegularA1';
	font-weight: 10;
	font-size: 15px;
}
.btn_font {
font-size: 18px;
}
.contact_form.bg_white .form_item textarea, .contact_form.bg_white .form_item input {
   /*  background: linear-gradient( to right, white, #fd6c44 ); */
    background-color: white;
    border: 1px solid #ffdfd7;
    /* box-shadow:0px 0px 5px 5px #ffe8e2da inset; */
}
.alert-successPW {
    color: #7bbea0;
    background-color: #white;
    border-color: #white;
    width: 84%;
    font-size: 15px;
}
.alert-dangerPW {
    color: #ff3d4e;
   background-color: #white;
    border-color: #white;
    width: 84%;
    font-size: 15px;
}
</style>



<!-- fraimwork - jquery include -->
<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/bootstrap.min.js"></script>

<!-- animation - jquery include -->
<script src="assets/js/wow.min.js"></script>

<!-- carousel - jquery include -->
<script src="assets/js/slick.min.js"></script>

<!-- popup - jquery include -->
<script src="assets/js/magnific-popup.min.js"></script>

<!-- isotope filter - jquery include -->
<script src="assets/js/isotope.pkgd.min.js"></script>

<!-- google map - jquery include -->
<script
	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDk2HrmqE4sWSei0XdKGbOMOHN3Mm2Bf-M&ver=2.1.6"></script>
<script src="assets/js/gmaps.min.js"></script>

<!-- jquery-ui - jquery include -->
<script src="assets/js/jquery-ui.js"></script>

<!-- off canvas sidebar - jquery include -->
<script src="assets/js/mCustomScrollbar.js"></script>

<!-- custom - jquery include -->
<script src="assets/js/main.js"></script>

<script src="assets/js/jquery-3.6.0.min.js"></script>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"
	integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
	crossorigin="anonymous"></script>



<!-- ????????? ???????????? -->
<%-- <script type="text/javascript">
      $(document).ready(function() {
         var msg = <%=msg%>
	
		//????????? ?????? ??? alert ??????
		if (msg != 'null') {
			alert(msg);
		}
	});
</script> --%>

<!-- ???????????? ???????????? -->
<script type="text/javascript">
	$(function() {
		$("#alert-success").hide();
		$("#alert-danger").hide();
		$("input").keyup(function() {
			var pwd1 = $("#pwd1").val();
			var pwd2 = $("#pwd2").val();
			if (pwd1 != "" || pwd2 != "") {
				if (pwd1 == pwd2) {
					$("#alert-success").show();
					$("#alert-danger").hide();
					$("#joinsubmit").removeAttr("disabled");
				} else {
					$("#alert-success").hide();
					$("#alert-danger").show();
					$("#joinsubmit").attr("disabled", "disabled");
				}
			}
		});
	});

	// ????????? ???????????? (false ?????? ???????????? ????????????)
	var memberIdcheck = false;

	function confirmId() {
		console.log(111);
		var addr = "memberIdcheck.do";
		// memberId ??? ?????????
		var memberId = document.getElementById("memberId").value;
		// memberId ?????? ????????? ??????????????? ?????? ajax??????
		$
				.ajax({
					url : addr,
					data : {
						'memberId' : memberId

					},
					dataType : "json",
					success : function(data) {
						if (data.result == true) {
							document.getElementById("memberIdDiv").innerHTML = "??????????????? ??????????????????.";
							document.getElementById("memberIdDiv").style.color = 'blue';
							memberIdcheck = true;
						} else {
							document.getElementById("memberIdDiv").innerHTML = "?????? ???????????? ??????????????????.";
							document.getElementById("memberIdDiv").style.color = 'red';
							memberIdcheck = false;
						}
					}
				});
	}
</script>

<!-- ??????????????? -->
<script language="JavaScript"
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"
	charset="UTF-8"></script>
<script charset="utf-8">
	//??? ??????????????? ????????? ?????? ?????? ????????? ?????? ????????? ??????, ???????????? ???????????? ???????????? ????????? ????????? ???????????? ????????? ???????????????.
	function sample4_execDaumPostcode() {
		new daum.Postcode(
				{
					oncomplete : function(data) {
						// ???????????? ???????????? ????????? ??????????????? ????????? ????????? ???????????? ??????.

						// ????????? ????????? ?????? ????????? ?????? ????????? ????????????.
						// ???????????? ????????? ?????? ?????? ????????? ??????('')?????? ????????????, ?????? ???????????? ?????? ??????.
						var roadAddr = data.roadAddress; // ????????? ?????? ??????
						var extraRoadAddr = data.extraRoadAddr; // ?????? ?????? ??????

						// ??????????????? ?????? ?????? ????????????. (???????????? ??????)
						// ???????????? ?????? ????????? ????????? "???/???/???"??? ?????????.
						if (data.bname !== null && /[???|???|???]$/g.test(data.bname)) {
							extraRoadAddr += data.bname;
						}
						// ???????????? ??????, ??????????????? ?????? ????????????.
						if (data.buildingName !== null
								&& data.apartment === 'Y') {
							extraRoadAddr += (extraRoadAddr !== null ? ', '
									+ data.buildingName : data.buildingName);
						}
						// ????????? ??????????????? ?????? ??????, ???????????? ????????? ?????? ???????????? ?????????.
						if (extraRoadAddr !== null) {
							extraRoadAddr = ' (' + extraRoadAddr + ')';
						}

						// ??????????????? ?????? ????????? ?????? ????????? ?????????.
						document.getElementById('sample4_postcode').value = data.zonecode;
						document.getElementById("sample4_roadAddress").value = roadAddr;
						//document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
						// ?????????
						window.close();

						// ???????????? ???????????? ?????? ?????? ?????? ????????? ?????????.
						/*                   if (roadAddr !== '') {
						 document.getElementById("sample4_extraAddress").value = extraRoadAddr;
						 } else {
						 document.getElementById("sample4_extraAddress").value = '';
						 }

						 var guideTextBox = document.getElementById("guide");
						 // ???????????? '?????? ??????'??? ????????? ??????, ?????? ???????????? ????????? ?????????.
						 if (data.autoRoadAddress) {
						 var expRoadAddr = data.autoRoadAddress
						 + extraRoadAddr;
						 guideTextBox.innerHTML = '(?????? ????????? ?????? : '
						 + expRoadAddr + ')';
						 guideTextBox.style.display = 'block';

						 } else if (data.autoJibunAddress) {
						 var expJibunAddr = data.autoJibunAddress;
						 guideTextBox.innerHTML = '(?????? ?????? ?????? : '
						 + expJibunAddr + ')';
						 guideTextBox.style.display = 'block';
						 } else {
						 guideTextBox.innerHTML = '';
						 guideTextBox.style.display = 'none';
						 } */
					}
				}).open({
			autoClose : true
		});
	};
</script>

</head>


<body>

	<!-- body_wrap - start -->
	<div class="body_wrap">

		<!-- backtotop - start -->
		<div class="backtotop">
			<a href="#" class="scroll"> <i class="far fa-arrow-up"></i> <i
				class="far fa-arrow-up"></i>
			</a>
		</div>
		<!-- backtotop - end -->

		<!-- preloader - start -->
		<div id="preloader"></div>
		<!-- preloader - end -->

		<!-- header_section - start
      ================================================== -->
		<header class="header_section style_3">
			<div class="content_wrap" style="background-color: #ffffff;">
				<div class="container maxw_1720">
					<div class="row align-items-center">

						<div class="col-lg-2 col-md-6 col-6">
							<div class="brand_logo">
								<a class="brand_link" href="index.jsp"> <img
									src="assets/images/logo/TeaU.png" alt="logo_not_found">
								</a>
							</div>
						</div>

						<div class="col-lg-10 col-md-6 col-6">
							<nav class="main_menu navbar navbar-expand-lg">
								<button class="mobile_menu_btn navbar-toggler" type="button"
									data-bs-toggle="collapse" data-bs-target="#main_menu_dropdown"
									aria-controls="main_menu_dropdown" aria-expanded="false"
									aria-label="Toggle navigation">
									<span class="navbar-toggler-icon"><i class="fal fa-bars"></i></span>
								</button>
								<div class="main_menu_inner collapse navbar-collapse"
									id="main_menu_dropdown">
									<ul class="main_menu_list ul_li">
										<li class="active dropdown"><a class="nav-link"
											href="subscribe_main.do" id="home_submenu"> Subscribe </a></li>
										<li class="dropdown"><a class="nav-link" href="#"
											id="portfolio_submenu" role="button"
											data-bs-toggle="dropdown" aria-expanded="false"> shop </a>
											<ul class="submenu dropdown-menu"
												aria-labelledby="portfolio_submenu">
												<li><a href="shopSeason.do">#??????</a></li>
												<li><a href="shopUser.do">#?????????</a></li>
												<li><a href="shopBlend.do">#?????????</a></li>
											</ul></li>
										<li class="dropdown"><a class="nav-link" href="#"
											id="services_submenu" role="button" data-bs-toggle="dropdown"
											aria-expanded="false"> board </a>
											<ul class="submenu dropdown-menu"
												aria-labelledby="services_submenu">
												<li><a href="toBoard.do">?????? ??????</a></li>
												<li><a href="tbBoard.do">??????&?????? ??????</a></li>
												<li><a href="rankBoard.do">??????&?????? ??????</a></li>
												<li><a href="faq.do">F.A.Q.</a></li>
											</ul></li>
										<li class="dropdown"><a class="nav-link"
											href="magazine.do" id="experience_submenu"> Magazine </a></li>
										<li><a class="nav-link" href="tea_finder.do">Tea
												finder</a></li>
									</ul>
								</div>

								<ul class="header_btns_group ul_li_right">
									<li>
										<button type="button" class="main_search_btn">
											<a class="fal fa-user" onclick="myAndLog()"
												style="color: black;"></a>
										</button>
									</li>
									<li>
										<button type="button" class="cart_btn">
											<i class="fal fa-shopping-bag"></i> <small
												class="cart_counter">2</small>
										</button>
									</li>
									<li><input type="button" id="logInOut"
										class="btn btn_primary text-uppercase" value="LogIN"
										onclick="logInOut()"></li>
								</ul>
							</nav>
						</div>

					</div>
				</div>
			</div>

			<!-- collapse search - start -->
			<div class="main_search_collapse collapse" id="main_search_collapse">
				<div class="main_search_form card">
					<div class="container maxw_1560">
						<form action="#">
							<div class="form_item">
								<input type="search" name="search" placeholder="Search here...">
								<button type="submit" class="submit_btn">
									<i class="fal fa-search"></i>
								</button>
							</div>
						</form>
					</div>
				</div>
			</div>

			<!-- collapse search - start -->
			<div class="main_search_collapse collapse" id="main_search_collapse">
				<div class="main_search_form card">
					<div class="container maxw_1560">
						<form action="#">
							<div class="form_item">
								<input type="search" name="search" placeholder="Search here...">
								<button type="submit" class="submit_btn">
									<i class="fal fa-search"></i>
								</button>
							</div>
						</form>
					</div>
				</div>
			</div>
			<!-- collapse search - end -->
		</header>
		<!-- header_section - end
      ================================================== -->

		<!-- main body - start
      ================================================== -->
		<main>

			<!-- cart_sidebar - start
        ================================================== -->
			<!-- cart_sidebar - end
        ================================================== -->

			<!-- breadcrumb_section - start
        ================================================== -->
			<section class="breadcrumb_section text-uppercase"
				style="background-image: url(./assets/images/logo/signUp.png);">
			</section>
			<!-- breadcrumb_section - end
        ================================================== -->

			<!-- contact_section - start
        ================================================== -->
			<section class="contact_section sec_ptb_120 bg_default_gray">
				<div class="container" style="box-shadow: 0px 0px 5px 5px rgb(236, 236, 236); padding-top: 50px;">
					<h1 class="text-center"
						style="font-family: 'twayair'; margin-top:30px;">??? ??? ??? ???</h1>
					<div class="contact_form bg_white wow fadeInUp"
						data-wow-delay=".1s">
						<form action="insertMember.do" method="post"
							enctype="multipart/form-data" accept-charset=???EUC-KR???>
							<div class="row justify-content-center">
								<div class="row justify-content-center">
									<div class="col-lg-12">
										<div class="form_item" style="margin-left: 63px;">
											<label for="id">?????????</label> <input class="font" type="text"
												name="memberId" id="memberId" placeholder="id??? ??????????????????."
												value="" onblur="confirmId()" required="required" />
											<div id="memberIdDiv"></div>
										</div>
									</div>
									<div class="col-lg-12">
										<div class="form_item" style="margin-left: 63px;">
											<label for="password">????????????</label> <input class="font"
												type="password" name="memberPass" id="pwd1"
												placeholder="password??? ??????????????????." value="">
										</div>
									</div>
									<div class="col-lg-12">
										<div class="form_item" style="margin-left: 63px;">
											<label for="passwordCheck">??????????????????</label> <input class="font"
												type="password" name="rememberPass" id="pwd2"
												placeholder="password??? ?????? ??? ??????????????????." value="">
									<div class="col-lg-12 alert alert-successPW" id="alert-success" style="padding-top: 0px;">???????????????
										???????????????.</div>
									<div class="col-lg-12 alert alert-dangerPW" id="alert-danger" style="padding-top: 0px;">???????????????
										???????????? ????????????.</div>
										</div>
									</div>



									<div class="col-lg-12">
										<div class="form_item" style="margin-left: 63px;">
											<label for="name">??????</label> <input class="font" type="name"
												name="memberName" placeholder="????????? ??????????????????." value="">
										</div>
									</div>
									<div class="col-lg-12">
										<div class="form_item" style="margin-left: 63px;">
											<label for="phoneNumber">????????????</label> <input class="font"
												type="tel" name="memberPhone"
												placeholder="??????????????? ??????????????????. (010-0000-0000)" value=""
												pattern="[0-9]{3}-[0-9]{4}-[0-9]{4}">
										</div>
									</div>
									<div class="col-lg-12">
										<div class="form_item" style="margin-left: 63px;">
											<label for="email">?????????</label> <input class="font"
												type="email" name="memberEmail" placeholder="???????????? ??????????????????"
												value="">
										</div>
									</div>
									<div class="row" style="padding-left: 0px; margin-left: 113px;">
										<div class="col-lg-6">
											<div class="form_item">
												<label for="adress">?????? </label> <input class="font"
													type="text" id="sample4_postcode" placeholder="????????????"
													accept-charset="EUC-KR" readonly>
											</div>
										</div>
										<div class="col-lg-1"></div> 
										<div class="col-lg-5">
											<div class="form_item">
												<button type="button" class="btn btn_primary btn_font" style="margin-top:28px;"
													onclick="sample4_execDaumPostcode()">????????????</button>
											</div>
										</div>
										<div class="col-lg-11">
											<div class="form_item" style="margin-top:0px;">
												<input class="font" type="text" id="sample4_roadAddress"
													name="memberAddress" placeholder="????????? ??????????????????"
													accept-charset="EUC-KR" readonly>
											</div>
										</div>
										<div class="col-lg-11" style="margin-bottom:50px;">
											<div class="form_item" style="margin-top:0px;">
												<input class="font" type="text"
													name="memberAddress" placeholder="??????????????? ????????? ?????????"
													accept-charset="EUC-KR">
											</div>
										</div>
									</div>
								</div>
							</div>
							<!--   <div class="col-lg-12">
                      <div class="form_item">                        
                        <input type="adress" name="adress" placeholder="????????? ??????????????????.">
                      </div>
                    </div>
                </div> -->
							<div class="text-center">
								<button type="submit" id="joinsubmit" onclick="loginCheck()"
									class="btn btn_primary text-uppercase btn_font">??? ??? ??? ???</button>
							</div>
						</form>
					</div>
				</div>

			</section>
			<!-- contact_section - end
        ================================================== -->

			<!-- google map - start
        ================================================== -->
			<!-- google map - end
        ================================================== -->

		</main>
		<!-- main body - end
      ================================================== -->

		<!-- footer_section - start
      ================================================== -->
		<%@include file="footer.jsp"%>
		<!-- footer_section - end
      ================================================== -->

	</div>
	<!-- body_wrap - end -->


</body>
</html>