<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Post Job</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- Google Fonts -->
	<link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700|Lato:400,100,300,700,900' rel='stylesheet' type='text/css'>

	<link rel="stylesheet" href="css/animate.css">
	<!-- Custom Stylesheet -->
	<link rel="stylesheet" href="css/style.css">

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
</head>

<body>
<form method="post" action="postjob_save.jsp">
	<div class="container">
		<div class="top">
			<h1 id="title" class="hidden"><span id="logo"><span>CrowdSourcing</span></span></h1>
		</div>
		<div class="login-box animated fadeInUp">
			<div class="box-header">
				<h2>Post Job</h2>
			</div>
			<label for="jobtype">Job Type</label>
			<br/>
			<input type="text" id="jobtype" name="jobtype" placeholder="Job Type">
			<br/>
			<label for="time">Duration (Hours)</label>
			<br/>
			<input type="text" id="time" name="time" placeholder="Duration (Hours)">
			<br/>
			<label for="experience">Experience</label>
			<br/>
			<input type="text" id="experience" name="experience" placeholder="Experience">
			<br/>
			<label for="budget">Budget (per hour)</label>
			<br/>
			<input type="text" id="budget" name="budget" placeholder="Budget (per hour)">
			<br/>
			<label for="location">Location</label>
			<br/>
			<input type="text" id="location" name="location" placeholder="Location">
			<br/>
			
			<br/>
			<button type="submit">Submit</button>
			<br/>
			
		</div>
	</div>
	</form>
</body>

</body>
</html>