<%@ page  import="java.sql.*"  %>
<html>
<head>
<title>Untitled Document</title>

</head>

<body>
<% 
String man=request.getParameter("Manager");
String	pas=request.getParameter("Password");
String  job=request.getParameter("R1");

%>

<%
	boolean val=true;
	if(man.equals("pdb")&pas.equals("pdb") )
		out.print("WELCOME to POWER DEVEVOPEMENT BOARD.");

	else if(man.equals("wasa")&pas.equals("wasa") )
		out.print("WELCOME to WATER SUPPLY ATHORITY.");

	else if(man.equals("titas")&pas.equals("titas") )
		out.print("WELCOME to TITAS GAS COMPANY.");
	else 
		{
		out.print("Invalid User or Password.");
		val=false;
		%>
		<%@include file="Cadmin.jsp" %>
		<%
		}
%>


<%
		
		if(val){
		if(job.equals("cb"))
		
		{
%>         
			<jsp:include page = "createbill.jsp" flush="true">
			<jsp:param name="Company" value="<%=pas%>"/>
			</jsp:include>

<%
		}

		if(job.equals("vu"))
		{
%>
			<%@ include file="verifybill.jsp"%>

<%
		}

		if(job.equals("vw"))
		{
%>
			<%@ include file="viewpayment.jsp"%>

<%
		}
}
%>

</body>
</html>
