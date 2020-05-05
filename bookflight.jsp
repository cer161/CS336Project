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
//Process input data
String pass="";
String user="";
user=request.getParameter("user");
pass=request.getParameter("pass");
try{
Class.forName("com.mysql.jdbc.Driver");
String url = "jdbc:mysql://localhost:3306/project?characterEncoding=latin1";
//my SQL root account's password is root, yours may be different --VVV
java.sql.Connection con = DriverManager.getConnection(url,"root","root");
//this creates the SQL statement
Statement st= con.createStatement();
//check if user exists
	ResultSet rs=st.executeQuery("select * from Customers where accCust= '"+user+"'");
	if(rs.next()) //if customer found
	{
		if(rs.getString(2).equals(pass) && pass!="" && user!="")
		{
			int i =0;
			i++;
			rs=st.executeQuery("INSERT INTO reservations(rNum, accCust, tFare, flyDate, lengthStay, bookingFee, advance, passenger, representative) VALUES (i, '"+user+"', '', '', '', '', '' , '', '')");
			out.println("Flight successfully registered! ");
		}
		else
		{
			out.println("Please register for a customer account to book a flight.");
		}
	}
}
catch(Exception e){
	System.out.println("Exception was caught " + e);
}
%>
<a href="index.html">Home</a>
<a href="RegisterCustomer.html">Register here</a>

</body>
</html>
