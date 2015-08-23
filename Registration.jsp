<!--$sitebuilder version="2.0.3" md5="aa0f7bee65116cd64d44fefa026972c6"$-->
<html>
<script language="JavaScript" src="/profile.js"></script> 
<script>
function validate()
{
var errors="";
if(trim(register.name.value)=="")
  errors+="...............Name required\n";
if(trim(register.address.value)=="")
errors+="...............Address required\n";
if(trim(register.phone.value)=="")
 errors+="...............Phone required\n";
if(trim(register.email.value)=="")
 errors+="...............Email Address required\n";
if(trim(register.password.value)=="")
 errors+="...............Password required\n";
if(trim(register.re_pass.value)=="")
 errors+="...............Retype your password \n";
if(register.password.value!=register.re_pass.value)
 errors+="...............Password do not match\n";

var iStr=register.password.value;
if(errors)
{
 alert("The following required\n"+errors);
 return false;
}
if(!checkemail(register.email.value))
{
alert("Your Email is invalid");
return false;
}

if(iStr.length < 6)
{
alert("Your Passwords must contain minimum of 6 characters");
return false;
}
return  true;
}
</script>


  <body  >

<FORM name="register" method="post"  action="" onsubmit="return validate();" >

    
      
  <table border="0" cellspacing="0" cellpadding="0" width="674" height="462" style="border-collapse: collapse" bordercolor="#111111">
    
    <tr> 
      <td width="1" height="39"></td>
      <td width="10">&nbsp;</td>
      <td width="1"> <img src="sitebuilder/images/c.gif" height="1" width="1"> 
      </td>
      <td width="140"><!--DWLayoutEmptyCell-->&nbsp; </td>
      <td width="23"> <img src="sitebuilder/images/c.gif" height="1" width="23"> 
      </td>
      <td width="1"> <img src="sitebuilder/images/c.gif" height="1" width="1"> 
      </td>
      <td width="1">&nbsp;</td>
      <td width="2">&nbsp;</td>
      <td width="1">&nbsp;</td>
      <td width="2">&nbsp;</td>
      <td width="1">&nbsp;</td>
      <td width="1">&nbsp;</td>
      <td width="257">&nbsp;</td>
      <td width="1">&nbsp;</td>
      <td width="7">&nbsp;</td>
      <td width="18">&nbsp;</td>
      <td width="4">&nbsp;</td>
      <td width="9">&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr> 
      <td nowrap height="45" colspan="16" align="center" valign="top" bgcolor="#9999FF"><p class="text"><b><font face="Century Gothic" size="4"><span style="font-size:20px;line-height:26px;">Registration 
          Form</span></font></b><span style="font-size:14px;line-height:17px;"><br>
          </span></p></td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr> 
      <td height="24" colspan="16"></td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr> 
      <td width="1" height="38"></td>
      <td nowrap colspan="14" align="center" valign="top"><p class="text"><b><font face="Century Gothic" color="#FF0066" size="4"><span style="font-size:20px;line-height:26px;">You 
          must fill all the field</span></font></b><span style="font-size:14px;line-height:17px;"><br>
          </span></p></td>
      <td></td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr> 
      <td height="103" colspan="16"></td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr> 
      <td width="184" height="2" colspan="12"></td>
      <td colspan="2" rowspan="3" valign="top"><input name="name" value="" size="35"></td>
      <td colspan="2"></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
    <tr> 
      <td width="12" height="17" colspan="3"></td>
      <td nowrap colspan="6" align="center" valign="top"><p class="text"><b><span style="font-size:14px;line-height:17px;">Name</span></b><span style="font-size:14px;line-height:17px;"><br>
          </span></p></td>
      <td width="4" colspan="3"></td>
      <td colspan="2"></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
    <tr> 
      <td width="184" height="3" colspan="12"></td>
      <td colspan="2"></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
    <tr> 
      <td height="10" colspan="16"></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
    <tr> 
      <td width="184" height="1" colspan="12"></td>
      <td colspan="2" rowspan="3" valign="top"><input name="address" value="" size="35"></td>
      <td colspan="2"></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
    <tr> 
      <td width="12" height="17" colspan="3"></td>
      <td nowrap colspan="5" align="center" valign="top"><p class="text"><b><span style="font-size:14px;line-height:17px;">Address</span></b><span style="font-size:14px;line-height:17px;"><br>
          </span></p></td>
      <td width="5" colspan="4"></td>
      <td colspan="2"></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
    <tr> 
      <td width="184" height="4" colspan="12"></td>
      <td colspan="2"></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
    <tr> 
      <td height="5" colspan="16"></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
    <tr> 
      <td width="183" height="2" colspan="11"></td>
      <td colspan="2" rowspan="3" valign="top"><input name="phone" value="" size="35"></td>
      <td colspan="3"></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
    <tr> 
      <td width="11" height="17" colspan="2"></td>
      <td nowrap colspan="3" align="center" valign="top"><p class="text"><b><span style="font-size:14px;line-height:17px;">Phone/Mobile</span></b><span style="font-size:14px;line-height:17px;"><br>
          </span></p></td>
      <td width="8" colspan="6"></td>
      <td colspan="3"></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
    <tr> 
      <td width="183" height="3" colspan="11"></td>
      <td colspan="3"></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
    <tr> 
      <td height="9" colspan="16"></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
    <tr> 
      <td width="183" height="3" colspan="11"></td>
      <td colspan="2" rowspan="3" valign="top"><input name="email" value="" size="35"></td>
      <td colspan="3"></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
    <tr> 
      <td width="11" height="17" colspan="2"></td>
      <td nowrap colspan="5" align="center" valign="top"><p class="text"><b><span style="font-size:14px;line-height:17px;">Email</span></b><span style="font-size:14px;line-height:17px;"><br>
          </span></p></td>
      <td width="6" colspan="4"></td>
      <td colspan="3"></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
    <tr> 
      <td width="183" height="2" colspan="11"></td>
      <td colspan="3"></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
    <tr> 
      <td height="8" colspan="16"></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
    <tr> 
      <td width="184" height="2" colspan="12"></td>
      <td colspan="2" rowspan="3" valign="top"><input type="password" name="password" value="" size="35"></td>
      <td colspan="2"></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
    <tr> 
      <td width="12" height="17" colspan="3"></td>
      <td nowrap colspan="3" align="center" valign="top"><p class="text"><b><span style="font-size:14px;line-height:17px;">Password</span></b><span style="font-size:14px;line-height:17px;"><br>
          </span></p></td>
      <td width="8" colspan="6"></td>
      <td colspan="2"></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
    <tr> 
      <td width="184" height="3" colspan="12"></td>
      <td colspan="2"></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
    <tr> 
      <td height="9" colspan="16"></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
    <tr> 
      <td width="184" height="2" colspan="12"></td>
      <td colspan="2" rowspan="2" valign="top"><input type="password" name="re_pass" value="" size="35"> 
      </td>
      <td colspan="2"></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
    <tr> 
      <td width="12" height="20" colspan="3"></td>
      <td nowrap colspan="7" align="center" valign="top"><p class="text"><b><span style="font-size:14px;line-height:17px;">Re 
          Type Password</span></b><span style="font-size:14px;line-height:17px;"><br>
          </span></p></td>
      <td width="2" colspan="2"></td>
      <td colspan="2"></td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr> 
      <td height="57" colspan="16"></td>
      <td></td>
      <td valign="top"><p>&nbsp;</p>
        <p>&nbsp; </p></td>
      <td width="21"></td>
      <br>
      <td valign="top"><input type="submit" name="Submit" value="Continue"> <input name="reset" type="reset" value="reset"> 
      </td>
    </tr>
  </table>






      </center>
    </div>






</form>
  </body>
</html>