package project1;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class createone {

	public boolean addid(String regid, String name, String sex, int age1, String dob, Long mobile) throws SQLException, ClassNotFoundException {
		Class.forName("com.mysql.cj.jdbc.Driver"); 
		Connection bvc = DriverManager.getConnection("jdbc:mysql://localhost:3306", "root", "1234");
	Statement st = bvc.createStatement();
	 st.execute("use project1;");
	 String q="insert into  t1(Login_Id,Student_Name,Sex,Student_Age,Date_Of_Birth,Mobile_Number) values('"+regid+"','"+name+"','"+sex+"',"+age1+",'"+dob+"','"+mobile+"')";
	 String m="insert into atendance(Logid,Student_Name) values('"+regid+"','"+name+"')";
	 st.executeUpdate(q);
	 st.executeUpdate(m);
	 System.out.println(q);
	 System.out.println(m);
		ResultSet an = st.executeQuery("select * from t1;");
		//System.out.println(an.next());
	 if(an.next()) {
		
	 return true;}
	 else {
		 return false;
	 }
	 }
}
