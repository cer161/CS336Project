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
String created= date.format(new Date());
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
try{
Class.forName("com.mysql.jdbc.Driver");
String url = "jdbc:mysql://localhost:3306/project?characterEncoding=latin1";
//my SQL root account's password is root, yours may be different --VVV
java.sql.Connection con = DriverManager.getConnection(url,"root","root");
//insert SQL query
PreparedStatement ps = con.prepareStatement("INSERT INTO Customers(accCust, pass, created, firstName, lastName, address, city, state, zip, email, phone, credit, pref) VALUES('"+acc+"', '"+pass+"','"+created+"','"+firstName+"','"+lastName+"','"+address+"','"+city+"','"+state+"','"+zip+"','"+email+"','"+phone+"','"+credit+"','"+pref+"')");
int x = ps.executeUpdate();
	if(x>0){
		//query was executed 
		System.out.println("success");
	}
}
catch(Exception e){
	System.out.println("Exception was caught " + e);
}
		
System.out.println("Registered"); 
%>

<br/>
<a href = "login.html">Login</a><br/>
<a href = "index.html">Home</a>


</body>
</html>

