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
	String temp = "";
	String start_state = "";
	String start_country = "";
	String departDate = "";
	String temp2 = "";
	String end_state = "";
	String end_country = "";
	String arriveDate = "";
 temp=request.getParameter("loc_start");
 start_state = temp.substring(0, temp.indexOf(","));
 start_country = temp.substring(temp.indexOf(",")+1, temp.length());
 departDate=request.getParameter("date_start");
 temp2=request.getParameter("loc_end");
 end_state = temp2.substring(0, temp2.indexOf(","));
 end_country = temp2.substring(temp2.indexOf(",")+1, temp2.length());
 arriveDate=request.getParameter("date_end");
 if(temp == "" || temp2 == ""){
	 out.println("Enter a starting and ending location");
 }
//set up connection, url should be the same for all of us
Class.forName("com.mysql.jdbc.Driver");
String url = "jdbc:mysql://localhost:3306/project?characterEncoding=latin1";
//my SQL root account's password is root, yours may be different --VVV
java.sql.Connection con = DriverManager.getConnection(url,"root","root");
Statement st= con.createStatement();

//Do sql query to check if there is a flight from src to dest, if so display flight details
ResultSet rs=st.executeQuery("SELECT src.fNum AS srcfNum, dest.fNum AS destfnum, src.fare AS srcFare, src.atime AS arrivalTime, src.dtime AS departureTime FROM (SELECT * FROM  (stopsat INNER JOIN (SELECT * FROM airports WHERE airports.city = '"+start_state+"') AS temp1 ON stopsat.dpid = temp1.pid)) AS src INNER JOIN (SELECT * FROM  (stopsat INNER JOIN (SELECT * FROM airports WHERE airports.city = '"+end_state+"') AS temp1 ON stopsat.apid = temp1.pid)) AS dest ON dest.fNum = src.fNum;");
System.out.println("before while loop");
while(rs.next()){
	//double costTo = Integer.parseInt(tmp);
	if(rs.getString("srcfNum").equals(rs.getString("destfNum"))){
		out.println("There is a flight from " + temp + " to " + temp2 + " Your flight number is  " + rs.getString("srcfNum") );
		out.println(" One way fare: $" + rs.getString("srcFare") );
		out.println(" Departure time: " + rs.getString("departureTime") + ":00" );
		out.println(" Arrival time: " + rs.getString("arrivalTime") + ":00");
	}
	else{
		out.println("There is no flight from "+ temp + " to " + temp2);
	}
	
}

System.out.println("no exception heheh");
}
catch(Exception e){
	System.out.println("Exception was caught " + e);
}

%>
</br>
<a href="bookflight.html">Book Flight</a>
<a href="index.html">Home</a>

</body>
</html>
