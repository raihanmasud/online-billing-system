<%@ page  import="java.sql.*"  %>
<html>
<head>
<title>insert user</title>
<meta http-equiv="refresh" >
</head>
<body>


<%@ include file="connection.jsp" %>
<%

 //cnt =(String)
 //out.print(session.getAttribute("count"));
 //if(session.getAttribute("count")!=null)
	
 //=new Integer();
 //cnt=p.intValue(); 
	
	try{
	 	//out.print(session.getAttribute("count"));
		if(session.getAttribute("ucount")!=null)
	 	{
	 				
//out.print(cnt);

//if(cnt.equals(session.getAttribute("count")))
//out.print("PAGE EXPIRED>>>>>>>>>>");

%>

<%
String acno=request.getParameter("Accno");
String nam=request.getParameter("Name");
String ad=request.getParameter("Address");
String bd=request.getParameter("Birthday");
String na=request.getParameter("Nationality");
String oc=request.getParameter("Occupation");
String ph=request.getParameter("Phone");
String em=request.getParameter("Email");
String pas=request.getParameter("Password");
String repas=request.getParameter("Repassword");
String balc =request.getParameter("Balance");

%>


<%
if(pas.equals(repas))
{
out.println("\n Check out the informations.");
%>

<%@ include file="table.jsp" %>
<%
}
%>





<%
try
{
Statement st =con.createStatement();

String sql ="updateuser '"+nam+"','"+ad+"','"+bd+"','"+na+"','"+oc+"','"+ph+"','"+em+"','"+balc+"' ,'"+pas+"','"+acno+"'" ;
st.executeUpdate(sql);
//out.println("New User has been Created.");


%>
<%
}

catch(SQLException se)
{
out.println(se);
}
%>

<%
}



else
out.print("The Page has Expired. Please log in again..");


}

catch(Exception e)
{

out.print(e);

}


%>
<p>&nbsp; </p>
<p>&nbsp;</p>
</body>
</html>
