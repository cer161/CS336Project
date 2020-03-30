<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%@ page import = "java.sql.*" %>
<%@ page import = "javax.sql.*" %>
<% 
//Process input data
String user=request.getParameter("user");
String pass=request.getParameter("pass");


Class.forName("com.mysql.jdbc.Driver");
String url = "jdbc:mysql://127.0.0.1/project";
//my SQL root account's password is root, yours may be different --VVV
java.sql.Connection con = DriverManager.getConnection(url,"root","root");
//this creates the SQL statement
Statement st= con.createStatement();
//check if manager username
ResultSet rs=st.executeQuery("select * from Managers where accMan= '"+user+"'");
if(rs.next()) //if manager found
{
	if(rs.getString(2).equals(pass)) //if pass correct
	{
		out.println("Welcome " +user);
		//move to manager page here?
	}
	else
	{
		out.println("Invalid user or password");
	}
}
else //if not manager user, check if customer
{
	rs=st.executeQuery("select * from Customers where accCust= '"+user+"'");
	if(rs.next()) //if customer found
	{
		if(rs.getString(2).equals(pass))
		{
			out.println("Welcome " +user);
			//move to customer page here?
		}
		else
		{
			out.println("Invalid user or password");
		}
	}
			
}

%>
</br>
<a href="index.html">Home</a>

</body>
</html>