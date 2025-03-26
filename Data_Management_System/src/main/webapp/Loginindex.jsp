<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Pagar Book</title>
<link rel="icon" type="image/png" href="logo.avif" >
<style>
							 #splash-screen {
							            position: fixed;
							            top: 0;
							            left: 0;
							            width: 100%;
							            height: 100%;
							            background: #ffffff; 
							            display: flex;
							            align-items: center;
							            justify-content: center;
							            flex-direction: column;
							            text-align: center;
							            z-index: 9999;
							        }
							
							      
							        #splash-logo {
							            width: 150px; 
							            height: auto;
							            animation: fadeIn 1.5s ease-in-out;
							        }
							
							        
							        #app-name {
							            font-size: 24px;
							            font-weight: bold;
							            color: #333;
							            margin-top: 10px;
							            animation: fadeIn 2s ease-in-out;
							             font-family: 'Poppins', sans-serif;
							             position: relative;
							             left: 8px;
							        }
							
							       
							        @keyframes fadeIn {
							            from { opacity: 0; }
							            to { opacity: 1; }
							        }
							
							        @keyframes fadeOut {
							            from { opacity: 1; }
							            to { opacity: 0; }
							        }
							


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
position:relative;



}
.box1 h1{
 font-family: 'Poppins', sans-serif;
position: relative;
top:40px;
}
button {
position: relative;
top:30px;
  width: 300px;
  padding: 12px;
  margin: 5px 0;
  font-size: 20px;
  background-color:#007BFF;
  color: white;
  border: none;
  border-radius: 8px;
  cursor: pointer;
  transition: 0.3s;
}
button:hover {
	  background-color: #0056b3;
}
</style>
<script>
        // Hide splash screen after 3 seconds and show the app content
        window.onload = function () {
            setTimeout(function () {
                let splash = document.getElementById("splash-screen");
                splash.style.animation = "fadeOut 1s ease-in-out";
                setTimeout(() => {
                    splash.style.display = "none";
                    document.getElementById("app-content").style.display = "block";
                }, 1000);
            }, 3000); // Adjust time as needed
        };
    </script>
</head>
<body>
 <div id="splash-screen">
        <img id="splash-logo" src="logo.avif" alt="Pagar Book Logo">
        <div id="app-name">Pagar Book</div>
    </div>

<div class="box1" id="app-content" style="display: none;">
<center><h1>Pagarbook</h1></center><br><br>

<center>
<a href="addstaff.jsp"><button class="b1">Admin</button><br><br></a>
<a href="stafflogin.jsp"><button class="b1">Staff</button><br><br></a>
<a href="studentlogin.jsp"><button class="b1">Students</button><br><br></a>
</center>


</div>
</body>
</html>