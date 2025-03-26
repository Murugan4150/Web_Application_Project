<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*, project1.DbConnection" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="icon" type="image/png" href="logo.avif" >
</head>
<body>

<%
String name=request.getParameter("name");
String id=request.getParameter("id");
String pass=request.getParameter("pass");


Statement stmt = DbConnection.getConnection().createStatement();
ResultSet rs = stmt.executeQuery("SELECT * FROM staff");

while(rs.next()) {
	int Id=rs.getInt("Reg_Id");
	String ri=rs.getString("Login_Id");
    String Name =rs.getString("Staff_Name");
   
    long Mobile_Number = rs.getLong("Mobile_Number");
 String dn=rs.getString("Designation");
	String pass1=rs.getString("Password");
  if(id.equals(ri)&&name.equalsIgnoreCase(Name)&&pass.equals(pass1) ) {
	  response.sendRedirect("dateset.jsp");
  
  }

}
%>


</body>
</html>