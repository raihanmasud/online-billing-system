<%@ page  import="java.sql.*" %>
<html>
<head>
<title>Table Select</title>
</head>

<body>
<%@include file="connection.jsp"%>
<%
	
try{
	
	String user=request.getParameter("user");
	Statement st =con.createStatement();
	
	String sqlshow ="select * from newuser where name='"+user+"' " ;
	
	ResultSet rss=st.executeQuery(sqlshow);   

	%>
	<table border="1" align="center" bordercolor="#00CCCC" >
	<%
	
	while(rss.next())
	{
	String name=rss.getString(1);
	String ad=rss.getString(2);
	String bd=rss.getString(3);
	String na=rss.getString(4);
	String oc=rss.getString(5);
	String ph=rss.getString(6);
	String em=rss.getString(7);
	String baln=rss.getString(8);
	String acno=rss.getString(10);
	
	%>
	<br>
	<br>
	<br>
	<br>
	
	<tr><td>Name </td><td><%=name%></td></tr>
	<tr><td>Address </td><td><%=ad%></td></tr>
	<tr><td>Birthdate </td><td><%=bd%></td></tr>
	<tr><td>Nationality </td><td><%=na%></td></tr>
	<tr><td>Occupation </td><td><%=oc%></td></tr>
	<tr><td>Phone </td><td><%=ph%></td></tr>
	<tr><td>Email </td><td><%=em%></td></tr>
	<tr><td>Account No </td><td><%=acno%></td></tr>
	<tr><td>Balance </td><td><%=baln%></td></tr>
	
<%
	
	
	
	}

%>

</table>
<%
}

catch(SQLException se)
{
out.println(se);
}

%>






</body>
</html>
