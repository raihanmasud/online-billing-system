function trim(inputString) {
   if (typeof inputString != "string") { return inputString; }
   var retValue = inputString;
   var ch = retValue.substring(0, 1);
   while (ch == " ") {
      retValue = retValue.substring(1, retValue.length);
      ch = retValue.substring(0, 1);
   }
   ch = retValue.substring(retValue.length-1, retValue.length);
   while (ch == " ") {
      retValue = retValue.substring(0, retValue.length-1);
      ch = retValue.substring(retValue.length-1, retValue.length);
   }
   while (retValue.indexOf("  ") != -1) {
      retValue = retValue.substring(0, retValue.indexOf("  ")) + retValue.substring(retValue.indexOf("  ")+1, retValue.length);
   }
   return retValue;
}

function validate_date(day,month,year)
{
	// since jan equals one and not zero, hence thirteen elements in the array.  
	var no_of_days_in_month = new Array(0,31,28,31,30,31,30,31,31,30,31,30,31)
	
	if (month >= 1 && month <= 12 && day >=  1 && day <= 31 && year >= 0)
	{
		//Handling february, special case. 
		if (month == 2)
		{
			if ( (year%4==0 && year%100 != 0) || year%400 == 0 )
				no_of_days_in_month[month]=29
		}

		if (day >= 1 && day <= no_of_days_in_month[month])
			return true;
		else
			return false;
	}
	else
		return false;

}

function PopSPEC(thisform,element1,element2) 
{	
	var docF=document.form1;
	
	if(thisform.value != "")
	{		
		var c,spec;
		var len_religion = docF.elements[element1].options.length;
		for(var m1=0;m1<len_religion;m1++) {
		if (docF.elements[element1].options[m1].selected == true) {
		c = docF.elements[element1].options[m1].value;
		}
		}
		docF.elements[element2].options.length = 0;

		var str      =c.split("|X|");
		var spec_val =str[1].split("#");
		for(var k=0;k<spec_val.length;k++) {
		var s = spec_val[k];
		if(s){
		var val=s.split("$");
		var opt = new Option();
		opt.text=val[1];
		opt.value=val[0];
		docF.elements[element2].options[docF.elements[element2].options.length] = opt;
		}}
	}

	return true;
}

function checkemail(emailadd)
{
	var result = false;
  	var theStr = new String(emailadd);
  	var index = theStr.indexOf("@");
  	if (index > 0)
  	{
    	var pindex = theStr.indexOf(".",index);
    	if ((pindex > index+1) && (theStr.length > pindex+2))
		result = true;
  	}
  		
  	return result;
}