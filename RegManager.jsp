<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>RegManagerjsp</title>
</head>
<body>
<%@ page import = "java.sql.*" %>
<%@ page import = "javax.sql.*" %>
<%

//Process inputs from html file
String acc=request.getParameter("acc");
String pass=request.getParameter("pass");
int eno= Integer.parseInt(request.getParameter("enum"));

//extra, we don't need these 2 lines for manager's full name, could include later
//String firstName=request.getParameter("firstName"); 
//String lastName=request.getParameter("lastName"); 

//set up connection, url should be the same for all of us
Class.forName("com.mysql.jdbc.Driver");
String url = "jdbc:mysql://127.0.0.1/project";
//my SQL root account's password is root, yours may be different --VVV
java.sql.Connection con = DriverManager.getConnection(url,"root","root");
//this creates the SQL statement
Statement st= con.createStatement();
ResultSet rs;
//here is the statement, pass parameters in order according to SQL code
int i=st.executeUpdate("insert into Managers values('"+acc+"','"+pass+"','"+eno+"')");

out.println("Registered"); 
%>
<br/>
<a href = "Login.html">Login</a><br/>
<a href = "index.html">Home</a>


</body>
</html>