<%@ page  import="java.sql.*" %>
<html>
<head>
<title>View Bill</title>


</head>

<body>
<%

String com=request.getParameter("Company");
String id=request.getParameter("Id");
String nm=request.getParameter("Name");

//out.print(com);
%>
<%@ include file="connection.jsp"%>
<%

Statement sts =con.createStatement();
	String sqls ="select * from "+com+" where  name= '"+nm+"' and id='"+id+"' " ;
	
	
ResultSet rss=sts.executeQuery(sqls);   
//out.print(rss.next());

%>
<pre>
<table align="center" border="2" bordercolor="#000099">
<tr><td>Customer ID</td><td><%=id%></td></tr>
<tr><td>Name</td><td><%=nm%></td></tr>

</table>






</pre>

<table align="center" border="2" width="500">
<tr><td  width="75">Month</td><td width="75">Year</td><td width="75">Total Bill</td><td width="75">Status</td></tr>
</table>
<table align="center" border="2"  width="500">
<%
while(rss.next())
	{
	
	String tid=rss.getString(1);
	String tnm=rss.getString(2);
	String tbl=rss.getString(3);
	String tmn=rss.getString(4);
	String tyr=rss.getString(5);
	String tsts=rss.getString(6);
	int total=Integer.parseInt(tbl);
%>
<%
String lstmon;


%>



<tr>
<td width="75"><%=tmn%></td>
<td width="75"><%=tyr%></td><td width="75"><%=tbl%></td><td width="75"><%=tsts%></td>
</tr>


<%
}
%>
</table>

</body>
</html>
