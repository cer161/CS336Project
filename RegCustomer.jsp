<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>RegCustomerjsp</title>
</head>
<body>

<%@ page import = "java.sql.*" %>
<%@ page import = "javax.sql.*" %>
<%@ page import = "java.text.Format" %>
<%@ page import = "java.text.SimpleDateFormat" %>
<%@ page import = "java.util.Date" %>
<%
//Process inputs from html file
String acc=request.getParameter("acc");
String pass=request.getParameter("pass");
//insert date creation here... 3rd param in SQL
Format date = new SimpleDateFormat("mm-dd-yyyy");
String created = date.format(new Date());
String firstName=request.getParameter("firstName"); 
String lastName=request.getParameter("lastName"); 
String address=request.getParameter("address");
String city=request.getParameter("city");
String state=request.getParameter("state");
String zip=request.getParameter("zip");
String email=request.getParameter("email");
String phone=request.getParameter("phone");
String credit=request.getParameter("credit");
String pref=request.getParameter("pref");

//set up connection, url should be the same for all of us
Class.forName("com.mysql.jdbc.Driver");
String url = "jdbc:mysql://127.0.0.1/project";
//my SQL root account's password is root, yours may be different --VVV
java.sql.Connection con = DriverManager.getConnection(url,"root","root");
//this creates the SQL statement
Statement st= con.createStatement();
ResultSet rs;
//here is the statement, pass parameters in order according to SQL code
int i=st.executeUpdate("INSERT INTO Customers VALUES('"+acc+"', '"+pass+"','"+created+"','"+firstName+"','"+lastName+"','"+address+"','"+city+"','"+state+"','"+zip+"','"+email+"','"+phone+"','"+credit+"','"+pref+"')");
		
		
out.println("Registered"); 
%>

<br/>
<a href = "Login.html">Login</a><br/>
<a href = "index.html">Home</a>


</body>
</html>