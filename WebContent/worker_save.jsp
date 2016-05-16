<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%> 
<%
String email = request.getParameter("wemail");
String password = request.getParameter("wpassword");
String profession = request.getParameter("profession");
String experience = request.getParameter("experience");
String location = request.getParameter("location");
String availability = request.getParameter("availability");
String task_fee = request.getParameter("task_fee");
String contact = request.getParameter("contact");

System.out.println("Email : - " +email);
System.out.println("Payment Methods : - " +contact);

try{
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Crowds", "root", "1234");
    Statement st=con.createStatement();
    int i=st.executeUpdate("insert into worker(email,password,profession,experience,location,availability,task_fee,contact) values('"+email+"','"+password+"','"+profession+"','"+experience+"','"+location+"','"+availability+"','"+task_fee+"','"+contact+"')");
    
    response.sendRedirect("Login.jsp"); 
	}
catch(Exception e){
	System.out.print(e);
	e.printStackTrace();
}

    

%>