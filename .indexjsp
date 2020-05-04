<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import = "java.sql.*" %>
<%@ page import = "javax.sql.*" %>
<% 
//Process input data
try{
String temp=request.getParameter("loc_start");
String start_state = temp.substring(0, temp.indexOf(","));
String start_country = temp.substring(temp.indexOf(",")+1, temp.length());
String departDate=request.getParameter("date_start");
String temp2=request.getParameter("loc_end");
String end_state = temp.substring(0, temp2.indexOf(","));
String end_country = temp.substring(temp2.indexOf(",")+1, temp2.length());
String arriveDate=request.getParameter("date_end");
//set up connection, url should be the same for all of us
Class.forName("com.mysql.jdbc.Driver");
String url = "jdbc:mysql://localhost:3306/project?characterEncoding=latin1";
//my SQL root account's password is root, yours may be different --VVV
java.sql.Connection con = DriverManager.getConnection(url,"root","root");
Statement st= con.createStatement();
//check if their is a flight going from src to dest and display information
//ResultSet rs=st.executeQuery("SELECT * FROM  (stopsat INNER JOIN (SELECT * FROM airports WHERE airports.city = '"+start_state+"') AS temp1 ON stopsat.dpid = temp1.pid);");
ResultSet rs=st.executeQuery("SELECT* FROM (SELECT * FROM  (stopsat INNER JOIN (SELECT * FROM airports WHERE airports.city = '"+start_state+"') AS temp1 ON stopsat.dpid = temp1.pid)) AS src INNER JOIN (SELECT * FROM  (stopsat INNER JOIN (SELECT * FROM airports WHERE airports.city = '"+end_state+"') AS temp1 ON stopsat.apid = temp1.pid)) AS dest ON dest.fNum = src.fNum;");
while(rs.next()) 
{
	String tmp = rs.getString("src.fare");
	String flightNum = rs.getString("src.flightNum");
	double costTo = Integer.parseInt(tmp);
	out.println("There is a flight from " + temp + " to " + temp2 + " for $" + tmp + " Your flight number is  " + flightNum );
}
/*
Statement st2= con.createStatement();
ResultSet rs2=st2.executeQuery("SELECT * FROM  (stopsat INNER JOIN (SELECT * FROM airports WHERE airports.city = '"+end_state+"') AS temp1 ON stopsat.apid = temp1.pid);");

while(rs2.next()){
	String tmp2 = rs2.getString("fare");
	double costFrom = Integer.parseInt(tmp2);
	double costRoundTrip =  costFrom;
	out.println("There is a flight from " + temp2 + " to " + temp + " for $" + tmp2);
	out.println("Total fair round trip: $" + costRoundTrip );
}
*/
System.out.println("no exception heheh");
}
catch(Exception e){
	System.out.println("Exception was caught " + e);
}

%>
