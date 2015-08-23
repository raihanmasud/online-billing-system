<%@ page import="java.util.*,java.text.DateFormat,java.sql.Connection"  %>

<html>
<body>
<form name="form1" method="post" action="">
  

<%
//Date today= new Date();
Locale lc=Locale.US;
DateFormat fmt= DateFormat.getDateInstance(DateFormat.SHORT,Locale.UK);
 String dt=fmt.format(today);
out.print(dt);
%>
<input type="text" name="textfield" value="<%=dt%>"  >
</form>
</body>
</html>