<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<!-- Head -->
<head>
<title>고민 하는 당신의 휴가지, 지금 보정! | 보고 정해잇</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="utf-8">
<meta charset="euc-kr">
<meta name="keywords"
	content="Straggle a Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />

<!-- menu -->
<link type="text/css" rel="stylesheet" href="css/cm-overlay.css" />
<!-- //menu -->
<link href="css/jquery.fatNav.css" rel="stylesheet" type="text/css">

<!--FlexSlider-->
<link rel="stylesheet" href="css/flexslider.css" type="text/css"
	media="screen" />
<!--//FlexSlider-->
<!-- custom css theme files -->
<link rel="stylesheet" href="css/bootstrap.css" type="text/css" 
	media="all">
<link rel="stylesheet" href="css/font-awesome.css" />
<link rel="stylesheet" href="css/style.css" type="text/css" media="all">
<!-- //custom css theme files -->
<link href="css/easy-responsive-tabs.css" rel='stylesheet'
	type='text/css' />
<link rel="stylesheet" href="css/jquery-ui.css" />
<!-- // calendar -->
<!-- google fonts -->
<link
	href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese"
	rel="stylesheet">
<link
	href="//fonts.googleapis.com/css?family=Montserrat:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&amp;subset=cyrillic,cyrillic-ext,latin-ext,vietnamese"
	rel="stylesheet">
<!-- //google fonts -->

