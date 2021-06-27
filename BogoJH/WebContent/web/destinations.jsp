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
<title>��� �ϴ� ����� �ް���, ���� ����! | ���� ������</title>
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
					<a href="index.html"> ���� ������ </a>
				</div>
				<!-- Logo -->
				<div class="right">
					<div class="w3-socials">
						<li><i class="far fa-hand-paper"></i> TEAM ����</li>
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
							<li><a href="index.html">����</a></li>
							<li><a href="about.html">����</a></li>
							<li><a href="gallery.html">���� �ް���</a></li>
							<li><a href="contact.html">�����ϱ�</a></li>
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

	<!-- ������ -->
	<section class="wthree-row w3-about  py-5">
		<div class="container py-md-4 mt-md-3">


			<h3 class="w3ls-title text-uppercase text-center">�ް��� ��õ ���</h3>

			<div>
				<hr class="hr-cate-day-top">
				<%
					String day = request.getParameter("day");
					String category = request.getParameter("category");
				%>
				<div class="desti-div">
					<form class="desti-form" action="destinations.jsp" method="post">
						<span class="desti-cate-date-span">���� �ް��� | </span> <select
							class="form-control_dest_opt" name="category">
							<option selected>
								<%
									if (category.equals("sea"))
										category = "�ؼ�����";
									else if (category.equals("waterpark"))
										category = "������ũ";
									else if (category.equals("playland"))
										category = "���̰���";
									else if (category.equals("others"))
										category = "�� ��";
								%>
								<%=category%>
							</option>
							<optgroup label="����������������">
								<option value="sea">�ؼ�����</option>
								<option value="waterpark">������ũ</option>
								<option value="playland">���̰���</option>
								<option value="others">�� ��</option>
							</optgroup>
						</select> <span class="desti-cate-date-span">���� ��¥ | </span> <input
							type="date" value=<%=day%> name="day"
							class="form-control_dest_opt" min="2019-08-14" max="2019-08-24">

						<div class="destination-resp-tabs-cont">
							<input type="submit" value="�ٽ� �˻�">
						</div>
					</form>
				</div>

				<hr class="hr-cate-day-bottom">
			</div>

			<!-- ��õ ����Ʈ ���� -->
			<iframe width="100%" height="500px"
				src="recomandList.jsp?day=<%=day%>" name="List" id="lst"
				frameborder="0" scrolling="yes" align="center"> </iframe>

			<!-- ��õ ����Ʈ �� -->
		</div>
	</section>
	<!-- ������ �� -->
	<!-- //promotions -->

	<!--footer -->
	<footer>
		<section class="footer footer_w3layouts_section_1its py-md-5">
			<div class="container py-5">
				<div class="row footer-top">
					<div class="col-lg-3 footer-grid_section_1its_w3">
						<div class="footer-title">
							<h3>���� �����</h3>
						</div>
						<div class="footer-text">
							<p>
								<b>TEAM ����</b> <br> 2019 û�������ī���̿��� ���� �л����� ������ �𿴴�. ���ֿ� ���
								�ټ���, ���鿡�� ���� ������� ��� �п��� �ǹ̸� ������ '����'�̶� ������ ���ߴ�.

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
							<h3>����¿�</h3>
						</div>
						<div class="contact-info">
							<h4>��� :</h4>
							<p>[��]61452 ���ֱ����� ���� �ʹ���� 309(������,�������б�) IT ���մ��� ����PC��</p>
							<div class="phone">
								<h4>����ó :</h4>
								<p>Phone : +82 010 0000 0000</p>
								<p>
									Email : <a href="mailto:info@example.com">info@example.com</a>
								</p>
							</div>
						</div>
					</div>
					<div class="col-lg-2 footer-grid_section_1its_w3">
						<div class="footer-title">
							<h3>������ å����</h3>
						</div>
						<ul class="links">
							<li><a href="index.html">����</a></li>
							<li><a href="about.html">����</a></li>
							<li><a href="gallery.html">���� ������</a></li>
							<li><a href="contact.html">�����ϱ�</a></li>
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