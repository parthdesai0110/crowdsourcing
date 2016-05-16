<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%> 
<%
String email = request.getParameter("email");
String password = request.getParameter("password");
String address = request.getParameter("address");
String contact = request.getParameter("contact");
String pay_method = request.getParameter("payment");

System.out.println("Email : - " +email);
System.out.println("Payment Methods : - " +pay_method);

try{
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Crowds", "root", "1234");
    Statement st=con.createStatement();
    int i=st.executeUpdate("insert into client(email,password,address,contact,pay_method) values('"+email+"','"+password+"','"+address+"','"+contact+"','"+pay_method+"')");
    out.println("Data is successfully inserted!");
    response.sendRedirect("Client_Options.jsp"); 
	}
catch(Exception e){
	System.out.print(e);
	e.printStackTrace();
}

    

%>
