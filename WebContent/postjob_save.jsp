<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String jobtype = request.getParameter("jobtype");
String time = request.getParameter("time");
String experience = request.getParameter("experience");
String budget = request.getParameter("budget");
String location = request.getParameter("location");
String cemail = session.getAttribute("email").toString();
System.out.println("Job Type : - " +jobtype);
System.out.println("Client Email : - " +cemail);
String lastid = "";

try{
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Crowds", "root", "1234");
    Statement st=con.createStatement();
    int i=st.executeUpdate("insert into task(job_type,time,experience,budget,location,email) values('"+jobtype+"','"+time+"','"+experience+"','"+budget+"','"+location+"','"+cemail+"')",Statement.RETURN_GENERATED_KEYS);
    System.out.println("Data is successfully inserted! & i="+i);
     
    ResultSet rs = st.executeQuery("SELECT id FROM task ORDER BY id DESC LIMIT 1");
    if(rs.next()){
    	lastid = rs.getString("id");
    }
    
    session.setAttribute("task_id", lastid);
    session.setAttribute("sjob_type", jobtype);
    session.setAttribute("stime", time);
    session.setAttribute("sbudget", budget);
    session.setAttribute("slocation", location);
    
    response.sendRedirect("search_result.jsp"); 

    
	}
catch(Exception e){
	System.out.print(e);
	e.printStackTrace();
}


%>