<%@ page import ="java.io.*,java.sql.*,java.util.*" %>
<html>
<head>
<title>Connection TEST</title>
</head>
<body>

<%@include file="connection.jsp" %>

<%


String sql ="select * "+"from stu" ;

Statement st =con.createStatement();
ResultSet rs =st.executeQuery(sql);

while(rs.next())
{
String no= rs.getString(1);
String name= rs.getString(2);

out.println("DEPNO"+no+"    DNAME   "+name);
%>

<br>
<%
}
rs.close();
st.close();
con.close();
%>
</body>
</html>
