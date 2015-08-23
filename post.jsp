<%@ page  import="java.sql.*" %>
<html>

<body>
<%@include file="connection.jsp"%>

<%
String st=request.getParameter("Status");

String cm=request.getParameter("Company");
String id=request.getParameter("Id");
String nm=request.getParameter("Name");
String bl=request.getParameter("Bill");
String mon=request.getParameter("Month");
String yr=request.getParameter("Year");


%>
<%
String com_t=null;
if(cm.equals("pdb"))
	 com_t="ecompany" ;
	
 if(cm.equals("wasa"))
	com_t="wcompany" ;

if	(cm.equals("titas"))
	com_t="gcompany" ;

//out.print(com_t);
///com_t="ecompany" ;
//out.print(com_t);
%>




<%
	try{
		Statement stp=con.createStatement();
		stp.executeUpdate("insert into "+com_t+" values('"+id+"','"+nm+"','"+bl+"','"+mon+"','"+yr+"','"+st+"')");
		}
	
		catch(SQLException se)
		{
		out.print(se);
		}

%>
<pre>
						<font color="#990000" size="+2">   <%out.print("Bill Created");%></font>
</pre>
<table border="2" align="center" bordercolor="#000066">

<tr><td>Customer ID</td> <td><%=id%></td></tr>
<tr><td>Customer Name</td> <td><%=nm%></td></tr>
<tr><td>Bill Amount</td> <td><%=bl%></td></tr>
<tr><td>Pay Month</td> <td><%=mon%></td></tr>
<tr><td>Pay Year</td> <td><%=yr%></td></tr>



</table>


<pre>
						
						<font color="#990000" size="+2"> <%out.print("Create New User Bill.");%></font>
</pre>


								<%@ include file="createbill.jsp"%>

</body>
</html>
