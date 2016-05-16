<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register Worker</title>
	<!-- Google Fonts -->
	<link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700|Lato:400,100,300,700,900' rel='stylesheet' type='text/css'>

	<link rel="stylesheet" href="css/animate.css">
	<!-- Custom Stylesheet -->
	<link rel="stylesheet" href="css/style.css">

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
</head>

<body>
	<form method="post" action="worker_save.jsp">
	<div class="container">
		<div class="top">
			<h1 id="title" class="hidden"><span id="logo"><span>CrowdSourcing</span></span></h1>
		</div>
		<div class="login-box animated fadeInUp">
			<div class="box-header">
			<h2>Worker Register</h2>
			</div>
			<label for="Email">Email</label>
			<br/>
			<input type="text" id="email" name="wemail" placeholder="Email">
			<br/>
			<label for="password">Password</label>
			<br/>
			<input type="text" id="password" name="wpassword" placeholder="Password">
			<br/>
			<label for="profession">Profession</label>
			<br/>
			<input type="text" id="profession" name="profession" placeholder="Profession">
			<br/>
			<label for="experience">Experience</label>
			<br/>
			<input type="text" id="experience" name="experience" placeholder="Experience">
			<br/>
			<label for="Location">Location</label>
			<br/>
			<input type="text" id="location" name="location" placeholder="Location">
			<br/>
			<label for="availability">Availability</label>
			<br/>
			<input type="text" id="availability" name="availability" placeholder="Availability">
			<br/>
			<label for="task_fee">Task Fee</label>
			<br/>
			<input type="text" id="task_fee" name="task_fee" placeholder="Fees Per Hour">
			<br/>
			<label for="contact">Contact</label>
			<br/>
			<input type="text" id="contact" name="contact" placeholder="Contact">
			<br/>
			
			
			<button type="submit">Register</button>
			<br/>
			
		</div>
	</div>
	</form>
</body>

</body>
</html>