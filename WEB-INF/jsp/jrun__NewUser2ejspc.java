// Generated by JRun, do not edit


import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import javax.servlet.jsp.tagext.*;
import allaire.jrun.jsp.JRunJSPStaticHelpers;


public class jrun__NewUser2ejspc extends allaire.jrun.jsp.HttpJSPServlet implements allaire.jrun.jsp.JRunJspPage 
{  
    private ServletConfig config;
    private ServletContext application;   
    private Object page = this;
    private JspFactory __jspFactory = JspFactory.getDefaultFactory();
    private allaire.jrun.jsp.PageContextPool __pageContextPool;

    public void _jspService(HttpServletRequest request, HttpServletResponse response) 
         throws ServletException, java.io.IOException
    {
        if(config == null) {
            config = getServletConfig();
            application = config.getServletContext(); 
        }
        if(__pageContextPool == null) {
            __pageContextPool = new allaire.jrun.jsp.PageContextPool(application);
        }
        response.setContentType("text/html; charset=ISO-8859-1");
        PageContext pageContext = __jspFactory.getPageContext(this, request, response,  null, true, 8192, true);
        JspWriter out = pageContext.getOut();
        HttpSession session = pageContext.getSession();




        try {


    out.print("<html>\r\n<script language=\"JavaScript\" src=\"/profile.js\"></script> \r\n<script>\r\nfunction validate()\r\n{\r\nvar errors=\"\";\r\nif(trim(register.Name.value)==\"\")\r\n  errors+=\"...............Name required\\n\";\r\nif(trim(register.Address.value)==\"\")\r\nerrors+=\"...............Address required\\n\";\r\n\r\nif(trim(register.Balance.value)==\"\")\r\n errors+=\"...............Balance required\\n\";\r\n\r\n\r\nif(trim(register.Phone.value)==\"\")\r\nerrors+=\"...............Phone required\\n\";\r\nif(trim(register.Email.value)==\"\")\r\nerrors+=\"...............Email Address required\\n\";\r\nif(trim(register.Password.value)==\"\")\r\n errors+=\"...............Password required\\n\";\r\nif(trim(register.Repassword.value)==\"\")\r\n errors+=\"...............Retype your password \\n\";\r\nif(register.Password.value!=register.Repassword.value)\r\nerrors+=\"...............Password do not match\\n\";\r\n\r\nvar iStr=register.Password.value;\r\nif(errors)\r\n{\r\n alert(\"The following required\\n\"+errors);\r\n return false;\r\n}\r\nif(!checkemail(register.Email.value))\r\n{\r\nalert(\"Your Email is invalid\");\r\nreturn false;\r\n}\r\n\r\n\r\nif(!isNaN(register.Name.value)||register.Name.value.length<3 )\r\n{\r\nalert(\"Digiits are not allowed for Name & \\n must be at least 3 Charaters.\");\r\nreturn false;\r\n}\r\n\r\n\r\n\r\n\r\n\r\nif(isNaN(register.Phone.value)||register.Phone.value.length<9 )\r\n{\r\nalert(\"Enter a Valid Phone Number.\");\r\nreturn false;\r\n}\r\n\r\nif(isNaN(register.Balance.value)||register.Balance.value.length<4)\r\n{\r\nalert(\"Enter a Valid Balance Amount .\");\r\nreturn false;\r\n}\r\n\r\n\r\nif(iStr.length < 5)\r\n{\r\nalert(\"Your Passwords must contain minimum of 5 characters\");\r\nreturn false;\r\n}\r\n\r\n\r\n\r\n\r\nreturn  true;\r\n}\r\n</script>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<head>\r\n<title>NewUser</title>\r\n</head>\r\n\r\n<body>\r\n\r\n\r\n");

String cnt="1";
// =new Integer();//=(Integer) session.getAttribute("count");

//count = parm.intValue();

session.setAttribute("count", cnt);
//out.print(session.getLastAccessedTime());
//out.print(count);
session.setMaxInactiveInterval(180);
//if(count==0)out.print("DATE HAS EXPIRED.");

//
    out.print("\r\n\r\n<form name=\"register\" method=\"post\" action=\"insertuser.jsp\" onSubmit=\"return validate();\" >\r\n  <pre><font color=\"#000099\">\t\r\n  <b>\t\r\n\t\t   To Create a new Account Holder please fill up the following informations.\t\r\n\t</b>\t</font>\r\n\r\n<font color=\"#660000\">\r\n\r\n\t\t\tName\t      \t<input type=\"text\" name=\"Name\"><font color=\"#FF0000\">(*)</font>\r\n\t      \t\t\t\r\n\t\t    \tAddress         <textarea name=\"Address\"></textarea><font color=\"#FF0000\">(*)</font>\r\n \r\n\t\t\tDate of Birth   <select name=\"Birthday\"><option>1</option><option>2</option><option>3</option><option>4</option><option>5</option><option>6</option><option>7</option><option>8</option><option>9</option><option>10</option><option>11</option><option>12</option><option>13</option><option>14</option><option>15</option><option>16</option><option>17</option><option>18</option><option>19</option><option>20</option><option>21</option><option>22</option><option>23</option><option>23</option><option>25</option><option>26</option><option>27</option><option>28</option><option>29</option><option>30</option><option>31</option></select>\t<select name=\"Birthmonth\"><option>January</option><option>February</option><option>March</option><option>April</option><option>May</option><option>June</option><option>July</option><option>August</option><option>September</option><option>October</option><option>November</option><option>December</option></select>\t<select name=\"Birthyear\"><option>1970</option><option>1971</option><option>1972</option><option>1973</option><option>1974</option><option>1975</option><option>1976</option><option>1977</option><option>1978</option><option>1979</option><option>1980</option><option>1981</option><option>1982</option><option>1983</option><option>1984</option><option>1985</option><option>1986</option><option>1987</option><option>1988</option><option>1989</option><option>1990</option></select><font color=\"#FF0000\">(*)</font>\r\n\r\n\t\t\tNationality     <select name=\"Nationality\"><option>Bangladeshi</option><option>Foreigner</option></select>\r\n\r\n\t\t\tOccupation      <select name=\"Occupation\"><option>Student</option><option>Business</option><option>Govt. Employee</option><option>N.G.O</option><option>Other</option></select>\r\n\r\n\t\t\tPhone           <input type=\"text\" name=\"Phone\"></font><font color=\"#FF0000\">(*)</font><font color=\"#660000\">\r\n\r\n\t\t\tE-mail          <input name=\"Email\" type=\"text\" ><font color=\"#FF0000\">(*)</font>\r\n\r\n\t\t\tInitial Balance <input type=\"text\" name=\"Balance\"><font color=\"#FF0000\">(*)</font>\r\n\r\n\t\t\tPassword \t<input type=\"password\" name=\"Password\"><font color=\"#FF0000\">(*)</font>\r\n\r\n\t\t\tRetype Password <input type=\"password\" name=\"Repassword\"><font color=\"#FF0000\">(*)</font>\r\n</font>\r\n\t\t\t\t\t<input type=\"submit\" name=\"Submit2\" value=\"Submit\"> <input name=\"Reset\" type=\"reset\" id=\"Submit\" value=\"Reset\">      \t\t\r\n    \t \r\n\r\n</p></pre>\r\n</form>\r\n\r\n\r\n\r\n\r\n\r\n</body>\r\n</html>\r\n");

      
        } catch(Throwable t) {
            if(t instanceof ServletException)
                throw (ServletException) t;
            if(t instanceof java.io.IOException)
                throw (java.io.IOException) t;
            if(t instanceof RuntimeException)
                throw (RuntimeException) t;
            throw JRunJSPStaticHelpers.handleException(t, pageContext);
    
        } finally { 
            __jspFactory.releasePageContext(pageContext);
        }
    }



  

    public allaire.jrun.jsp.PageContextPool __getPageContextPool()
    {
        return __pageContextPool;
    }
  
    public void __setPageContextPool(allaire.jrun.jsp.PageContextPool p)
    {
        __pageContextPool = p;
    }

    public String __getPagePath()
    {
        return "/NewUser.jsp";
    }
}
