<html>
<head>
<title>get</title>
</head>

<body>


<% int distance =12756 ;%>
<h4> SI----------</h4>

<jsp:include page="show.jsp" flush="true">
<jsp:param name="dist" value="<%= distance%>" />
<jsp:param name="units" value="SI" />
 </jsp:include>

<h4> US----------</h4>
<jsp:include page="show.jsp" flush="true">
<jsp:param name="dist" value="<%= distance%>" />
<jsp:param name="units" value="US" />
 </jsp:include>


</body>
</html>
