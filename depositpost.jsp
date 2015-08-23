<%@ page  import="java.sql.*" %>
<html>
<body>
<%
String achd=request.getParameter("Holder");
String acno=request.getParameter("Accno");
String dpam=request.getParameter("Amount");

%>
<%@ include file="connection.jsp"%>
<%
//Statement stp=con.createStatement();
//try{
Statement std=con.createStatement();
String sqld="update newuser set balance=balance+"+dpam+" where name='"+achd+"'and accno ='"+acno+"'" ;
std.executeUpdate(sqld);
//}
//catch(Exception e)
//{

//out.print(e);
//}

%>

</body>
</html>
