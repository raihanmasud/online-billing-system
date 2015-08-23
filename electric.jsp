<%@ page  import="java.sql.*"  %>

<html>
<head>
<title>Electric Bill</title>
</head>
<body>
<pre>

<p>			
			<b><font color="#663333" size="+2">
			Please Enter the following informations to pay the Bill.
</font></b>
  </p>
<form name="form1" method="post" action="">
	
<p>		Name   			<input type="text" name="name">			Customer ID 	<input type="text" name="id"></p><p></p><p>		Bill Amount		<input type="text" name="bill">			Bank Account No <input type="text" name="accno"></p><p>		Pay for 		Month  <select name="select"><option>January </option><option>February</option><option>March</option><option>April</option><option>May</option><option>June</option><option>July</option><option>August</option><option>September</option><option>October</option><option>November</option><option>December</option></select>			Year		<input name="year" type="text" value="2005"></p><p>										Payment Date	<input type="text" name="pdate" ></p><p>&nbsp;</p><p>												<input type="submit" name="Submit" value="Submit"><input type="reset" name="Submit2" value="Reset"></p></form>							
													
					
<p>						<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=5,0,0,0" width="105" height="23">
<param name="movie" value="button9.swf"> <param name="quality" value="high">
<param name="base" value=".">
<embed src="button9.swf" base="."  quality="high" pluginspage="http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash" type="application/x-shockwave-flash" width="105" height="23" ></embed>
</object> 			</p>
</pre>
<%@ page import ="java.sql.*"%>
<%
String nm=request.getParameter("name");
String id=request.getParameter("id");
String bl=request.getParameter("bill");
String accno=request.getParameter("accno");
String mon=request.getParameter("select");
String yr=request.getParameter("year");
String pdt=request.getParameter("pdate");
%>
<%@ include file="connection.jsp"%>










<%
	try{
		Statement st=con.createStatement();
		st.executeUpdate("insert into electric_t values('"+id+"','"+nm+"','"+bl+"','"+mon+"','"+yr+"','"+pdt+"')");
		}
	
	catch(SQLException se)
	{
	out.print(se);
	}

%>
</body>
</html>
