<%@ page import="java.sql.*"%>
<html>

<body>
<%

String user1=request.getParameter("user");
String passw =request.getParameter("pass");

try{
Class.forName("allaire.jrun.jdbc.JRunDriver");

Connection con=DriverManager.getConnection("jdbc:jrun:sqlserver://127.0.0.1:1433;databaseName=rai;user="+user1+";password="+passw+"");
%>

<font color="#000099" size="+3"  >
<pre><b>
						<%
						out.println("Welcome Raihan !");
						%>
</b></pre>
</font>
<%@include file="Manager.jsp"%>

<%
}

catch(SQLException se)
{

%>
<font color="#FF0000">
<%
out.println("Invalid user or password.");
%>
</font>
<%@include file="Admin.jsp"%>
<%
}

%>

</body>
</html>


