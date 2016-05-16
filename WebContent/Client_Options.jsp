<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%=session.getAttribute("email") %>
<%boolean status = false;
String cemail = session.getAttribute("email").toString();
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Crowds", "root", "1234");
Statement st=con.createStatement();


ResultSet rs = st.executeQuery("SELECT * FROM transaction where client_id ='" + cemail + "' and credibility is null");
if(rs.next()){
	status = true;
}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Client Options</title>
<!-- Google Fonts -->
	<link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700|Lato:400,100,300,700,900' rel='stylesheet' type='text/css'>

	<link rel="stylesheet" href="css/animate.css">
	<!-- Custom Stylesheet -->
	<link rel="stylesheet" href="css/style.css">

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
</head>
<body>
	<div class="container">
	<div class="top">
			<h1 id="title" class="hidden"><span id="logo"><span>CrowdSourcing</span></span></h1>
		
		</div>
		
		<div class="login-box animated fadeInUp">
		<p style="color:brown">Email : <%=session.getAttribute("email") %></p>
		<br/>
		<% if(status == false){%>
			<a href="Postjob.jsp"><button type="submit">Post Job</button></a>
		<%}%>
			<br/>
		<br/>
			<a href="Feedback.jsp"><button type="submit">Leave Feedback</button></a>
		<br/>
		
	</div>
</body>
</html>