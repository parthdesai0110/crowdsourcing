<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%> 
<%

String jobtype = session.getAttribute("sjob_type").toString();
String time = session.getAttribute("stime").toString();
String budget = session.getAttribute("sbudget").toString();
String location = session.getAttribute("slocation").toString();
ResultSet result;


System.out.println("Job Type --: -- "+jobtype);
System.out.println("Time : -- "+time);
System.out.println("Budget : -- "+budget);
System.out.println("Location : -- "+location);
//try{
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Crowds", "root", "1234");
    Statement st=con.createStatement();
    String query = "select * from worker where profession='" + jobtype + "'" + " AND (availability >='" + time +"' OR task_fee >='" +budget +"') AND location='" +location +"'";
    System.out.println("query= "+query);
    result = st.executeQuery(query);
%>
	



<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
	<!-- Google Fonts -->
	<link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700|Lato:400,100,300,700,900' rel='stylesheet' type='text/css'>

	<link rel="stylesheet" href="css/animate.css">
	<!-- Custom Stylesheet -->
	<link rel="stylesheet" href="css/style.css">

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
	<style>
	.center {
	    margin: auto;
	    width: 80%;
	    border: 3px solid #73AD21;
	    padding: 10px;
	}
	
	.center1 {
	    margin: auto;
	    width: 6%;
	    padding: 10px;
	}
	
	table {
	    border-collapse: collapse;
	    width: 100%;
	}

	th, td {
	    text-align: center;
	    padding: 8px;
	}

	tr:nth-child(even){background-color: #f2f2f2}
	
	th {
	    background-color: #4CAF50;
	    color: white;
	}
	</style>
	
</head>
<body>
<form method="post" action="client_save.jsp">
	<div class="container">
		<div class="top">
			<h1 id="title" class="hidden"><span id="logo"><span>CrowdSourcing</span></span></h1>
		</div>
		<div class="center">
			<h2>Search Results</h2>
			<table bgcolor="white">
	        <tr>
	        	<th>Email</th>
		       	<th>Profession</th>
		      	<th>Experience</th>
		        <th>Location</th>   
		        <th>Availability</th>   
		        <th>Task Fee</th>
		        <th>Contact</th>
		        <th>Credibility</th>
	        </tr>
		    
		    <%while(result.next()){%>
		    <tr>
		    	
		    	<td><a href="save_task.jsp?id=<%=result.getString("worker_id")%>&email=<%=result.getString("email")%>"><%=result.getString("email")%></a><td>
		    	<td><%=result.getString("profession")%><td>
		    	<td><%=result.getString("experience")%><td>
		    	<td><%=result.getString("location")%><td>
		    	<td><%=result.getString("availability")%><td>
		    	<td><%=result.getString("task_fee")%><td>
		    	<td><%=result.getString("contact")%><td>
		    	<td><%=result.getString("credibility")%><td>
		    </tr>
		    <%}
		    %>
			
		</table>
		<br/>
		<br/>
		
		</div>

	</div>
	</form>
		
</body>

</body>
</html>