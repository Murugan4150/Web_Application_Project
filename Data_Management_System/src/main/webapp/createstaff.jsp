<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*, project1.DbConnection" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Staff Details</title>
<link rel="icon" type="image/png" href="logo.avif" >
<style >
body {
    background-image: url('bgimg.jpg'); 
    background-size: 2420px;
  
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
 background-color: #007bff;
    color: white;
    border: none;
border-radius:20px;
cursor: pointer;
   font-family: 'Poppins', sans-serif;

}
.but2{

height:40px;
width:80px;
font-size:15px;
 background-color: #007bff;
    color: white;
    border: none;
border-radius:20px;
cursor: pointer;
   font-family: 'Poppins', sans-serif;
}
.but3,.but4 {
height:40px;
width:150px;
font-size:15px;
 background-color: #007bff;
    color: white;
    border: none;
border-radius:20px;
cursor: pointer;
   font-family: 'Poppins', sans-serif;
}
.but1:hover, .but2:hover, .but3:hover {
    background-color: #0056b3;
}
.alert{

border:2px solid black;
height:150px;
width:500px;
position:relative;

top:150px;
border-radius: 10px;
box-shadow: 0px 0px 10px black;
border:none;	
position:relative;
display: none;	
z-index: 1;
}
.alert p{
font-weight: bold;
 font-family: 'Poppins', sans-serif;
font-size: 20px;
position:relative;
top:30px;
}
.alert button{
position:relative;
top:20px;
}


</style>
<script>
        function confirmDelete(studentId) {
            document.getElementById("deleteLink").href = "removestaff?id=" + studentId;
            document.getElementById("alertBox").style.display = "block";
        }
        function closeAlert() {
            document.getElementById("alertBox").style.display = "none";
        }
    </script>
</head>
<body>
<center><h1 class="h1">Staff Details</h1></center>
<br>
<center>
<table border="1"  class="tab1">
    <tr>
    	<th>Reg_Id</th>
   		 <th>Login_Id</th>
        <th>Staff_Name</th>
        <th>Mobile_Number</th>
        <th>Designation</th>
         <th>Action</th>
    </tr>
<%



Statement stmt = DbConnection.getConnection().createStatement();
    ResultSet rs = stmt.executeQuery("SELECT * FROM staff");
    boolean ans=false;
    while(rs.next()) {
    	int Id=rs.getInt("Reg_Id");
    	String ri=rs.getString("Login_Id");
        String Name =rs.getString("Staff_Name");
        long Mobile_Number = rs.getLong("Mobile_Number");
        String Designation=rs.getString("Designation");
        String pass=rs.getString("Password");
        ans=true;
        
        
        
        
%>
<tr>

		<td><center><%= Id %></center></td>
		<td><center><%= ri %></center></td>
        <td><center><%= Name %></center></td>
        <td><center><%= Mobile_Number %></center></td>
       <td><center><%= Designation %></center></td>
       <td><a href="staffedit.jsp?id=<%= Id %>&ri=<%= ri %>&name=<%= Name %>&mb=<%= Mobile_Number %>&dn=<%= Designation %>&pass=<%=pass%>"><button class="but1">Edit</button></a>
       
 <button class="but2" onclick="confirmDelete(<%= Id %>)">Remove</button></td>
 </tr>
 <%
    }
    if(ans==false){
    	%>
    	 <td colspan="10" style="text-align:center;">No Records Found!</td>
    	<%
    	
    	
    	
    }
%>
</table>
<br><br>
<a href="staffadd.jsp"><button class="but3">Add Staff</button></a>
<a href="addstaff.jsp"><button class="but4">Back</button></a>
</center>
<center>
<div class="alert" id="alertBox">
        <p>Are you sure you want to delete this record?</p>
        <br>
        <a id="deleteLink"><button class="but2">Ok</button></a>
        <button class="but2" onclick="closeAlert()">Cancel</button>
    </div>
    </center>
</body>
</html>