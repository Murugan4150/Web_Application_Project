<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Staff Login</title>
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
position: relative;
top:40px;
}
.name{
height:20px;
width:250px;
position:relative;
left:-14px;
top:30px;
}
.password{
height:20px;
width:250px;
position:relative;
top:60px;
left:-10px;
}
.id{

height:20px;
width:250px;
position:relative;
top:45px;

}
.l1{
font-size:20px;
 font-family: 'Poppins', sans-serif;
position:relative;
left:-16px;
top:30px;
 font-weight: bold;
}
.l2{
font-size: 20px;
 font-family: 'Poppins', sans-serif;
position:relative;
top:60px;
left:-13px;
 font-weight: bold;
}
.l3{

font-size: 20px;
 font-family: 'Poppins', sans-serif;
position:relative;
top:45px;
 font-weight: bold;
}
.box1 h1{
 font-family: 'Poppins', sans-serif;
}
.submit{
position:relative;
top:118px;
left:-50px;
height:40px;
width:80px;
font-size:15px;
background-color: #007bff;
    color: white;
    border:none;
border-radius:20px;
cursor: pointer;
 font-family: 'Poppins', sans-serif;
}
.submit:hover {
    background-color: #0056b3;
}
.note{
position:relative;
top:150px;
left:-30px;
font-size:20px;
color:red;
}
.staff{
height:30px;
width:100px;
position:relative;
top:150px;
left:350px;
cursor: pointer;
}
.back{
position:relative;
top:36px;
left:850px;
height:40px;
width:80px;
font-size:15px;
background-color: #007bff;
    color: white;
    border:none;
border-radius:20px;
cursor: pointer;
 font-family: 'Poppins', sans-serif;


}
.back:hover {
    background-color: #218838;
}
.create{
position:relative;
top:130px;
left:350px;
}
.box2{
position: relative;
top:30px;

}
</style>
</head>
<body>
<form action="staffcheckprocess.jsp" method="post">
<div class="box1">
<center><h1>Pagarbook</h1></center>
<center>
<div class="box2">
<label class="l1">Staff Name:</label>
<input class="name" type="text" name="name" placeholder="Enter your name" required="required">
<br>
<label class="l3">Staff Id:</label>
<input class="id" type="text" name="id" placeholder="Enter your Reg_Id"  required="required">
<br>
<label class="l2">Password:</label>
<input class="password" type="text" name="pass" placeholder="Enter your password" required="required">
<br>
<button class="submit">Submit</button>
</form>
</div>
</center>

<br>


</div>
<a href="Loginindex.jsp"><button class="back">Back</button></a>
<center>

</body>
</html>