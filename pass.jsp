<html>

<body>


<form name="form1" method="post" action="pass.jsp">

	<input type="text" name="Name">

<input type="submit" name="Submit" value="Sub">

</form>


<% 

String r=request.getParameter("Name");

String a="a";

String b="a1111";

//if(a.equals(rr))
//out.println("equal");
//else
//out.println("not");


//Double d=new Double(d1);


try{
int d1=Integer.parseInt(r);

out.print(d1);
//out.print(d1.isNaN());
}

catch(NumberFormatException n)
{
out.print(n);

}
%>





</body>

</html>