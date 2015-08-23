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
		if(session.getAttribute("count")!=null)
	 	{
	 				
//out.print(cnt);

//if(cnt.equals(session.getAttribute("count")))
//out.print("PAGE EXPIRED>>>>>>>>>>");

%>

<%
String nam=request.getParameter("Name");
String ad=request.getParameter("Address");

String bdy=request.getParameter("Birthday");
String bmn=request.getParameter("Birthmonth");
String byr=request.getParameter("Birthyear");

////////////
int mint=0;
if(bmn.equals("January"))mint=1;
if(bmn.equals("February"))mint=2;
if(bmn.equals("March"))mint=3;
if(bmn.equals("April"))mint=4;
if(bmn.equals("May"))mint=5;
if(bmn.equals("June"))mint=6;
if(bmn.equals("July"))mint=7;
if(bmn.equals("August"))mint=8;
if(bmn.equals("September"))mint=9;
if(bmn.equals("October"))mint=10;
if(bmn.equals("November"))mint=11;
if(bmn.equals("December"))mint=12;


////////////
String bd=bdy+"/"+mint+"/"+byr ;
//out.print(bd);

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

else
{
out.println("Password Mismatch. Retype Password.");
%>
<%@ include file="NewUser.jsp" %>
<%
}

%>





<%
try
{
Statement st =con.createStatement();

String sql ="insertuser '"+nam+"','"+ad+"','"+bd+"','"+na+"','"+oc+"','"+ph+"','"+em+"','"+balc+"' ,'"+pas+"'" ;
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
