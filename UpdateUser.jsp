<%@ page import="java.sql.*"%>
<html>
<script language="JavaScript" src="/profile.js"></script> 
<script>
function validate()
{
var errors="";
if(trim(register.Name.value)=="")
  errors+="...............Name required\n";
if(trim(register.Address.value)=="")
errors+="...............Address required\n";

if(trim(register.Balance.value)=="")
 errors+="...............Balance required\n";


if(trim(register.Phone.value)=="")
errors+="...............Phone required\n";
if(trim(register.Email.value)=="")
errors+="...............Email Address required\n";
if(trim(register.Password.value)=="")
 errors+="...............Password required\n";
if(trim(register.Repassword.value)=="")
 errors+="...............Retype your password \n";
if(register.Password.value!=register.Repassword.value)
errors+="...............Password do not match\n";

var iStr=register.Password.value;
if(errors)
{
 alert("The following required\n"+errors);
 return false;
}
if(!checkemail(register.Email.value))
{
alert("Your Email is invalid");
return false;
}


if(!isNaN(register.Name.value)||register.Name.value.length<3 )
{
alert("Digiits are not allowed for Name & \n must be at least 3 Charaters.");
return false;
}





if(isNaN(register.Phone.value)||register.Phone.value.length<9 )
{
alert("Enter a Valid Phone Number.");
return false;
}

if(isNaN(register.Balance.value)||register.Balance.value.length<4)
{
alert("Enter a Valid Balance Amount .");
return false;
}


if(iStr.length < 5)
{
alert("Your Passwords must contain minimum of 5 characters");
return false;
}




return  true;
}
</script>






<head>
<title>NewUser</title>
</head>

<body>

<%

String ach= request.getParameter("Holder");
String acno= request.getParameter("Accno");


%>
<%

String ucnt="1";
// =new Integer();//=(Integer) session.getAttribute("count");

//count = parm.intValue();

session.setAttribute("ucount", ucnt);
//out.print(session.getLastAccessedTime());
//out.print(count);
session.setMaxInactiveInterval(180);
//if(count==0)out.print("DATE HAS EXPIRED.");

//%>

<%@ include file="connection.jsp"%>
<%

Statement stu = con.createStatement();
ResultSet rsu = stu.executeQuery("select * from newuser where name='"+ach+"' and accno='"+acno+"'");


%>
<%

while(rsu.next())
{
String name=	rsu.getString(1);
String add=		rsu.getString(2);
String bday=	rsu.getString(3);
String nalty=	rsu.getString(4);
String occu=	rsu.getString(5);
String ph=		rsu.getString(6);
String eml=		rsu.getString(7);
String blnc=	rsu.getString(8);
String pass=	rsu.getString(9);
String repass=	rsu.getString(10);







%>
<form name="register" method="post" action="Updateinsert.jsp" onSubmit="return validate();" >
  <pre><font color="#000099">	
  <b>	
		   To Create a new Account Holder please fill up the following informations.	
	</b>	</font>
		<input type="hidden" name="Accno" value="<%=acno%>">
<font color="#660000">

			Name	      	<input type="text" name="Name" value="<%=name%>" size="27"><font color="#FF0000">(*)</font>
	      			
		    	Address         <textarea name="Address" value="asd" rows="2" cols="21"></textarea><font color="#FF0000">(*)</font>
 
			Date of Birth   <input type="text" name="Birthday" value="<%=bday%>" size="28"><font color="#FF0000">(*)</font>

			Nationality     <input type="text" name="Nationality" value="<%=nalty%>" size="28">

			Occupation      <input type="text" name="Occupation" value="<%=occu%>" size="28">

			Phone           <input type="text" name="Phone" value="<%=ph%>" size="28"></font><font color="#FF0000">(*)</font><font color="#660000">

			E-mail          <input name="Email" type="text" value="<%=eml%>" size="28" ><font color="#FF0000">(*)</font>

			Balance 	<input type="text" name="Balance" value="<%=blnc%>" size="28"><font color="#FF0000">(*)</font>

			Password 	<input type="password" name="Password" size="28" ><font color="#FF0000">(*)</font>

			Retype Password <input type="password" name="Repassword" size="28" ><font color="#FF0000">(*)</font>
</font>
					<input type="submit" name="Submit2" value="Submit"> <input name="Reset" type="reset" id="Submit" value="Reset">      		
    	 

</p></pre>
  <%
}
%>
</form>





</body>
</html>