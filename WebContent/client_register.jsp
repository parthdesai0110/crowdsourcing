<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register Client</title>
	<!-- Google Fonts -->
	<link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700|Lato:400,100,300,700,900' rel='stylesheet' type='text/css'>

	<link rel="stylesheet" href="css/animate.css">
	<!-- Custom Stylesheet -->
	<link rel="stylesheet" href="css/style.css">

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
</head>

<body>
	<form method="post" action="client_save.jsp">
	<div class="container">
		<div class="top">
			<h1 id="title" class="hidden"><span id="logo"><span>CrowdSourcing</span></span></h1>
		</div>
		<div class="login-box animated fadeInUp">
			<div class="box-header">
				<h2>Client Register</h2>
			</div>
			<label for="Email">Email</label>
			<br/>
			<input type="text" id="email" name="email" placeholder="Email">
			<br/>
			<label for="password">Password</label>
			<br/>
			<input type="text" id="password" name="password" placeholder="Password">
			<br/>
			<label for="address">Address</label>
			<br/>
			<input type="text" id="address" name="address" placeholder="Address">
			<br/>
			<label for="contact">Contact</label>
			<br/>
			<input type="text" id="contact" name="contact" placeholder="Contact">
			<br/>
			<br/>
			<label for="payment">Paymanet Method</label>
			<br/>
			<select id="payment" name="payment">
		        <option value="dropdown">Select one
		        <option value="cash">Cash
		        <option value="cheque">Cheque
		        <option value="paypal">PayPal
		    </select>
			<br/>
			<br/>
			<button type="submit">Register</button>
			<br/>
		</div>
	</div>
	</form>
</body>

</html>