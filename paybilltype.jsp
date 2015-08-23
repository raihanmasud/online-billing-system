<%@ page import="java.util.*,java.text.DateFormat,java.sql.Connection,java.sql.Statement,java.sql.SQLException,java.sql.DriverManager"  %>

<html>
<head>
<title>Electric Bill</title>
</head>
<body>
<pre>

<p>			
			<b><font color="#330066" size="+2">
			Please Enter the following informations to pay the Bill.</font></b></p><form name="form1" method="post" action="paybill.jsp"><%
String acnt =(String )session.getAttribute("acount");
//out.print(acnt);
%><%
Date today= new Date();
Locale lc=Locale.US;
DateFormat fmt= DateFormat.getDateInstance(DateFormat.SHORT,Locale.UK);
 String dt=fmt.format(today);

%><%@ include file="connection.jsp"%><%
Statement sb=con.createStatement();
//ResultSet rb=sb.executeQuery("select")%>
					<input type="radio"  checked name="Billtype" value="electric_t"><strong><font color="#660000">Electric Bill	 <input type="radio" name="Billtype" value="water_t">Water Bill  	<input type="radio" name="Billtype" value="gas_t">Gas Bill</font></strong><p>&nbsp;			</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>			Name   	<input type="text" name="name">	Customer ID 	<input type="text" name="id"></p><p>&nbsp;	</p><p>			Pay for <font color="#FF0000">Month</font> <select name="Month"><option>January </option><option>February</option><option>March</option><option>April</option><option>May</option><option>June</option><option>July</option><option>August</option><option>September</option><option>October</option><option>November</option><option>December</option></select>  <font color="#FF0000">Year </font><select name="year"><option>2004</option><option>2005</option><option>2006</option><option>2007</option></select>	     <font color="#000099">Pay Date </font><input name="pdate" type="text" disabled value= "<%=dt%>" size="12"></p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>						<input type="submit" name="Submit" value="Pay Bill"><input type="reset" name="Submit2" value="Reset"></p></form>							
													
					




<p>						<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=5,0,0,0" width="105" height="23">
<param name="movie" value="button9.swf"> <param name="quality" value="high">
<param name="base" value=".">
<embed src="button9.swf" base="."  quality="high" pluginspage="http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash" type="application/x-shockwave-flash" width="105" height="23" ></embed>
</object> 	<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=5,0,0,0" width="100" height="23">
<param name="movie" value="button15.swf"> <param name="quality" value="high">
<embed src="button15.swf" quality="high" pluginspage="http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash" type="application/x-shockwave-flash" width="100" height="23" ></embed>
</object>		</p>
</pre>
</body>
</html>
