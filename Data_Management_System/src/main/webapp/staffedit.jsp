<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Staff Information</title>
<link rel="icon" type="image/png" href="logo.avif" >
<style>
body {
    background-image: url('bgimg.jpg'); 
    background-size: 2120px;
  
    background-repeat: no-repeat;
    background-position: center;
}
.h1{
 font-family: 'Poppins', sans-serif;
position: relative;
top:40px;
}
.aa{

height:500px;
width:600px;
font-family: 'Poppins', sans-serif;
font-size:20px;
position:relative;
left:680px;
top:100px;



}
.up{
height:40px;
width:80px;
font-size:15px;
background-color:#007BFF;
  color: white;
  border:none;
border-radius:20px;
cursor: pointer;
font-family: 'Poppins', sans-serif;
position:relative;
left: 80px;
top:63px;

}
.up:hover {
	 background-color: #218838;
}
.back{

height:40px;
width:80px;
font-size:15px;
background-color:#007BFF;
  color: white;
  border:none;
border-radius:20px;
cursor: pointer;
font-family: 'Poppins', sans-serif;
position:relative;
left: 900px;
top:-150px;
}
.back:hover {
	 background-color: #218838;
}

</style>
</head>
<body>
 <%
    String id1 = request.getParameter("id");
    int id=Integer.parseInt(id1);
    String rid = request.getParameter("ri");
    String name = request.getParameter("name");
    String MB = request.getParameter("mb");
   long mb=Long.parseLong(MB);
   String dn=request.getParameter("dn");
   String pass=request.getParameter("pass");
    %>
    
    <center><h2 class="h1">Update Staff Information</h2></center>
    <form action="staffeditprocess.jsp" method="post">
    <div class="aa">
    <b>
        <input type="hidden" name="id" value="<%= id %>" />
         <input type="hidden" name="rid" value="<%= rid %>" />
        <label for="name">Staff_Name:</label>
        
        <input type="text" id="name" name="name" value="<%= name %>" required /><br><br>
      
         <label for="salary">Mobile_Number:</label>
        <input type="number" id="mb" name="mb" value="<%= mb %>" required /><br><br>
        
        <label for="age">Designation:</label>
        <input type="text" id="dn" name="dn" value="<%= dn %>" required /><br><br>   
        
        <input type="hidden" id="pass" name="pass" value="<%= pass%>" required /><br><br>           
        
        <input  class="up" type="submit" value="Update" />
        
        </b>
        </div>
    </form>
    <a href="createstaff.jsp"><input  class="back" type="submit" value="Back" /></a>

 
</body>
</html>