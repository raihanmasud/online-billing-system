// Generated by JRun, do not edit


import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import javax.servlet.jsp.tagext.*;
import allaire.jrun.jsp.JRunJSPStaticHelpers;



import java.sql.*;public class jrun__viewbill2ejspd extends allaire.jrun.jsp.HttpJSPServlet implements allaire.jrun.jsp.JRunJspPage 
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


    out.print("\r\n<html>\r\n<head>\r\n<title>View Bill</title>\r\n\r\n\r\n</head>\r\n\r\n<body>\r\n");

String com=request.getParameter("Company");
String id=request.getParameter("Id");
String nm=request.getParameter("Name");

//out.print(com);

    out.print("\r\n");

out.print("\r\n");

Class.forName("allaire.jrun.jdbc.JRunDriver");
Connection con=DriverManager.getConnection("jdbc:jrun:sqlserver://127.0.0.1:1433;databaseName=rai","sa","");

//Connection con=DriverManager.getConnection("jdbc:jrun:sqlserver://127.0.0.1:1433;databaseName=rai;user=sa;password=raihan");


    out.print("\r\n\r\n\r\n\r\n\r\n");

out.print("\r\n");

Statement sts =con.createStatement();
	String sqls ="select * from "+com+" where  name= '"+nm+"' and id='"+id+"' " ;
	
	
ResultSet rss=sts.executeQuery(sqls);   
//out.print(rss.next());


    out.print("\r\n<pre>\r\n<table align=\"center\" border=\"2\" bordercolor=\"#000099\">\r\n<tr><td>Customer ID</td><td>");

out.print(id);
out.print("</td></tr>\r\n<tr><td>Name</td><td>");

out.print(nm);
out.print("</td></tr>\r\n\r\n</table>\r\n\r\n\r\n\r\n\r\n\r\n\r\n</pre>\r\n\r\n<table align=\"center\" border=\"2\" width=\"500\">\r\n<tr><td  width=\"75\">Month</td><td width=\"75\">Year</td><td width=\"75\">Total Bill</td><td width=\"75\">Status</td></tr>\r\n</table>\r\n<table align=\"center\" border=\"2\"  width=\"500\">\r\n");

while(rss.next())
	{
	
	String tid=rss.getString(1);
	String tnm=rss.getString(2);
	String tbl=rss.getString(3);
	String tmn=rss.getString(4);
	String tyr=rss.getString(5);
	String tsts=rss.getString(6);
	int total=Integer.parseInt(tbl);

    out.print("\r\n");

String lstmon;



    out.print("\r\n\r\n\r\n\r\n<tr>\r\n<td width=\"75\">");

out.print(tmn);
out.print("</td>\r\n<td width=\"75\">");

out.print(tyr);
out.print("</td><td width=\"75\">");

out.print(tbl);
out.print("</td><td width=\"75\">");

out.print(tsts);
out.print("</td>\r\n</tr>\r\n\r\n\r\n");

}

    out.print("\r\n</table>\r\n\r\n</body>\r\n</html>\r\n");

      
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
        return "/viewbill.jsp";
    }
}
