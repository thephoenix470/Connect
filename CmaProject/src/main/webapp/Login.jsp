<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/Login.css" />
<style>
body {
    background-image: url("/360_F_355607062_zYMS8jaz4SfoykpWz5oViRVKL32IabTP.jpg");
}
h1 {text-align: center; color: limegreen;}
div {text-align: center; margin-top:100px; text-size: 80px;}
</style>

<meta charset="ISO-8859-1">
<title>Login</title>
<link rel="stylesheet" type="text/css" href="<c:url value='/style.css' />"/>
</head>
<body>
<form action="Retrieve.jsp" method="post">
<div>
	<h1>Log In</h1>
	<br>
	<input class="text" type="text" name="cUsername" placeholder="Username" required>
	<br><br>
	<input class="password" type="password" name="cPass" placeholder="Password" id="myInput" required>
	<br><br>
	<input type="checkbox" onclick="myFunction()">Show Password
	<br><br>
	<input class="submit" type="submit" class="submit" value= "Log In" ><br>
	Not Registered? <a href ="SignUp.jsp">Sign Up</a><br><br><br><br><br>
</div>

<div>
	<footer class="footer">
		Copyright &copy; 2022 Khalil Website. All Rights Reserved.<br>
  	</footer>
</div>
<div>
	
</div>
</form>
<script>
function myFunction() {
	  var x = document.getElementById("myInput");
	  if (x.type === "password") {
	    x.type = "text";
	  } else {
	    x.type = "password";
	  }
	}

function openMain(){
	response.sendRedirect("userMain.jsp");
}
</script>
</body>
</html>