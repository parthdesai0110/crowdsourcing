<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*,java.util.*"%>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Crowds", "root", "1234");
Statement st=con.createStatement();

String wid = request.getParameter("id");
String wemail = request.getParameter("email");
String cid = session.getAttribute("cid").toString();
String cemail = session.getAttribute("email").toString();
String task = session.getAttribute("task_id").toString();
int task_id = Integer.parseInt(task);

System.out.println("email= "+wid);
System.out.println("wmail= "+wemail);
System.out.println("email= "+cid);
System.out.println("cmail= "+cemail);


int i=st.executeUpdate("insert into transaction(client_id,worker_id,task_id) values('"+cemail+"','"+wemail+"','"+task_id+"')");
System.out.println("Data is successfully inserted!");

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
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
			<div class="box-header">
				<h2>Thank You</h2>
			</div>
			<p>Your Choice Has Been Saved.</p>
			<p>Please Don't Forget to Leave Feedback.</p>
			<br/>

		</div>
	</div>
	</form>
</body>
</html>