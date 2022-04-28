<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/Usermain.css" />
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css" />
<link href="//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/css/toastr.min.css" rel="stylesheet" />
<style>
th, td {text-align: center;}
div{}
</style>
  <title>User Page</title>
 </head>
 <body>
 <div class="div">
	<h1>Welcome User</h1>
	<br>
  	<a href ="Login.jsp">Log Out</a><br>
  	<div>
		<footer class="footer">
			Copyright &copy; 2022 Khalil Website. All Rights Reserved.<br>
		</footer>
	</div>
</div>
<script>
	function Logout(){
		response.sendRedirect("Login.jsp");
	}
</script>
</body>
 </html>