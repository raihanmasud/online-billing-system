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

String cnt="1";
// =new Integer();//=(Integer) session.getAttribute("count");

//count = parm.intValue();

session.setAttribute("count", cnt);
//out.print(session.getLastAccessedTime());
//out.print(count);
session.setMaxInactiveInterval(180);
//if(count==0)out.print("DATE HAS EXPIRED.");

//%>

<form name="register" method="post" action="insertuser.jsp" onSubmit="return validate();" >
  <pre><font color="#000099">	
  <b>	
		   To Create a new Account Holder please fill up the following informations.	
	</b>	</font>

<font color="#660000">

			Name	      	<input type="text" name="Name"><font color="#FF0000">(*)</font>
	      			
		    	Address         <textarea name="Address"></textarea><font color="#FF0000">(*)</font>
 
			Date of Birth   <select name="Birthday"><option>1</option><option>2</option><option>3</option><option>4</option><option>5</option><option>6</option><option>7</option><option>8</option><option>9</option><option>10</option><option>11</option><option>12</option><option>13</option><option>14</option><option>15</option><option>16</option><option>17</option><option>18</option><option>19</option><option>20</option><option>21</option><option>22</option><option>23</option><option>23</option><option>25</option><option>26</option><option>27</option><option>28</option><option>29</option><option>30</option><option>31</option></select>	<select name="Birthmonth"><option>January</option><option>February</option><option>March</option><option>April</option><option>May</option><option>June</option><option>July</option><option>August</option><option>September</option><option>October</option><option>November</option><option>December</option></select>	<select name="Birthyear"><option>1970</option><option>1971</option><option>1972</option><option>1973</option><option>1974</option><option>1975</option><option>1976</option><option>1977</option><option>1978</option><option>1979</option><option>1980</option><option>1981</option><option>1982</option><option>1983</option><option>1984</option><option>1985</option><option>1986</option><option>1987</option><option>1988</option><option>1989</option><option>1990</option></select><font color="#FF0000">(*)</font>

			Nationality     <select name="Nationality"><option>Bangladeshi</option><option>Foreigner</option></select>

			Occupation      <select name="Occupation"><option>Student</option><option>Business</option><option>Govt. Employee</option><option>N.G.O</option><option>Other</option></select>

			Phone           <input type="text" name="Phone"></font><font color="#FF0000">(*)</font><font color="#660000">

			E-mail          <input name="Email" type="text" ><font color="#FF0000">(*)</font>

			Initial Balance <input type="text" name="Balance"><font color="#FF0000">(*)</font>

			Password 	<input type="password" name="Password"><font color="#FF0000">(*)</font>

			Retype Password <input type="password" name="Repassword"><font color="#FF0000">(*)</font>
</font>
					<input type="submit" name="Submit2" value="Submit"> <input name="Reset" type="reset" id="Submit" value="Reset">      		
    	 

</p></pre>
</form>





</body>
</html>
