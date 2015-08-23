<%@ page import="java.sql.*" %>
<html>
<head>
<title>Radio</title>

</head>

<body>
<%String a=request.getParameter("a");%>
<form name="form1" method="post" action="">
  <input type="radio" name="r" value="<%=a%>">
  <input type="radio" name="r" value="2">
  <input type="radio" name="r" value="3">
  <input type="submit" name="Submit2" value="Submit">



</form>
<% 
out.print(request.getParameter("r"));

%>

</body>
</html>
