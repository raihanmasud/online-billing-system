<%@ page import="java.sql.*,java.util.*"%>
<html>
<body>
<%

String com=request.getParameter("Company");
String id=request.getParameter("Id");
String nm=request.getParameter("Name");
String mn=request.getParameter("Month");
String yr=request.getParameter("Year");

//out.print(com);
%>
<%@ include file="connection.jsp"%>
<%

Statement stq =con.createStatement();
	String sqls ="select * from "+com+" where  name= '"+nm+"' and id='"+id+"' and mon='"+mn+"' and yr='"+yr+"' " ;
	
	
ResultSet rss=stq.executeQuery(sqls);   
//out.print(rss.next());

%>

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
	<pre>
	<font color="#000099" size="+3">
	<%
			String comname="****";
			//out.print(comname);
			//out.println("88"+com+"88");
			if(com.equals("ecompany"))
				comname="Electric ";
			
			if(com.equals("wcompany"))
				comname="Water ";
			if(com.equals("gcompany"))
				comname="Gas ";
			
								out.print(comname);
								out.println(" Bill  of  "+tmn+" , "+tyr);
%>
</font></pre>
<table align="center" border="2" bordercolor="#000099">

<tr><td>Customer ID</td><td><%=tid%></td></tr>
<tr><td>Name</td><td><%=tnm%></td></tr>
<tr><td>Current Month</td><td><%=tbl%></td></tr>
<tr><td>Previous Due</td><td>00000</td></tr>
<tr><td>Late Fee</td><td>00000</td></tr>
<tr><td>Total</td><td><%=total%></td></tr>
<tr><td>Status</td><td><%=tsts%></td></tr>

<%
}
%>
</table>
</body>
</html>
