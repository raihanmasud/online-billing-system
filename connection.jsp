
<%
Class.forName("allaire.jrun.jdbc.JRunDriver");
Connection con=DriverManager.getConnection("jdbc:jrun:sqlserver://127.0.0.1:1433;databaseName=rai","sa","");

//Connection con=DriverManager.getConnection("jdbc:jrun:sqlserver://127.0.0.1:1433;databaseName=rai;user=sa;password=raihan");

%>