</head>
<!-- Body -->
<body>
	<!-- banner -->
	<header>
		<nav class="w3-navbar py-2">
			<div class="nav-top">
				<!-- Logo -->
				<div class="logo">
					<a href="index.html"> 보고 정해잇 </a>
				</div>
				<!-- Logo -->
				<div class="right">
					<div class="w3-socials">
						<li><i class="far fa-hand-paper"></i> TEAM 오광</li>
					</div>

				</div>
				<div class="clearfix"></div>
			</div>

			<!-- end container -->

		</nav>
	</header>
	<section class="w3l-banner">
		<div class="wthree-dot">
			<!-- nav -->
			<div class="w3layouts-nav-right">
				<div class="fat-nav">
					<div class="fat-nav__wrapper">
						<ul>
							<li><a href="index.html">메인</a></li>
							<li><a href="about.html">사용법</a></li>
							<li><a href="gallery.html">요즘 휴가지</a></li>
							<li><a href="contact.html">문의하기</a></li>
						</ul>
					</div>
				</div>
			</div>
			<!-- //nav -->
			<!-- //Header -->
			<div class="container">
				<div class="flexslider-info"> 
					<section class="slider">

						<div class="container py-md-4 mt-md-3">
							<h3 class="w3ls-title text-center">보고 정해it.</h3>
							<h5 class="w3ls-title text-center" >어디갈까 고민하는 당신의 휴가지! 사람 수 보고 정해잇~</h5>
							<div class="ban_form mt-md-3 pt-5">
								<div id="horizontalTab"
									style="display: block; width: 100%; margin: 0px;">
									<ul class="resp-tabs-list">

										<li class="resp-tab-item" aria-controls="tab_item-1"
											role="tab">어디가까</li>

									</ul>
									<div class="resp-tabs-container">
										<h2 class="resp-accordion resp-tab-active" role="tab"
											aria-controls="tab_item-0">
											
										</h2>
										<div class="tab1 resp-tab-content resp-tab-content-active"
											style="display: block" aria-labelledby="tab_item-0">
										<form action="../res.do" method="post" >	
											<div class="row">
													<div class="col-lg-4 fields">
														<span>휴가지 선택</span> <select
															class="form-control">
															<option>선택해주세요.</option>
															<option name='sea'>해수욕장</option>
															<option name='waterpark'>워터파크</option>
															<option name='park'>놀이공원</option>
															<option name='others'>Others</option>


														</select>
													</div>
													<!-- 
													<div class="col-lg-2 fields">
														<span>Check-In</span> <input id="datepicker" name="Text"
															type="date" value="yyyy/mm/dd" onfocus="this.value = '';"
															onblur="if (this.value == '') {this.value = 'mm/dd/yyyy';}"
															required="" class="hasDatepicker">
													</div>
															 -->
													<!-- 달력 부분 -->
													<div class = "col-lg-2 fields">
														<span>여행 예정일</span>
														<input type="date">
														
													</div>


													<div class="col-lg-2">
													<input type="submit" value="검색">
													</div>
												</div>
											</form>

										</div>

									</div>
								</div>
							</div>
						</div>
					</section>
				</div>
			</div>
		</div>
	</section>
	<!-- //banner -->
	<!--banner form-->
	<section class="banner_form py-5"></section>
	<!--//banner form-->
	<!-- slide -->
	<section class="slide-bg py-5">
		<div class="container py-md-4 mt-md-3">
			<div class="bg-pricemain mt-md-3 pt-5">
				<h3 class="agile-title text-uppercase text-white">즐거운 여행의 시작!</h3>
				<span class="w3-line"></span>
				<h5 class="agile-title text-capitalize pt-4">보고정해잇 사용법</h5>
				<p class="text-light py-4">보고 정해? 뭐를? <br>
				'보고 정해it' 사이트의 소개와 활용법을 알려드립니다! <br>
				뭘 보고 정하라는 건지, 자료는 어떻게 나온 건지. 궁금하면 드루와잇~</p>
				<a href="about.html"
					class="text-uppercase serv_link align-self-center bg-light btn px-4">About
					me</a>
			</div>
		</div>
	</section>
	<!-- //slide -->
	<!-- services -->



	<!-- promotions -->
	<section class="wthree-row w3-about  py-5">
		<div class="container py-md-4 mt-md-3">
			<h3 class="w3ls-title text-uppercase text-center">인기 여행지</h3>
			<div class="card-deck mt-md-3 pt-5">
			<!-- 1번째 인기여행지 사진 및 자료 -->
				<div class="card">
					<img src="images/g1_coney_island2.jpg" class="img-fluid" alt="Card image cap">
					<div class="card-body w3ls-card">
						<h5 class="card-title">Coney island Beach</h5>
						<p class="card-text mb-3 ">뉴욕 부루클린의 남쪽에 '코니 아일랜드'<br>
						Like 뉴욕의 월미도!<br> 놀이공원과 바다를 한번에 즐겨보세요.
						</p>

					</div>
				</div>
				<!-- 2번째 인기여행지 사진 및 자료 -->
				<div class="card">
					<img src="images/g2_Rockaway.jpg" class="img-fluid" alt="Card image cap">
					<div class="card-body w3ls-card">
						<h5 class="card-title">Rockaway</h5>
						<p class="card-text mb-3 "> 미국 오리건 주 퀸즈의 '락어웨이' <br>
						뉴요커들이 찾는 바닷가!<br> 서핑러라면 이곳으로 오세요.</p>

					</div>
				</div>
				<!-- 3번째 인기여행지 사진 및 자료 -->
				<div class="card">
					<img src="images/g3_Manhattan4.jpg" class="img-fluid" alt="Card image cap">
					<div class="card-body w3ls-card">
						<h5 class="card-title">Manhattan</h5>
						<p class="card-text mb-3 ">미국 캘리포니아 주 LA 카운티의 '맨해튼'<br>
						수족관이 있는 피어에서 물고기도 보고<br>
						넓은 백사장에서 인생샷 건져가세요. </p>

					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- //promotions -->
	<!--footer -->
	<footer>
		<section class="footer footer_w3layouts_section_1its py-md-5">
			<div class="container py-5">
				<div class="row footer-top">
					<div class="col-lg-3 footer-grid_section_1its_w3">
						<div class="footer-title">
						<!-- 소개 -->
							<h3>만든 사람들</h3>
						</div>
						<div class="footer-text">
							<p><b>TEAM 오광</b> <br>
							2019 청년취업아카데미에서 만난 학생들이 팀으로 모였다.
							광주에 사는 다섯명, 오광(五光)
							
							</p>
							<ul class="social_section_1info">
								<li><a href="#"><i class="fab fa-facebook-f"></i></a></li>
								<li><a href="#"><i class="fab fa-twitter"></i></a></li>
								<li><a href="#"><i class="fab fa-google-plus-g"></i></a></li>
								<li><a href="#"><i class="fab fa-linkedin-in"></i></a></li>
							</ul>
						</div>
					</div>
					<div class="col-lg-3 footer-grid_section_1its_w3">
						<div class="footer-title">
							<h3>저희는요</h3>
						</div>
						<div class="contact-info">
							<h4>장소 :</h4>
							<p>[우]61452 광주광역시 동구 필문대로 309(서석동,조선대학교) IT 융합대학 공용PC실</p>
							<div class="phone">
								<h4>연락처 :</h4>
								<p>Phone : +82 010 0000 0000</p>
								<p>
									Email : <a href="mailto:info@example.com">info@example.com</a>
								</p>
							</div>
						</div>
					</div>
					<div class="col-lg-2 footer-grid_section_1its_w3">
						<div class="footer-title">
							<h3>페이지 책갈피</h3>
						</div>
						<ul class="links">
							<li><a href="index.html">메인</a></li>
							<li><a href="about.html">사용법</a></li>
							<li><a href="gallery.html">요즘 휴가지</a></li>
							<li><a href="contact.html">문의하기</a></li>
						</ul>
					
					</div>
					
				<div class="copyright">
					<p>
						copyright. 2018 Straggle. All Rights Reserved | Design by <a
							href="http://w3layouts.com/">W3layouts</a>
					</p>
				</div>
			</div>
		</section>
	</footer>
	<!-- //footer -->
	<!-- Default-JavaScript-File -->
	<script type="text/javascript" src="js/jquery-2.2.3.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script>
	<!-- //Default-JavaScript-File -->
	<!--menu script-->
	<script type="text/javascript" src="js/modernizr-2.6.2.min.js"></script>
	<script src="js/jquery.fatNav.js"></script>
	<script>
		(function() {

			$.fatNav();

		}());
	</script>
	
	<!--Start-slider-script-->
	<script defer="" src="js/jquery.flexslider.js"></script>
	<script type="text/javascript">
		$(window).load(function() {
			$('.flexslider').flexslider({
				animation : "slide",
				start : function(slider) {
					$('body').removeClass('loading');
				}
			});
		});
	</script>
	<!--End-slider-script-->
	<!-- Calendar -->
	<script src="js/jquery-ui.js"></script>
	<script>
		$(function() {
			$(
					"#datepicker,#datepicker1,#datepicker2,#datepicker3,#datepicker4,#datepicker5")
					.datepicker();
		});
	</script>
	<!-- //Calendar -->
	<!--Rersponsive tabs-->
	<script src="js/easy-responsive-tabs.js"></script>
	<script>
		$(document).ready(function() {
			$('#horizontalTab').easyResponsiveTabs({
				type : 'default', //Types: default, vertical, accordion           
				width : 'auto', //auto or any width like 600px
				fit : true, // 100% fit in a container
				closed : 'accordion', // Start closed if in accordion view
				activate : function(event) { // Callback function if tab is switched
					var $tab = $(this);
					var $info = $('#tabInfo');
					var $name = $('span', $info);
					$name.text($tab.text());
					$info.show();
				}
			});
			$('#verticalTab').easyResponsiveTabs({
				type : 'vertical',
				width : 'auto',
				fit : true
			});
		});
	</script>
	<!-- //Responsive tabs -->

	<!-- //Body -->
	<div id="ui-datepicker-div"
		class="ui-datepicker ui-widget ui-widget-content ui-helper-clearfix ui-corner-all"></div>
</body>
<!-- //Body -->
</html>