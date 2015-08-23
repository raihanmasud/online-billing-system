<%//@ page session="true" %>
<html>
<body>
<h1>COOKIE BASED PAGE COUNTER</h1>
<% 
int count =0;
Integer parm =(Integer) session.getAttribute("count");
out.print(parm);
if(parm!= null)
{
	count = parm.intValue();
	
}
else
out.print("Page Expired.......");
session.setAttribute("count", new Integer (count+1));
session.setMaxInactiveInterval(3);
if(count==0){
%>
FIRST TIME ACCESS.
<%}

else if(count ==1){
%>
SECOND TIME ACCESS.
<%}
else {
%>
YOU ACCSSED <%= count%> TIMES.
<% }%>
<p>Click <a href='counter.jsp'>here.</a> 
 to visit the page again.            
 </p>
</body>
</html>
