<html>
<body>

<%
 Statement sth =con.createStatement();
	String sqlshow ="select * from newuser where name=user" ;
	
	ResultSet rss=sth.executeQuery(sqlshow);   
	
	%>
	<%
	while(rss.next())
	{
	
	String name=rs.getString(1);
	String ad=rs.getString(2);
	String bd=rs.getString(3);
	String na=rs.getString(4);
	String oc=rs.getString(5);
	String ph=rs.getString(6);
	String em=rs.getString(7);
	
	out.println("Welcome "+ userr);
	










%>




</body>
</html>