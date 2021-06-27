<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@ page import="mem.Send, mem.DB"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	request.setCharacterEncoding("euc-kr");
%>
<!--
	Author: W3layouts
	Author URL: http://w3layouts.com
	License: Creative Commons Attribution 3.0 Unported
	License URL: http://creativecommons.org/licenses/by/3.0/
-->
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
<!-- custom css theme files -->
<link rel="stylesheet" href="css/bootstrap.css" type="text/css"
	media="all">
<link rel="stylesheet" href="css/font-awesome.css" />
<link rel="stylesheet" href="css/style.css" type="text/css" media="all">
<!-- //custom css theme files -->
<!-- google fonts -->
<link
	href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese"
	rel="stylesheet">
<link
	href="//fonts.googleapis.com/css?family=Montserrat:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&amp;subset=cyrillic,cyrillic-ext,latin-ext,vietnamese"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Jua|Nanum+Gothic&display=swap"
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
	<div class="w3l-banner-1">
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
		</div>
	</div>
	<!-- //banner -->

	<!-- promotions -->

	<!-- 기존꺼 -->
	<section class="wthree-row w3-about  py-5">
		<div class="container py-md-4 mt-md-3">


			<h3 class="w3ls-title text-uppercase text-center">휴가지 추천 목록</h3>

			<div>
				<hr class="hr-cate-day-top">
				<%
					String day = request.getParameter("day");
					String category = request.getParameter("category");
				%>
				<div class="desti-div">
					<form class="desti-form" action="destinations.jsp" method="post">
						<span class="desti-cate-date-span">선택 휴가지 | </span> <select
							class="form-control_dest_opt" name="category">
							<option selected>
								<%
									if (category.equals("sea"))
										category = "해수욕장";
									else if (category.equals("waterpark"))
										category = "워터파크";
									else if (category.equals("playland"))
										category = "놀이공원";
									else if (category.equals("others"))
										category = "그 외";
								%>
								<%=category%>
							</option>
							<optgroup label="────────">
								<option value="sea">해수욕장</option>
								<option value="waterpark">워터파크</option>
								<option value="playland">놀이공원</option>
								<option value="others">그 외</option>
							</optgroup>
						</select> <span class="desti-cate-date-span">예상 날짜 | </span> <input
							type="date" value=<%=day%> name="day"
							class="form-control_dest_opt" min="2019-08-14" max="2019-08-24">

						<div class="destination-resp-tabs-cont">
							<input type="submit" value="다시 검색">
						</div>
					</form>
				</div>

				<hr class="hr-cate-day-bottom">
			</div>

			<!-- 추천 리스트 시작 -->
			<iframe width="100%" height="500px"
				src="recomandList.jsp?day=<%=day%>" name="List" id="lst"
				frameborder="0" scrolling="yes" align="center"> </iframe>

			<!-- 추천 리스트 끝 -->
		</div>
	</section>
	<!-- 기존꺼 끝 -->
	<!-- //promotions -->

	<!--footer -->
	<footer>
		<section class="footer footer_w3layouts_section_1its py-md-5">
			<div class="container py-5">
				<div class="row footer-top">
					<div class="col-lg-3 footer-grid_section_1its_w3">
						<div class="footer-title">
							<h3>만든 사람들</h3>
						</div>
						<div class="footer-text">
							<p>
								<b>TEAM 오광</b> <br> 2019 청년취업아카데미에서 만난 학생들이 팀으로 모였다. 광주에 사는
								다섯명, 고스톱에서 가장 고득점을 얻는 패에서 의미를 가져와 '오광'이라 팀명을 정했다.

							</p>
							<ul class="social_section_1info">
								<li><a href="#"><i class="fab fa-facebook-f"></i></a></li>
								<li><a href="#"><i class="fab fa-twitter"></i></a></li>
								<li><a href="#"><i class="fab fa-google-plus-g"></i></i></a></li>
								<li><a href="#"><i class="fab fa-linkedin-in"></i></i></a></li>
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
							<li><a href="gallery.html">요즘 여행지</a></li>
							<li><a href="contact.html">문의하기</a></li>
						</ul>
					</div>

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

</body>
<!-- //Body -->
</html>