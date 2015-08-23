<html>
<head>
<title>show</title>

</head>

<body>
<%
String dist = request.getParameter("dist");
int km=Integer.parseInt(dist);
double mile =km/1.609344;
String units =request.getParameter("units");

if(units.equals("SI")){
%>
Diameter =<%= km%>km
<%
}
else{
%>
Diameter =<%= mile%>miles
<% }%>







</body>
</html>
