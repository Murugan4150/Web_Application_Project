<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Date Choice</title>
<link rel="icon" type="image/png" href="logo.avif" >
<style>
body {
    background-image: url('bgimg.jpg'); 
    background-size: 2120px;
  
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
.box1 h1{
 font-family: 'Poppins', sans-serif;
font-weight: bold;
color: #333;
position:relative;
top:40px;
}
.b3{
height:40px;
width:80px;
font-size:15px;
background-color: #007bff;
    color: white;
    border:none;
border-radius:20px;
cursor: pointer;
 font-family: 'Poppins', sans-serif;
 position: relative;
 top:50px;
}
.b3:hover {
    background-color: #218838;
}
.b4{
height:50px;
width:100px;
font-size:15px;
background-color: #007bff;
    color: white;
    border:none;
border-radius:20px;
cursor: pointer;
 font-family: 'Poppins', sans-serif;
}
.b4:hover {
    background-color: #218838;
}
.b5{
height:50px;
width:120px;
font-size:15px;
background-color: #007bff;
    color: white;
    border:none;
border-radius:20px;
cursor: pointer;
 font-family: 'Poppins', sans-serif;
}
.b5:hover {
    background-color: #218838;
}
.l1{

border-radius: 5px;
font-size:25px;
 font-family: 'Poppins', sans-serif;
 position:relative;
 top:30px;
}
.i1{
height:40px;
width:250px;
border-radius: 10px;
box-shadow: 0px 0px 10px black;
font-size:20px;
position:relative;
 top:30px;
}

</style>
</head>
<body>
<form action="addattendance.jsp" method="post">
<div class="box1">
<center><h1>Pagarbook</h1></center><br><br>

<center>
<label class="l1">Enter Today Date</label><br><br>
<input class="i1" type="date" name="date" required="required"><br><br>
<a href=""><button class="b3">Submit</button><br><br></a>

</center>

</form>

</div>
<a href="index.jsp"><button class="b4">Student Details</button><br><br></a>
<a href="viewattendancedetails.jsp"><button class="b5">Attendance Statement</button><br><br></a>
</body>
</html>