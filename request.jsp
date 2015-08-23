<%@ page  import="java.sql.*" %>
<%
 String colors[] ={"E0E0E0","F0F0F0"};  

 String [][] TABS ={
{
"HD",
"Headers"
,"ShowRequestHeaders.jsp"
},

{
"PM",
"Parameters"
,"ShowParameters.jsp"
},
{
"SR",
"ServletRequest Methods"
,"ShowServletRequestMethodValues.jsp"
}
};
%>
<html>
<head>
<title>REQUEST</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>

<h2 SHOW REQUEST </h2>
<form>
<%
String which = request.getParameter("which");
if(which == null)which =TABS[0][0];
String jspToRun =null;

for(int i=0;i<TABS.length;i++)
{
String tabCode = TABS[i][0];
String tabLabel = TABS[i][1];
String tabJsp = TABS[i][2];
String CHECKED ="";

if(which.equals(tabCode)){
CHECKED="CHECKED";
jspToRun =tabJsp;
 
}
%>

<input name=" which" type="radio" value="<%= tabCode %>" 
			<%= CHECKED %> onClick=" this.form.submit()">
			<%= tabLabel%>
			
			<% } %>
			
			
<jsp:include page="<%= jspToRun%>" flush="true" />


 

}





%>



</form>

</body>
</html>
