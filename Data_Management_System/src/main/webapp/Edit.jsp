<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Student Information</title>
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
font-weight: bold;
    color: #333;
}
.aa{

height:500px;
width:600px;
font-family: 'Poppins', sans-serif;
font-weight: bold;
font-size:20px;
position:relative;
left:680px;
top:100px;


}
.up{
height:40px;
width:80px;
font-size:15px;
 background-color: #007bff;
    color: white;
    border: none;
border-radius:20px;
cursor: pointer;
font-family: 'Poppins', sans-serif;
font-weight: bold;
position:relative;
left: 80px;
top:71px;

}
.up:hover {
    background-color: #218838;
}
.back{

height:40px;
width:80px;
font-size:15px;
 background-color: #007bff;
    color: white;
    border: none;
border-radius:20px;
cursor: pointer;
font-family: 'Poppins', sans-serif;
font-weight: bold;
position:relative;
left: 900px;
top:-95px;
}
.back:hover {
    background-color: #218838;
}

</style>
</head>
<body>
 <%
    String empid = request.getParameter("id");
    int id=Integer.parseInt(empid);
    String name = request.getParameter("name");
    String sex=request.getParameter("sex");
    String age = request.getParameter("age");
    int age1=Integer.parseInt(age);
    String dob=request.getParameter("dob");
    String MB = request.getParameter("mb");
   long mb=Long.parseLong(MB);
    %>
    
    <center><h2 class="h1">Update Student Information</h2></center>
    <form action="Editprocess.jsp" method="post">
    <div class="aa">
    <b>
        <input type="hidden" name="id" value="<%= id %>" />
        <label for="name">Student_Name:</label>
        <input type="text" id="name" name="name" value="<%= name %>" required /><br><br>
        
        <label for="name">Sex:</label>
        <select name="sex"  required>
        <option><%= sex %></option>
        <option>Male</option>
        <option>Female</option>
        <option>Others</option>
        
        </select><br><br>
        <label for="age">Student_Age:</label>
        <input type="number" id="age" name="age" value="<%= age1 %>" required /><br><br>
        
        <label for="dob">Date_Of_Birth:</label>
        <input type="date" id="age" name="dob" value="<%= dob %>" required /><br><br>
        
        <label for="salary">Mobile_Number:</label>
        <input type="number" id="salary" name="mb" value="<%= mb %>" required /><br><br>
        
        <input  class="up" type="submit" value="Update" />
        
        </b>
        </div>
    </form>
    <a href="index.jsp"><input  class="back" type="submit" value="Back" /></a>

 
</body>
</html>