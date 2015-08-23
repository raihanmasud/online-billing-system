<%@ page  import="java.sql.*" %>
<html>
<head>
<title>Select User</title>
</head>
<body>
<%

String user=request.getParameter("user");
String pass=request.getParameter("pass");

%>

<%@ include file="connection.jsp"%>

<%
try
{
	Statement sts =con.createStatement();
	String sqls ="select name,password ,accno from newuser where  name= '"+user+"' and password='"+pass+"' " ;
	
	ResultSet rs=null;
	rs=sts.executeQuery(sqls);   

	boolean cnt=false;
	while(rs.next())
	{
	
	String userr=rs.getString(1);
	String passr=rs.getString(2);
	String acnor=rs.getString("accno");
	session.setAttribute("acount",acnor);
	session.setAttribute("user",userr);
	

		if(pass.equals(passr))
		{
		%>
		<font color="#000066" >
		<h3>
		<%
		out.println("Welcome  "+ userr);
		%>
		<br>
		
		</h3>
		</font>
		
		
		<jsp:include page ="tabselect.jsp" flush="true">
		<jsp:param name="user" value="<%=user%>"/>
		</jsp:include>
<%@include file="Utilityselect.jsp"%>
<pre><font color="#660000" size="+2">			</font></pre>
<pre><font color="#660000" size="+2">
			Please Click on a specific button for specific Service</font> </pre>
		<%
		}
		
		cnt=true;
	}	
	
	if(!cnt)
		{
		%>
		
		<font color="#FF0000" size="+1" >
		<pre>		<b><%
				out.println("Invalid User or Password. Pease Enter the correct User Name & Password.");
	   %>
		</b>
		</pre>
		</font>
		<%@include file ="index.jsp"%>
		<%
		}



}
catch(Exception se)
{
out.println("Error");
out.println(se);
}
%>



</body>
</html>
