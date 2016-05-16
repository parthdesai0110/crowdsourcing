<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Feedback Save</title>
</head>
<body>

<%
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Crowds", "root", "1234");
Statement st=con.createStatement();

String cemail = session.getAttribute("email").toString();
String wemail = request.getParameter("wemail").toString();
String amount = request.getParameter("amount").toString();
String cred = request.getParameter("radios").toString();
String comment = request.getParameter("comment").toString();
//String wemail = request.getParameter("email").toString();
String newCred = "";
String newAmount = "";
boolean Status = false;

//SELECT * FROM transaction WHERE ;
String sql="UPDATE transaction SET credibility='" + cred + "',amount='" + amount + "',feedback='" + comment + "' WHERE client_id='"+cemail+"' AND worker_id='"+wemail+"' AND credibility IS Null";
System.out.println("QUERY= "+sql);
int i=st.executeUpdate(sql);
ResultSet rs = st.executeQuery("Select SUM(amount), AVG(credibility) FROM transaction where worker_id='"+wemail+"'");
if(rs.next()){
	newCred = rs.getString("AVG(credibility)");
	newAmount = rs.getString("SUM(amount)");
	Status = true;
}

System.out.println("Creditibility : "+newCred);
System.out.println("Total Amount : "+newAmount);
if(Status == true){
	String sql2="UPDATE worker SET credibility='" + newCred + "',amount_earned='" + newAmount + "' WHERE email='"+wemail+"'";
	System.out.println("QUERY2= "+sql2);
	int j=st.executeUpdate(sql2);
	System.out.println("j= "+j);
}
	response.sendRedirect("Client_Options.jsp");
%>

</body>
</html>