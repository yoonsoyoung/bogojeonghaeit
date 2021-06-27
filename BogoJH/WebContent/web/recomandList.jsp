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

		memDAO coney = new memDAO("Coney island Beach", "���� �η�Ŭ���� ���ʿ� [�ڴ� ���Ϸ���] Like ������ ���̵�!<br> ���̰����� �ٴٸ� �ѹ��� ��ܺ�����.",
				"n��", "./images/g1_coney_island2.jpg");
		memDAO rock = new memDAO("Rockaway Beach", "�̱� ������ �� ������ [�������] ����Ŀ���� ã�� �ٴ尡! ���η���� �̰����� ������.", "n��",
				"./images/g2_Rockaway.jpg");
		memDAO manh = new memDAO("Manhattan Beach", "�̱� Ķ�����Ͼ� �� LA ī��Ƽ�� [����ư] �������� �ִ� �Ǿ�� ����⵵ ���� 	���� ����忡�� �λ��� ����������.",
				"n��", "./images/g3_Rockaway2.jpg");
		memDAO orch=new memDAO("Orchard Beach", "��Ʈ�� ���� 3�� ũ�⿡ ���ϴ� ���ܺ��� �žȿ� �ִ� ������ ��ġ! ���� ���� ���� ����ȸ�� ������ �̰�! �뷡�� �Բ� ��å�θ� �ɾ����!",
				"n��", "./images/orchard.jpg");
		memDAO south=new memDAO("South Beach", "�غ� Ŭ������ ������ ��콺 ��ġ! ���� ������ ���� ���� ������ ���� �ʹٸ� �������!",
				"n��", "./images/south_beach.jpg");
		memDAO wolf=new memDAO("Wolfe`s Pond Beach", "�غ��� ������ �ϳ��� ���ٱ�� �̾��� �ִ� ������ ����! ������ �غ��� ���������� ��å�θ� �ɾ����! ",
				"n��", "./images/wolfe`s_pond.jpg");
		
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
					<td valign="bottom" class="list_humnum_text"><hr>���� ��� �� : <%=func(i,request.getParameter("day"))%>
					</td>
				</tr>
				<tr>
					<td valign="bottom" class="list_submit"><input type="submit"
						value="�ڼ�������" class="list_close"></td>
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