<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create Staff Id</title>
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
font-size:20px;


}

.aa{
height:40px;
width:80px;
font-size:15px;
background-color: #007bff;
    color: white;
    border:none;
border-radius:20px;
cursor: pointer;
 font-family: 'Poppins', sans-serif;
position:relative;
left:40px;
top:63px;

}
.aa:hover {
    background-color: #0056b3;
}
.l1{
position:relative;
left:-30px;
font-weight: bold;

}

.l4{
position:relative;
left:-15px;
font-weight: bold;
}
.l5{
position:relative;
left:-35px;
font-weight: bold;

}
.l6{
position:relative;
left:-70px;
font-weight: bold;	
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
left:-68px;
}
.h1{
 font-family: 'Poppins', sans-serif;
position: relative;
top:40px;
}
.back{

height:40px;
width:80px;
font-size:15px;
background-color: #007bff;
    color: white;
    border:none;
border-radius:20px;
cursor: pointer;
 font-family: 'Poppins', sans-serif;
position:relative;
left: 920px;
top:75px;
}
.back:hover {
    background-color: #218838;
}
.mes{
font-size: 15px;
z-index: 1;

}
</style>
<script>
function validatePassword(event) {
    let password = document.getElementById("password").value;
    let regex = /^(?=.*[!@#$%^&*(),.?":{}|<>]).{8,}$/;

    if (!regex.test(password)) {
        document.getElementById("error-message").innerText = "Password must be at least 8 characters long and contain at least one special character.";
        event.preventDefault(); // Prevent form submission if validation fails
        return false;
    } else {
        document.getElementById("error-message").style.color = "green";
        document.getElementById("error-message").innerText = "Valid password!";
        return true;
    }
}


						
</script>
</head>
<body>
<form action="staffaddprocess" method="post" onsubmit="return validatePassword(event)">
<center><h1 class="h1">Create the Staff Id</h1></center>
<div class="box1">
<lable class="l1">Staff_Name:</lable>
<input class="i2" type="text" name="name" placeholder="Enter the Staff Name" required="required"><br><br>

<label class="l6">Mobile_Number:</label>
<input class="i6" type="number" name="mb" placeholder="Enter the  Mobile_Number" required="required"><br><br><br>
<lable class="l5">Designation:</lable>
<input class="i5" type="text" name="dn" placeholder="Enter the Designation " required="required"><br><br>
<lable class="l4">Password:</lable>
<input class="i4" type="text" id="password" name="pass" placeholder="Enter the Password" required="required">
<p class="mes" id="error-message" style="color:red;"></p>

<button class="aa" >Submit</button>
</div>
</form>
<a href="createstaff.jsp"><input  class="back" type="submit" value="Back" /></a>
</body>
</html>