<%@ page  import="java.sql.*"  %>
<%String com =request.getParameter("Company");%>
<form name="form1" method="post" action="post.jsp">
  <pre>												


					Customer ID			<input type="text" name="Id">
						
					Name				<input type="text" name="Name" >
	
					Bill				<input type="text" name="Bill">
					
							<input type="hidden" name="Company" value="<%=com%>">		<input type="hidden" name="Status" value="due">

					Pay Month 	  	<select name="Month"><option>January</option><option>February</option><option>March</option><option>April</option><option>May</option><option>June</option><option>July</option><option>August</option><option>September</option><option>October</option><option>November</option><option>December</option></select>  Year <select name="Year"><option>2005</option><option>2006</option></select>
  				
	
       	  								    <input type="submit" name="Submit" value="Submit"><input type="reset" name="Submit2" value="Reset">
</pre>
</form>


