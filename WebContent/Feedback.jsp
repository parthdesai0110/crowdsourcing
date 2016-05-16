<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Feedback</title>
<!-- Google Fonts -->
	<link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700|Lato:400,100,300,700,900' rel='stylesheet' type='text/css'>

	<link rel="stylesheet" href="css/animate.css">
	<!-- Custom Stylesheet -->
	<link rel="stylesheet" href="css/style.css">

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
</head>
<body>
<form method="post" action="feedback_save.jsp">
<div class="container">
		
		<div class="login-box animated fadeInUp">
		<div class="box-header">
			<h2>FeedBack</h2>
			
		</div>
		<p style="color:brown">Email : <%=session.getAttribute("email") %></p>
		<label for="worker">Worker EMail</label>
		<br/>
        <input type="text" id="wemail" name="wemail">
		<br/>
		<label for="amount">Amount</label>
		<br/>
        <input type="text" id="amount" name="amount">
		<br/>
		<label for="credibility">Credibility</label>
		<br/>
		<INPUT TYPE="radio" NAME="radios" VALUE="1" CHECKED>
        Good
        <INPUT TYPE="radio" NAME="radios" VALUE="0.5">
        Average
        <INPUT TYPE="radio" NAME="radios" VALUE="0">
        Poor
        <BR>
        <label for="comment">Comments</label>
		<br/>
        <input type="text" id="comment" name="comment">
		<br/>
        <INPUT TYPE="submit" VALUE="Submit">
		
	</div>
	</form>
</body>
</html>