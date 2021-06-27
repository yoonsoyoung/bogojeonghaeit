<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="mem.Send, mem.DB, mem.memDAO"%>
<%
	request.setCharacterEncoding("euc-kr");
%>
<!DOCTYPE html>
<html>
<head>
	
<meta charset="EUC-KR">
<title>recomandList</title>
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
<!-- //google fonts -->
</head>
<body>
<%! 
	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;

	public String date(String date){
	      String Nday = date;
	      String words1 = Nday.split("-")[1];
	      words1=words1+"/";
	      String words2 = Nday.split("-")[2];
	      words2=words2+"/";
	      String words3 = Nday.split("-")[0];
	       date = words1+words2+words3;
	      
	      return date;
	   }

	public Connection getConnect() {
		String url="jdbc:oracle:thin:@localhost:1521:xe";
		String user="hr";
		String pwd="hr";
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn=DriverManager.getConnection(url, user, pwd);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return conn;
	}
	
	public int func(int n, String day) {
		conn=getConnect();
		Send sd=null;
		int attendance=0;
		String sql=null;
		day = date(day);
		if(n==0){
		sql = "select attendance from coneyisland where day=?";
		}else if(n==1){
			sql="select attendance from rockaway where day=?";
		}else if(n==2){
			sql="select attendance from manhattan where day=?";
		}else if(n==3){
			sql="select attendance from orchard where day=?";
		}else if(n==4){
			sql="select attendance from southbeach where day=?";
		}else if(n==5){
			sql="select attendance from wolfes where day=?";
		}
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, day);
			rs = ps.executeQuery();
			if(rs.next()){
				attendance=rs.getInt("attendance");
			}
		
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (ps != null)
					ps.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return attendance;
	}
	

%>



	<%
		ArrayList<memDAO> list = new ArrayList();

		memDAO coney = new memDAO("Coney island Beach", "뉴욕 부루클린의 남쪽에 [코니 아일랜드] Like 뉴욕의 월미도!<br> 놀이공원과 바다를 한번에 즐겨보세요.",
				"n명", "./images/g1_coney_island2.jpg");
		memDAO rock = new memDAO("Rockaway Beach", "미국 오리건 주 퀸즈의 [락어웨이] 뉴요커들이 찾는 바닷가! 서핑러라면 이곳으로 오세요.", "n명",
				"./images/g2_Rockaway.jpg");
		memDAO manh = new memDAO("Manhattan Beach", "미국 캘리포니아 주 LA 카운티의 [맨해튼] 수족관이 있는 피어에서 물고기도 보고 	넓은 백사장에서 인생샷 건져가세요.",
				"n명", "./images/g3_Rockaway2.jpg");
		memDAO orch=new memDAO("Orchard Beach", "센트럴 팍의 3배 크기에 달하는 펠햄베이 팍안에 있는 오차드 비치! 여름 내내 무료 음악회가 열리는 이곳! 노래와 함께 산책로를 걸어보세요!",
				"n명", "./images/orchard.jpg");
		memDAO south=new memDAO("South Beach", "해변 클럽으로 유명한 사우스 비치! 넓은 백사장과 맑은 물을 마음껏 즐기고 싶다면 놀러오세요!",
				"n명", "./images/south_beach.jpg");
		memDAO wolf=new memDAO("Wolfe`s Pond Beach", "해변과 공원이 하나의 물줄기로 이어져 있는 울프스 폰드! 공원과 해변을 가로지르는 산책로를 걸어보세요! ",
				"n명", "./images/wolfe`s_pond.jpg");
		
		list.add(coney);
		list.add(rock);
		list.add(manh);
		list.add(orch);
		list.add(south);
		list.add(wolf);
	%>
	<%
		for (int i = 0; i < 6; i++) {
	%>
	<div class="card-deck pt-3 pt-3_list">
		<div class="card">
			<table>
				<tr>
					<td width="40%" rowspan="4"><img
						src=<%=list.get(i).getPath()%> class="list_img"></td>
					<td valign="middle" class="list_name_text"><%=list.get(i).getName()%></td>
				<tr>
					<td valign="top"  class="list_info_text"><%=list.get(i).getInfo()%><br>
					</td>
				</tr>
				<tr>
					<td valign="bottom" class="list_humnum_text"><hr>예상 사람 수 : <%=func(i,request.getParameter("day"))%>
					</td>
				</tr>
				<tr>
					<td valign="bottom" class="list_submit"><input type="submit"
						value="자세히보기" class="list_close"></td>
				</tr>
				</tr>
			</table>
		</div>
	</div>
	<%
		}
	%>

</body>
</html>