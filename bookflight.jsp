<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Book Flight</title>
</head>
<body>
<%@ page import = "java.sql.*" %>
<%@ page import = "javax.sql.*" %>
<%
try{
Class.forName("com.mysql.jdbc.Driver");
String url = "jdbc:mysql://localhost:3306/project?characterEncoding=latin1";
//my SQL root account's password is root, yours may be different --VVV
java.sql.Connection con = DriverManager.getConnection(url,"root","root");
//reserve flight
Statement st= con.createStatement();
ResultSet rs=st.executeQuery("");
}
catch(Exception e){
	System.out.println("Exception was caught " + e);
}
out.println("Your flight has successfully been booked!");

%>
<a href="index.html">Home</a>

</body>
</html>
