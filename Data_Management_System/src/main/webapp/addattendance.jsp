<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ page import="java.sql.*, project1.DbConnection" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Attendance</title>
<link rel="icon" type="image/png" href="logo.avif" >
<style >
body {
    background-image: url('bgimg.jpg'); 
    background-size: 2120px;
  
    background-repeat: no-repeat;
    background-position: center;
}
.tab1{
width: 80%;
    border-collapse: collapse;
    background: white;
    box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2);
    border-radius: 8px;
    overflow: hidden;

}
.tab1 th, .tab1 td {
    padding: 12px;
    text-align: center;
    border-bottom: 1px solid #ddd;
       font-family: 'Poppins', sans-serif;
}

.tab1 th {
    background-color: #007bff;
    color: white;
}

.tab1 tr:hover {
    background-color: #f1f1f1;
}
.h1{
font-family: 'Poppins', sans-serif;
font-weight: bold;
    color: #333;
}
.b3{
height:50px;
width:100px;
font-size:15px;
background-color: #007bff;
    color: white;
    border:none;
border-radius:20px;
cursor: pointer;
font-family: cursive,serif;
position :relative;
top:200px;
}
.b3:hover {
    background-color: #218838;
}
.but3{
height:40px;
width:80px;
font-size:15px;
background-color: #007bff;
    color: white;
    border:none;
border-radius:20px;
cursor: pointer;
font-family: cursive,serif;
}
.but3:hover {
    background-color: #218838;
}
.aa{
font-family: 'Poppins', sans-serif;
font-weight: bold;
    color: #333;
}
.op{
height:30px;
width:100px;
border-radius: 10px;

}

</style>
</head>
<body>
<%
String date=request.getParameter("date");
%>
<center><h1 class="h1">Student Attendance</h1></center>
<br>
<a href="index.jsp"><button class="b3">Student Datas</button><br><br></a>
<a href="viewattendancedetails.jsp"><button class="b3">updates</button><br><br></a>
<center>
<h1 class="aa">Date:<%=date %></h1>
<table border="1"  class="tab1">
    <tr>
    <th>Login_Id</th>
    <th>Student_Name</th>
    <th>Status</th>
    <th>Action</th>
        
    </tr>
<%
boolean ans=false;
Statement stmt = DbConnection.getConnection().createStatement();
String q = "ALTER TABLE atendance ADD COLUMN `" + date + "` VARCHAR(50)";
stmt.executeUpdate(q);
System.out.println(q);
ResultSet rs = stmt.executeQuery("SELECT * FROM atendance");
if(rs.next()) {
	ans=true;
	 }
if(ans==true){
	 ResultSet r1 = stmt.executeQuery("SELECT * FROM atendance");	
	 while(r1.next()) {
	    	String ri=r1.getString("Logid");
	        String Name =r1.getString("Student_Name");
%>
<form action="sucess.jsp" method="post">
<tr>
		<td><center><%= ri %></center></td>
        <td><center><%= Name %></center></td>
        <td><center>
         <select name="status" class="op">
        <option>Present</option>
        <option>Absent</option>
        </select> </center>
        </td><br> 
        
        <input type="hidden" name="date" value="<%=date %>">
        <input type="hidden" name="id" value="<%= ri %>">
        <td><button class="but3" type="submit">Submit</button></td>
        </tr>
           </form>
           
        <%
	 }
}
        
        
        %>
        
        
</body>
</html>