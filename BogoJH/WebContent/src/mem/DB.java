package mem;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class DB {
	String[] category_arr = {"sea", "waterpark", "playland", "others"};
	
	private Connection conn;
	private PreparedStatement ps;
	private ResultSet rs;
	
	public Connection getConnect() {
		String url="jdbc:oracle:thin:@localhost:1521:xe";
		String user="hr";
		String pwd="hr";
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn=DriverManager.getConnection(url,user,pwd);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return conn;
	}
	
	public void dbClose() {
		try {
			if(rs!=null) rs.close();
			if(ps!=null) ps.close();
			if(conn!=null) conn.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public Send getById(String day) {
		conn=getConnect();
		String sql="select * from seatest01 where day=?";
		Send sd=null;
		try {
			ps=conn.prepareStatement(sql);
			ps.setString(1, day);
			rs=ps.executeQuery();
			if(rs.next()) {
				day=rs.getString("day");
				String category=rs.getString("category");
				int num=rs.getInt("num");
				sd=new Send(day,category,num);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			dbClose();
		}
		return sd;
	}
}
