<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*, project1.DbConnection" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Process</title>
    <link rel="icon" type="image/png" href="logo.avif" >
    <style>
    
body {
    background-image: url('bgimg.jpg'); 
    background-size: 2600px;
  
    background-repeat: no-repeat;
    background-position: center;
}
.box1{
border:2px solid black;
height:400px;
width:500px;
position:relative;
left:550px;
top:150px;
border-radius: 10px;
box-shadow: 0px 0px 10px black;
border:none;	
}

.box1 p{
 font-family: 'Poppins', sans-serif;
font-weight: bold;
color: #333;
font-size:30px;
position:relative;
top:120px;


}
.back{
position:relative;
top:150px;
left:210px;
height:40px;
width:80px;
font-size:15px;
background-color: #007bff;
    color: white;
border-radius:20px;
cursor: pointer;
font-family: 'Poppins', sans-serif;
border:none;


}
.back:hover {
    background-color: #218838;
}
    
    
    </style>
</head>
<body>
    <%
        String id = request.getParameter("id");
    String rid = request.getParameter("rid");
        String name = request.getParameter("name");
		String mb1 = request.getParameter("mb");
        String dns = request.getParameter("dn");
        String pass1 = request.getParameter("pass");
        
        
        int  id1=Integer.parseInt(id);
        long mb = Long.parseLong(mb1);
        
        String updateQuery = "UPDATE staff SET Login_Id = ?, Staff_Name = ?, Mobile_Number = ? ,Designation =?,Password=? WHERE Reg_ID = ?";
        
        try (Connection conn = DbConnection.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(updateQuery)) {
             
            pstmt.setString(1, rid);
            pstmt.setString(2, name);
            pstmt.setLong(3,mb);
            pstmt.setString(4, dns);
            pstmt.setString(5, pass1);
            pstmt.setInt(6, id1);
            
            
            
            int rowsAffected = pstmt.executeUpdate();
            if (rowsAffected > 0) {
                %>
                <div class="box1">
 <center><p>Staff Data Updated <br>
 Sucessfully</p></center> 
<a href="createstaff.jsp"><button class="back">Back</button></a>
</div>
                
                
                <%
            } else {
                out.println("<h3>Failed to update employee data.</h3>");
            }
        } catch (SQLException e) {
            e.printStackTrace();
            out.println("<h3>Error: " + e.getMessage() + "</h3>");
        }
    %>
    
    <br>
    
</body>
</html>
