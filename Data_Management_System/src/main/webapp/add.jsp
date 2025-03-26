<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create the Student Id</title>
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
height:300px;
width:500px;
position:relative;
left:700px;	
top:100px;
border:none;
font-family: 'Poppins', sans-serif;
font-weight: bold;
font-size:20px;


}
.h1{
font-family: 'Poppins', sans-serif;
font-weight: bold;
font-weight: bold;
    color: #333;
}
.aa{
height:40px;
width:80px;
font-size:15px;
background-color: #007bff;
    color: white;
    border: none;
border-radius:20px;
cursor: pointer;
font-family: 'Poppins', sans-serif;
position:relative;
left:-20px;
top:52px;

}
.aa:hover {
    background-color: #218838;
}
.l1{
position:relative;
left:-30px;
}
.l3{
position:relative;
left:75px;

}
.l4{
position:relative;
left:-15px;
}
.l5{
position:relative;
left:-35px;

}
.l6{
position:relative;
left:-40px;
}
.i1{
height:20px;
width:200px;
border-radius: 5px;

}
.i2{
height:20px;
width:200px;
border-radius: 5px;
position:relative;
left:-30px;
}
.i3{
height:25px;
width:200px;
border-radius: 5px;
position:relative;
left:80px;
}
.i4{
height:20px;
width:200px;
border-radius: 5px;
position:relative;
left:-10px;

}
.i5{
height:25px;
width:200px;
border-radius: 5px;
position:relative;
left:-30px;
}
.i6{
height:20px;
width:200px;
border-radius: 5px;
position:relative;
left:-34px;
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
position:relative;
left: 920px;
top:123px;
}
.back:hover {
    background-color: #218838;
}

</style>
</head>
<body>
<form action="addstudent" method="post">
<center><h1 class="h1">Create the Student Id</h1></center>
<div class="box1">
<lable class="l1">Student_Name:</lable>
<input class="i2" type="name" name="name" placeholder="Enter the Student Name" required="required"><br><br>
<lable class="l3">Sex:</lable>
<select  name="sex" class="i3" required="required">
<option>Select one...</option>
<option>Male</option>
<option>Female</option>
<option>Others</option>
</select><br><br>
<lable class="l4">Student_Age:</lable>
<input class="i4" type="number" name="age" placeholder="Enter the Student Age" required="required"><br><br>
<lable class="l5">Date_Of_Birth:</lable>
<input class="i5" type="date" name="dob" required="required"><br><br>
<label class="l6">Mobile_Number:</label>
<input class="i6" type="number" name="mb" placeholder="Enter the  Mobile_Number" required="required"><br><br><br>
<button class="aa" style="margin-left:100px;">Submit</button>
</div>
</form>
<a href="index.jsp"><input  class="back" type="submit" value="Back" /></a>
</body>
</html>