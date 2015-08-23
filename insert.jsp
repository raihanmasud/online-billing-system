<%@ page session="true" %>
<%@ page import ="java.io.*,java.sql.*,java.util.*" %>
<html>
<head>
<title>Connection TEST</title>
</head>
<body>

<%@include file="connection.jsp" %>

<%

String sn="c";
String sno="3";
String sql ="insert into stu values ("+'+sn+'+", "+'+sno+'+")";

Statement st =con.createStatement();
ResultSet rs =st.executeQuery(sql);

%>

<br>
<%

rs.close();
st.close();
con.close();
%>
</body>
</html>
