<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*, java.util.*" %>
    <%@ page import="java.sql.*, project1.DbConnection" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Attendance Statement</title>
<link rel="icon" type="image/png" href="logo.avif" >
<style >
body {
    background-image: url('bgimg.jpg'); 
    background-size: 2550px;
  
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
.but1{
height:40px;
width:80px;
font-size:15px;
background-color:blue;
color:white;
border-radius:20px;
cursor: pointer;
font-family: cursive,serif;

}
.but2{

height:40px;
width:80px;
font-size:15px;
background-color:blue;
color:white;
border-radius:20px;
cursor: pointer;
font-family: cursive,serif;
}
.but3{
height:40px;
width:80px;
font-size:15px;
background-color:blue;
color:white;
border-radius:20px;
cursor: pointer;
font-family: cursive,serif;
}


</style>
</head>
<body>
<center><h1 class="h1">Student Attendance Statement</h1></center>
<br>
<center>
<table border="1"  class="tab1">
    <% 
Connection conn = DbConnection.getConnection();
Statement stmt = conn.createStatement();
ResultSet rs = stmt.executeQuery("SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'atendance' AND TABLE_SCHEMA = 'project1'");

ArrayList<String> columnNames = new ArrayList<>();
while (rs.next()) {
    columnNames.add(rs.getString("COLUMN_NAME"));
    
}
%>
   <tr>
<% 
for (String columnName : columnNames) {
%>
    <th><%= columnName %></th>
<%
}
%>
</tr>

<%
 

    
ResultSet rmm = stmt.executeQuery("SELECT * FROM atendance");

while (rmm.next()) {
    int totalPresent = 0;
    int totalAbsent = 0;
    String studentId = rmm.getString("Logid");

    for (String columnName : columnNames) {
        String status = rmm.getString(columnName);
        if (status != null && status.equalsIgnoreCase("Present")) {
            totalPresent++;
        }
        if (status != null && status.equalsIgnoreCase("Absent")) {
            totalAbsent++;
        }
    }
    String updateQuery = "UPDATE atendance SET total_present = ?, total_absent = ? WHERE Logid = ?";
    PreparedStatement pstmt = conn.prepareStatement(updateQuery);
    pstmt.setInt(1, totalPresent);
    pstmt.setInt(2, totalAbsent);
    pstmt.setString(3, studentId);
    pstmt.executeUpdate();
    pstmt.close();

%>

    <tr> 
    <% 
for (String columnName : columnNames) {
%>

    <td><%= rmm.getString(columnName) %></td>
   
<%
}
    %>
     </tr>
     <% 
}
%>



 
</table>
<br><br>

</center>
</body>
</html>







    
