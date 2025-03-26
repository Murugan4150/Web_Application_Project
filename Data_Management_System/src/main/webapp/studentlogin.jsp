<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Students Login</title>
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
}
.id{

height:30px;
width:280px;
position:relative;
top:80px;
border-radius:10px;

}
.l1{
font-size:20px;
font-family: cursive,serif;
position:relative;
left:-16px;
top:30px;
}
.l2{
font-size: 20px;
font-family: cursive,serif;
position:relative;
top:60px;
}
.l3{

font-size: 20px;
font-family: cursive,serif;
position:relative;
top:55px;
 font-weight: bold;
}
.box1 h1{
font-family: cursive,serif;
}
.submit{
position:relative;
top:147px;
left:-50px;
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
top:25px;
left:850px;
height:40px;
width:80px;
font-size:15px;
background-color: #007bff;
    color: white;
    border-radius:20px;
cursor: pointer;
font-family: cursive,serif;
border:none;


}
.back:hover {
    background-color: #218838;
}
.create{
position:relative;
top:130px;
left:350px;
}

</style>
</head>
<body>
<form action="studentloginprocess.jsp" method="post">
<div class="box1">
<center><h1>Pagarbook</h1></center>
<center>
<label class="l3">Student Id:</label><br>
<input class="id" type="text" name="id" placeholder="Enter your name" >
<br>
<button class="submit">Submit</button>
</form>

</center>

<br>


</div>
<a href="Loginindex.jsp"><button class="back">Back</button></a>
<center>

</body>
</html>