<%@ page import="java.util.*,java.text.DateFormat,java.sql.Connection,java.sql.Statement,java.sql.SQLException,java.sql.DriverManager ,java.sql.ResultSet "  %>

<html>
<head>
<title>Electric Bill</title>
</head>
<body background="frame.bmp">


<p>			
			<font color="#330066" size="+2">
  </p>

<%
//Integer parm =(Integer) session.getAttribute("count");
//if(parm!= null)
//count = parm.intValue();
//session.setAttribute("count", new Integer (count+1));
//out.print(session.getLastAccessedTime());

//session.setMaxInactiveInterval(3);






%>




<%

Date today= new Date();
Locale lc=Locale.US;
DateFormat fmt= DateFormat.getDateInstance(DateFormat.SHORT,Locale.UK);
String dt=fmt.format(today);
GregorianCalendar gtoday=new GregorianCalendar(); 
int ty=gtoday.get(gtoday.YEAR);

int tm=gtoday.get(gtoday.MONTH)+1;

int td=gtoday.get(gtoday.DATE);
//out.print(td+"   ");
//out.println(tm+"     ");
//out.println(ty);
%>
<%
String nm=request.getParameter("name");
String id=request.getParameter("id");
String blam=request.getParameter("bill");
//String accno=request.getParameter("accno");
String mon=request.getParameter("Month");
String yr=request.getParameter("year");
String pdt=request.getParameter("pdate");
String bltyp=request.getParameter("Billtype");
%>

<%
String acnt=(String)session.getAttribute("acount");
//String usr=(String)session.getAttribute("user");

//out.print(acnt+"  "+usr);
%>
<%
/////date calculations......
int mint=0;
if(mon.equals("January"))mint=1;
if(mon.equals("February"))mint=2;
if(mon.equals("March"))mint=3;
if(mon.equals("April"))mint=4;
if(mon.equals("May"))mint=5;
if(mon.equals("June"))mint=6;
if(mon.equals("July"))mint=7;
if(mon.equals("August"))mint=8;
if(mon.equals("September"))mint=9;
if(mon.equals("October"))mint=10;
if(mon.equals("November"))mint=11;
if(mon.equals("December"))mint=12;

///month finished.......
int appday,appmon,appyr;

appyr=Integer.parseInt(yr);
appday=5;
if(mint==12)
{
appmon=1;
appyr+=1;
}
else
appmon=mint+1;



int bigy=0;
int bigm=0;
int bigd=0;
if(ty>appyr)bigy=1;
//out.print("//"+appday+"  "+appmon+"   "+appyr);
if(ty==appyr) 
 {
 if(tm-appmon<0)bigm=-3;
 if(tm-appmon==1)bigm=1;
 if(tm-appmon==2)bigm=2;
 if(tm-appmon>2)bigm=3;
 
 }

if(ty==appyr&& tm-appmon<3)
{
if(td>5)
{
bigd=1;
}
}
int due=0;
int possible=1;
if (bigy>0||bigm==3)possible=0;
if(bigy==0&& bigm==0&&bigd==1)due=20;
if(bigy==0&& bigm==1&&bigd==0)due=20;
if(bigy==0&& bigm==1&&bigd==1)due=40;
if(bigy==0&& bigm==2&&bigd==0)due=40;
if(bigy==0&& bigm==2&&bigd==1)possible=0;
//out.print(" // "+bigd+"  "+bigm+"   "+bigy);
//out.print("\nd="+due+"  p= "+possible);
%>
<%
int ltfee=0;
StringBuffer  tbl= new StringBuffer();
//out.print(total.toString());
%>
<%
String blcom="ecompany";
String com="Electric";

//out.print(bltyp);
if(bltyp.equals("electric_t"))
{
		blcom="ecompany";
		com="Electric";
}
if(bltyp.equals("water_t"))
	{
	blcom="wcompany";
	com="Water";
	}
if(bltyp.equals("gas_t"))
{
blcom="gcompany";
com="Gas";
}

%>
<%@ include file="connection.jsp"%>
<%
if(possible==1){

	
	try{
		Statement st=con.createStatement();
		Statement stb=con.createStatement();
		Statement stc=con.createStatement();
		Statement sts=con.createStatement();
		Statement stm=con.createStatement();
		boolean fg=false;
		
		ResultSet rcm=stm.executeQuery("select bill from "+blcom+" where name='"+nm+"' and mon='"+mon+"' and id='"+id+"' and yr='"+yr+"' and  status='due' "); 
		while(rcm.next())
		{
		String bill=rcm.getString("bill");
		
		int bl=Integer.parseInt(bill);
		int total=due+bl;
		

		
		
		if(bltyp!=null)
		{
		ResultSet rcs	= sts.executeQuery("select balance from newuser  where  accno='"+acnt+"'");
		
		
		while(rcs.next()){
		 String bal=rcs.getString("balance");
		 int intbl =Integer.parseInt(bal);
		 if(intbl>=total)
		 fg=true;
		}

		if(fg){
		stc.executeUpdate("update newuser set balance=balance-"+total+" where  accno='"+acnt+"' and balance>="+total+"");
		
		st.executeUpdate("insert into "+bltyp+" values('"+id+"','"+nm+"','"+tbl+"','"+mon+"','"+yr+"','"+pdt+"')");
		stb.executeUpdate("update "+blcom+" set status='paid' where name='"+nm+"' and mon='"+mon+"'");
		}
		
		}
	//rcm close

%>
<pre>
		
				   <%  

				   if(fg){
					out.print(com+" Bill for "+mon+" ,"+yr);		
%>
<font color="#660033" size="+1">
				
				
				<%
		out.println(" Name : "+nm+"           Customer ID : "+id);		

%>

			<table align="center" border="1" bordercolor="#660099" width="400" >
<tr><td align="center">Current Month Bill</td><td align="center"><%=bill%></td></tr>
<tr><td align="center">Late Fee </td><td align="center"><%=due%></td></tr>
<tr><td align="center" >Total   </td><td align="center"><%=total%></td></tr>
</table>
					<%
out.print("Last Pay Date :  "+appday+"/"+appmon+"/"+appyr); 
%>






				    <%out.print("Date  :"+dt);%>		<%out.print("-----------");%>
							    	<%out.print(" Signature");%>
					</font><img src="paid.GIF" width="115" height="60">
					
</pre>
		<%
		}
		
		else
		out.print("You Don't Have Enough Money on \n					your Bank Account to pay the bill.");
		
		}
	
	
	}//rcm while close
		
	catch(SQLException se)
	{
	out.print(se);
	}
}

if(possible==0)
{
%>
<pre>

			
			
					
					
					
					
					
					
					<%
out.print("The Utilty service is not availabe \n \t\t\t\tfor you for not paying the bill  for three \n\t\t\t\t or more months.Contact the authorities. ");
}


%>
</pre>
</body>
</html>