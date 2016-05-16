<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%> 
<%
String email = request.getParameter("email");
String password = request.getParameter("password");
String status = request.getParameter("client_Worker"); 

if(email != "" && password != ""){
	try{
	    Class.forName("com.mysql.jdbc.Driver");
	    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Crowds", "root", "1234");
	    Statement st=con.createStatement();
		if(status.equals("C")){
			String query = "select * from client where email='" + email + "' and password='" + password +"'";
			ResultSet result = st.executeQuery(query);
			if(result.next()){
				session.setAttribute("email", result.getString("email"));
				session.setAttribute("cid", result.getString("client_id"));
			}
			System.out.println(result.getString("email"));
			response.sendRedirect("Client_Options.jsp"); 
		}
		else if(status.equals("W")){
			String query = "select * from worker where email='" + email + "' and password='" + password +"'";
			ResultSet result = st.executeQuery(query);
			if(result.next()){
				session.setAttribute("email", result.getString("email"));
				session.setAttribute("wid", result.getString("worker_id"));
			}
			response.sendRedirect("edit_profile.jsp");
		}
	}
	catch(Exception e){
		System.out.print(e);
		e.printStackTrace();
	}
	
}else{
	response.sendRedirect("Login.jsp"); 
}
%>