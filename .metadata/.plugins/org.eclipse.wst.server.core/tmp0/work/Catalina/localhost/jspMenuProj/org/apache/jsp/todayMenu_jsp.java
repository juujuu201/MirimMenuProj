/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.22
 * Generated at: 2019-09-21 12:51:37 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import menu.db.connection.DBConnection;

public final class todayMenu_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("java.sql");
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("menu.db.connection.DBConnection");
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP들은 오직 GET, POST 또는 HEAD 메소드만을 허용합니다. Jasper는 OPTIONS 메소드 또한 허용합니다.");
        return;
      }
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=utf-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n");
      out.write("  <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css\">\r\n");
      out.write("  <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js\"></script>\r\n");
      out.write("  <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js\"></script>\r\n");
      out.write("<title>미급알 : 오늘의 메뉴</title>\r\n");
      out.write("<!--\r\n");
      out.write("<link rel=\"shortcut icon\" href=\"img/logo.png\">\r\n");
      out.write("<link rel=\"apple-touch-icon\" href=\"img/logo_apple.png\">\r\n");
      out.write("-->\r\n");
      out.write("<link rel=\"stylesheet\" href=\"css/index.css\">\r\n");
      out.write("<link href=\"https://fonts.googleapis.com/css?family=Jua&display=swap\" rel=\"stylesheet\">\r\n");
      out.write("\r\n");
      out.write("<style>\r\n");
      out.write(".thumbnail{\r\n");
      out.write("\twidth:200px;\r\n");
      out.write("\theight:300px;\r\n");
      out.write("}\r\n");
      out.write(".link{\r\n");
      out.write("\tcolor:#311b1b;\r\n");
      out.write("}\r\n");
      out.write(".link:hover{\r\n");
      out.write("\tcolor:#ed6853;\r\n");
      out.write("}\r\n");
      out.write("b:hover{\r\n");
      out.write("\tcolor:#ed6853;\r\n");
      out.write("}\r\n");
      out.write("a:hover{\r\n");
      out.write("\ttext-decoration:none;\r\n");
      out.write("}\r\n");
      out.write("</style>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "top.jsp", out, false);
      out.write("<p>\r\n");
      out.write("<p></p>\r\n");
      out.write("<table id=\"whole\">\r\n");
      out.write("\t\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t\t<td>\r\n");
      out.write("\t\t\t<div id=\"box\" align=\"center\">\r\n");
      out.write("\t\t\t\t<p></p>\r\n");
      out.write("\t    \t\t<h1>오늘의 메뉴</h1>\r\n");
      out.write("\t    \t\t<p></p>\r\n");
      out.write("\t\t\t\t");

					//db연결
					Connection conn=null;
					PreparedStatement pstmt=null;
					ResultSet rs=null;
					
					String sql="select menu_date, mtype, REPLACE(menu,' ','\r') as menu from schoolmealtbl where menu_date=curdate()";
					int count=1;
					
					try{
						conn=DBConnection.getCon();
						pstmt=conn.prepareStatement(sql);
						rs=pstmt.executeQuery();
						
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t");

								while(rs.next()){
									if(count%3==1){
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<table width=\"80%\" align=\"center\" id=\"books\" border=1 cellspacing=0 cellpadding=0>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<tr class=\"menu\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<td colspan=5 align=\"center\" style=\"padding:2%;\">");
      out.print(rs.getString("menu_date") );
      out.write("<br></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<tr>\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<td width=\"30%\" align=\"center\" style=\"padding:2%;\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<a onclick=\"login()\" class=\"link\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<b style=\"color:#f54e42;font-size:1.5em;\">");
      out.print(rs.getString("mtype") );
      out.write("</b><br>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t");
      out.print(rs.getString("menu") );
      out.write("<br>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</a>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</td>\t\r\n");
      out.write("\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t");
	}//if
									else if(count%3==2){
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<td width=\"30%\" align=\"center\" style=\"padding:2%;\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<a onclick=\"login()\" class=\"link\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<b style=\"color:#f54e42;font-size:1.5em;\">");
      out.print(rs.getString("mtype") );
      out.write("</b><br>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t");
      out.print(rs.getString("menu") );
      out.write("<br>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</a>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
}
									else{
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td width=\"30%\" align=\"center\" style=\"padding:2%;\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<a onclick=\"login()\" class=\"link\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<b style=\"color:#f54e42;font-size:1.5em;\">");
      out.print(rs.getString("mtype") );
      out.write("</b><br>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t");
      out.print(rs.getString("menu") );
      out.write("<br>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t</a>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<p></p>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</table>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
}
									count++;
								}//while
								if(count==1){
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<div style=\"background-color:#ffc400;color:white;width:50%;font-size:2em;padding:5%;margin-top:5%;border-radius:10px;\" align=\"center\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t준비된 급식이 없습니다\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t");
}
					}
					catch(SQLException e){
						System.out.println(e.getMessage());
					}
					finally{
						try{
							if(pstmt!=null) pstmt.close();
							if(conn!=null) conn.close();
						}
						catch(SQLException e){
							System.out.println(e.getMessage());
						}
					}
				
      out.write("\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("</table>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
