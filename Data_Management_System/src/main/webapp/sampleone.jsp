<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Invalid</title>
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
top:50px;


}
.back{
position:relative;
top:80px;
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
<div class="box1">
 <center><p>Invalid details entered<br> Please check and <br>try again</p></center> 
<a href="Loginindex.jsp"><button class="back">Back</button></a>
</div>

</body>
</html>
