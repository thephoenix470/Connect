<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link
	href="//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/css/toastr.min.css"
	rel="stylesheet" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css" />
<link rel="stylesheet" href="/style.css" />
<style>
h4 {
	color: white;
	text-size: 80px;
}

div {
	text-align: center;
	margin-top: 30px;
	text-size: 80px;
}

a {
	color: limegreen;
	background-color: transparent;
	text-decoration: none;
}

a:hover {
	color: red;
	background-color: transparent;
	text-decoration: underline;
}
</style>

<meta charset="ISO-8859-1">
<title>Sign Up</title>
</head>
<body class="body">
<form action="process.jsp">
	<div>
			<h1 class="h1">Sign Up</h1>
			<div class="ss-item-required">
				<p class="p">First Name:</p>
				<input class="text" name="cFName" placeholder="First Name" required>
				<br>
				<p class="p">Last Name:</p>
				<input class="text" name="cLName" placeholder="Last Name" required>
				<br>
				<p class="p">Email:</p>
				<input type="email" class="email" name="cEmail" placeholder="Email" required> 
				<br>
				<p class="p">Username:</p>
				<input class="text" name="cUsername" placeholder="Username" required>
				<br>
				<p class="p">Password:</p>
				<input type="password" class="password" name="cPass" placeholder="Password" id="password" required> 
				<i class="bi bi-eye-slash" id="togglePassword" style="margin-right: 20px; margin-left: -40px; cursor: pointer;"></i>
				<br>
				<p class="p">Confirm Password:</p>
				<input class="password" name="cCPass" placeholder="Confirm Password" id="password" required> 
				<br> 
				<label class="label" for="city">City:</label> 
				<select id="city" name="city" required>
					<option value="">Select your city</option>
					<option value="beirut">Beirut</option>
					<option value="zahle">Zahle</option>
					<option value="saida">Saida</option>
				</select>
			</div>
		</div>

		<div>
			<button class="submit" type="Submit">Submit</button>
			<br>
			<h4>
				Already Registered? <a href="Login.jsp">Login</a><br>
				<br>
				<br>
				<br>
				<br>
			</h4>
		</div>

		<div>
			<footer class="footer">
				Copyright &copy; 2022 Khalil Website. All Rights Reserved.<br>
			</footer>
		</div>

</form>
<script>

		const togglePassword = document.querySelector('#togglePassword');
		const password = document.querySelector('#password');

		togglePassword.addEventListener('click', function() {
			// toggle the type attribute
			const type = password.getAttribute('type') === 'text' ? 'password'
					: 'text';
			password.setAttribute('type', type);
			// toggle the eye slash icon
			this.classList.toggle('bi-eye');
		});
	</script>
</body>
</html>

	