<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/Admin.css" />
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css" />
<link href="//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/css/toastr.min.css" rel="stylesheet" />
<style>
th, td {text-align: center;}
footer {width:100%; align-items: center; text-align: center; padding-top: 20px; padding-bottom: 20px; position: fixed; left: 0; bottom: 0; right:0; display: block; margin-bottom: 0; margin-top: auto; background-color: black; color: white;}
</style>
  <title>Admin Page</title>
 </head>
 <body>
 <div class="div">
  <h1>Management</h1>
  <%
  Class.forName("com.mysql.jdbc.Driver");
  Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3308/corp", "root", "@cc3s5!");
  Statement st=conn.createStatement();
  ResultSet i=st.executeQuery("select * from users");
  %>
<table border="1" style="border:1px solid black;margin-left:auto;margin-right:auto;">
  <tr>
    <th>ID</th>
    <th>First Name</th>
    <th>Last Name</th>
    <th>Email</th>
    <th>Username</th>
    <th>Password</th>
    <th>City</th>
    <th>Privilege Level</th>
  </tr>
  <% while (i.next()){ 
  String id = i.getString("u_id");
  %>
  <tr>
    <td> <%= i.getString(1) %></td>
    <td> <%= i.getString(2) %></td>
    <td> <%= i.getString(3) %></td>
    <td> <%= i.getString(4) %></td>
    <td> <%= i.getString(5) %></td>
    <td> <%= i.getString(6) %></td>
    <td> <%= i.getString(7) %></td>
    <td> <%= i.getString(8) %></td>
    <td> <button>Update</button> </td>
    <td> <a href="deleteUser.jsp?id=<%=id%>">Delete</a> </td>
  </tr>
  <% } %>
 </table>
 <br><br>
 <button id="add" class="button">Add</button>
 <div id="addModal" class="modal">
 <div class="modal-content">
	<form method="post" action="processAdmin.jsp" autocomplete="off" name="SignUp">
    <h1 class ="h1">New User</h1>
	<div class="ss-item-required">
	<input class="text" name="cFName" placeholder="First Name" required>
	<br>
	<input class="text" name="cLName" placeholder="Last Name" required>
	<br>
	<input type="email" class="email" name="cEmail" placeholder="Email" required>
	<br>
	<input class="text" name="cUsername" placeholder="Username" required>
	<br>
	<input type="password" class="password" name="cPass" placeholder="Password" id="password" required>
	<i class="bi bi-eye-slash" id="togglePassword" style="margin-right: 20px; margin-left: -40px; cursor: pointer;"></i>
	<br>
    <select id="city" name="city" required>
      <option value="">Select your city</option>
      <option value="beirut">Beirut</option>
      <option value="zahle">Zahle</option>
      <option value="saida">Saida</option>
    </select>
    <br>
</div>
	<button class="submit" type="Submit" id="btn">Add User</button><br>
	</form>
  </div>
  </div>
  <br>
  <a href ="Login.jsp">Log Out</a><br>
  <div>
			<footer class="footer">
				Copyright &copy; 2022 Khalil Website. All Rights Reserved.<br>
			</footer>
		</div>
 </div>
 <script>
 	var modal = document.getElementById("addModal");
 	var btn = document.getElementById("add");
 	const form = document.getElementById('SignUp');
 	btn.onclick = function() {
 		  modal.style.display = "block";
 		 form.reset();
 		}
 	window.onclick = function(event) {
 		  if (event.target == modal) {
 		    modal.style.display = "none";
 		  }
 		 form.reset();
 		}
 	form.addEventListener('submit', function handleSubmit(event) {
 		  event.preventDefault();
 		  form.reset();
 		});
 	
 	const togglePassword = document.querySelector('#togglePassword');
 	const password = document.querySelector('#password');

 	togglePassword.addEventListener('click', function () {
 	  // toggle the type attribute
 	  const type = password.getAttribute('type') === 'password' ? 'text' : 'password';
 	  password.setAttribute('type', type);
 	  // toggle the eye slash icon
 	  this.classList.toggle('bi-eye');
 	});
 	
 	function deleteUser(){
 		response.sendRedirect("deleteUser.jsp");
 	}
 	
	function Logout(){
		response.sendRedirect("Login.jsp");
	}
 </script>
 </body>
 </html>