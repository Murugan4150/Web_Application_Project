package project1;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class createstaff {

	public boolean addid(String logid, String name, long mobile, String dn, String pass) throws SQLException, ClassNotFoundException {
		Class.forName("com.mysql.cj.jdbc.Driver"); 
		Connection bvc = DriverManager.getConnection("jdbc:mysql://localhost:3306", "root", "1234");
	Statement st = bvc.createStatement();
	 st.execute("use project1;");
	 String q="insert into  staff(Login_Id,Staff_Name,Mobile_Number,Designation,Password) values('"+logid+"','"+name+"','"+mobile+"','"+dn+"','"+pass+"')";
	 st.executeUpdate(q);
	 System.out.println(q);
		ResultSet an = st.executeQuery("select * from staff;");
		//System.out.println(an.next());
	 if(an.next()) {
		
	 return true;}
	 else {
		 return false;
	 }
	 }
}
