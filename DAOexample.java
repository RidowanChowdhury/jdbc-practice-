package hasso;

import java.sql.*; 

public class DAOexample {
	
	String url = "jdbc:mysql://localhost:3306/test3";
	String uname = "badsha";
	String pass = "1234";
	String query = "";
	Connection conn = null;
	PreparedStatement st = null;
	Statement s = null;
	public DAOexample()  {
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				conn = DriverManager.getConnection(url, uname, pass);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	}
	
	public int addStudent(student s) {
		query = "INSERT INTO students(first_name, last_name, street) VALUES (?,?,?);";
		int r =0;
		try {
			st = conn.prepareStatement(query);
			st.setString(1, s.firstName);
			st.setString(2,s.lastName);
			st.setString(3, s.country);
			r = st.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return r;
	}
	public void showData() {
		query = "select first_name, last_name, street from students";
		ResultSet rs = null;
		try {
			s = conn.createStatement();
			rs = s.executeQuery(query);
			while(rs.next()) {
				String n = rs.getString("first_name") + " " +rs.getString("last_name")+ " from "+rs.getString("street");
				System.out.println(n);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	public void closeAll() {
		try {
			s.close();
			conn.close();
			st.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	

}
