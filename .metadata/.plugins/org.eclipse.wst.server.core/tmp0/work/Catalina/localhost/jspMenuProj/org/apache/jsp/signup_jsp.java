/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.22
 * Generated at: 2019-09-21 13:56:18 UTC
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

public final class signup_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html; charset=UTF-8");
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
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("    <meta charset=\"UTF-8\">\r\n");
      out.write("    <title>미급알 : 회원가입</title>\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/signup.css\">\r\n");
      out.write("    <link href=\"https://fonts.googleapis.com/css?family=Jua&display=swap\" rel=\"stylesheet\">\r\n");
      out.write("    <style>\r\n");
      out.write("    \t.btn2{\r\n");
      out.write("    \t\tbackground-color:#311b1b;\r\n");
      out.write("    \t\tcolor:lightgoldenrodyellow;\r\n");
      out.write("    \t\tborder:0;\r\n");
      out.write("\t\t\toutline:0;\r\n");
      out.write("\t\t\tborder-radius:5px;\r\n");
      out.write("\t\t\tpadding:2%;\r\n");
      out.write("    \t}\r\n");
      out.write("    </style>\r\n");
      out.write("    <script>\r\n");
      out.write("\t    var pattern1 = /[0-9]/;\t\r\n");
      out.write("\t    var pattern2 = /[a-zA-Z]/;\r\n");
      out.write("\t    var pattern3 = /[*!%@#^]/;\r\n");
      out.write("\t    var pattern4=/[~$<>&]/;\r\n");
      out.write("\t    var pw_msg = \"\";\r\n");
      out.write("    \r\n");
      out.write("\t    window.onload=function(){\r\n");
      out.write("\t\t\tdocument.form.id.focus();\r\n");
      out.write("\t\t}\r\n");
      out.write("\t    \r\n");
      out.write("\t    function inputIdChk(){\r\n");
      out.write("\t    \tdocument.form.idDuplication.value=\"uncheck\";\r\n");
      out.write("\t    }\r\n");
      out.write("\t    \r\n");
      out.write("\t    function idchk(inputid){\r\n");
      out.write("\t    \tif(document.form.id.value==\"\"){\r\n");
      out.write("\t\t\t\talert(\"아이디를 입력해주세요\");\r\n");
      out.write("\t\t\t\tdocument.form.id.focus();\r\n");
      out.write("\t\t\t\treturn;\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t    \twindow.name=\"form\";\r\n");
      out.write("\t    \tvar popupX = (window.screen.width/2)-(400/2);\r\n");
      out.write("\t    \tvar popupY= (window.screen.height/2)-(200/2);\r\n");
      out.write("\t    \twindow.open(\"idDupChk.jsp?id=\"+document.form.id.value,\"chkForm\",\"width=400, height=200, resizable=no, scrollbars=no, left=\"+popupX+\", top=\"+popupY);\r\n");
      out.write("\t    }\r\n");
      out.write("\t\t\r\n");
      out.write("\t    function check(){\r\n");
      out.write("\t\t\tif(document.form.id.value==\"\"){\r\n");
      out.write("\t\t\t\talert(\"아이디를 입력해주세요\");\r\n");
      out.write("\t\t\t\tdocument.form.id.focus();\r\n");
      out.write("\t\t\t\treturn;\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t/*if(document.form.idDuplication.value==\"uncheck\"){\r\n");
      out.write("\t\t\t\talert(\"아이디 중복을 확인해주세요\");\r\n");
      out.write("\t\t\t\treturn;\r\n");
      out.write("\t\t\t}*/\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\tif(document.form.pw.value==\"\"){\r\n");
      out.write("\t\t\t\talert(\"비밀번호를 입력해주세요\");\r\n");
      out.write("\t\t\t\tdocument.form.pw.focus();\r\n");
      out.write("\t\t\t\treturn;\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t\tif(document.form.pwchk.value==\"\"){\r\n");
      out.write("\t\t\t\talert(\"비밀번호 확인란을 입력해주세요\");\r\n");
      out.write("\t\t\t\tdocument.form.pwchk.focus();\r\n");
      out.write("\t\t\t\treturn;\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t\tif(document.form.tel1.value==\"\" || document.form.tel2.value==\"\" || document.form.tel3.value==\"\"){\r\n");
      out.write("\t\t\t\talert(\"전화번호를 입력해주세요\");\r\n");
      out.write("\t\t\t\tdocument.form.tel1.focus();\r\n");
      out.write("\t\t\t\treturn;\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t\tif(document.form.email1.value==\"\" || document.form.email2.value==\"\"){\r\n");
      out.write("\t\t\t\talert(\"이메일을 입력해주세요\");\r\n");
      out.write("\t\t\t\tdocument.form.email1.focus();\r\n");
      out.write("\t\t\t\treturn;\r\n");
      out.write("\t\t\t}\t\t\t\r\n");
      out.write("\t\t\tif(pattern4.test(document.form.pw.value)){\r\n");
      out.write("\t\t\t\talert(\"특수문자는 *, !, %, @, #, ^만 사용이 가능합니다\");\r\n");
      out.write("\t\t\t\treturn;\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t\tif(!pattern1.test(document.form.pw.value)||!pattern2.test(document.form.pw.value)||!pattern3.test(document.form.pw.value)||document.form.pw.value.length<8||document.form.pw.value.length>50){\r\n");
      out.write("\t            alert(\"영문+숫자+특수기호 8자리 이상으로 구성하여야 합니다.\");\r\n");
      out.write("\t            return;\r\n");
      out.write("\t        }\t\r\n");
      out.write("\t\t\tif(document.form.pw.value !=document.form.pwchk.value){\r\n");
      out.write("\t\t\t\talert(\"비밀번호와 비밀번호 확인이 일치하지 않습니다\");\r\n");
      out.write("\t\t\t\treturn;\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\tdocument.forms['form'].submit();\r\n");
      out.write("\t\t}//function check()\r\n");
      out.write("    </script>\r\n");
      out.write("</head>\r\n");
      out.write("<body onload=\"form.id.focus()\">\r\n");
      out.write("<form name=\"form\" action=\"signupProc.jsp\" method=\"post\">\r\n");
      out.write("    <table id=\"whole\">\r\n");
      out.write("    \t<tr><td><p></p></td></tr>\r\n");
      out.write("    \t<tr><td><p></p></td></tr>\r\n");
      out.write("        <tr>\r\n");
      out.write("            <td width=\"47%\"></td>\r\n");
      out.write("            <td width=\"12%\"><a href=\"index.jsp\"><img src=\"img/logo.png\" width=\"80%\"></a></td>\r\n");
      out.write("            <td width=\"41%\"></td>\r\n");
      out.write("        </tr>\r\n");
      out.write("        <tr><td><p></p></td></tr>\r\n");
      out.write("        <tr>\r\n");
      out.write("           <td colspan=3>\r\n");
      out.write("               <div id=\"box\" align=\"center\">\r\n");
      out.write("                   <h1>회원가입</h1>\t\r\n");
      out.write("                   <p/>\r\n");
      out.write("                   <table>\r\n");
      out.write("                      <tr>\r\n");
      out.write("                          <td>\r\n");
      out.write("                               <font size=\"5%\">아이디</font>\r\n");
      out.write("                          </td>\r\n");
      out.write("                          <td>\r\n");
      out.write("                              <input type=\"text\" name=\"id\" class=\"text\" size=30 onkeydown=\"inputIdChk()\"> \r\n");
      out.write("                              <input type=\"button\" class=\"btn2\" value=\"중복체크\" onclick=\"idchk(this.form)\"><p>\r\n");
      out.write("                              <!-- <input type=\"hidden\" name=\"idDuplication\" value=\"uncheck\"> -->\r\n");
      out.write("                          </td>\r\n");
      out.write("                       </tr>\r\n");
      out.write("                       <tr>\r\n");
      out.write("                          <td>\r\n");
      out.write("                               <font size=\"5%\">이름</font>\r\n");
      out.write("                          </td>\r\n");
      out.write("                          <td>\r\n");
      out.write("                              <input type=\"text\" name=\"name\" class=\"text\" size=30><p>\r\n");
      out.write("                          </td>\r\n");
      out.write("                       </tr>\r\n");
      out.write("                       <tr>\r\n");
      out.write("                            <td>\r\n");
      out.write("                                <font size=\"5%\">비밀번호</font>\r\n");
      out.write("                            </td>\r\n");
      out.write("                            <td>\r\n");
      out.write("                                <input type=\"password\" name=\"pw\" class=\"text\" size=30><p>\r\n");
      out.write("                            </td>\r\n");
      out.write("                       </tr>\r\n");
      out.write("                       <tr>\r\n");
      out.write("                            <td>\r\n");
      out.write("                                <font size=\"5%\">비밀번호 확인</font>\r\n");
      out.write("                            </td>\r\n");
      out.write("                            <td>\r\n");
      out.write("                                <input type=\"password\" name=\"pwchk\" class=\"text\" size=30><p>\r\n");
      out.write("                            </td>\r\n");
      out.write("                       </tr>\r\n");
      out.write("                       <tr>\r\n");
      out.write("                            <td>\r\n");
      out.write("                                <font size=\"5%\">전화번호</font>\r\n");
      out.write("                            </td>\r\n");
      out.write("                            <td>\r\n");
      out.write("                                <input type=\"tel\" name=\"tel1\" class=\"text\" size=5> <font size=\"5%\">-</font>\r\n");
      out.write("                                <input type=\"tel\" name=\"tel2\" class=\"text\" size=5> <font size=\"5%\">-</font>\r\n");
      out.write("                                <input type=\"tel\" name=\"tel3\" class=\"text\" size=5><p>\r\n");
      out.write("                            </td>\r\n");
      out.write("                       </tr>\r\n");
      out.write("                       <tr>\r\n");
      out.write("                            <td>\r\n");
      out.write("                                <font size=\"5%\">이메일</font>\r\n");
      out.write("                            </td>\r\n");
      out.write("                            <td>\r\n");
      out.write("                                <input type=\"email\" name=\"email1\" class=\"text\" size=15><font size=\"3%\">&nbsp;@&nbsp;</font>\r\n");
      out.write("                                <input type=\"email\" name=\"email2\" class=\"text\" size=15><p>\r\n");
      out.write("                            </td>\r\n");
      out.write("                       </tr>\r\n");
      out.write("                       <tr>\r\n");
      out.write("                            <td>\r\n");
      out.write("                                <font size=\"5%\">주소</font>\r\n");
      out.write("                            </td>\r\n");
      out.write("                            <td>\r\n");
      out.write("                                <input type=\"text\" name=\"address\" class=\"text\" size=40><p>\r\n");
      out.write("                            </td>\r\n");
      out.write("                       </tr>\r\n");
      out.write("                       <tr>\r\n");
      out.write("                           <td colspan=2 align=\"center\">\r\n");
      out.write("                           \t<p>\r\n");
      out.write("                           \t<input type=\"button\" id=\"signup\" class=\"btn\" value=\"회원가입\" onclick=\"check()\">\r\n");
      out.write("                           </td>\r\n");
      out.write("                       </tr>\r\n");
      out.write("                   </table>\r\n");
      out.write("\r\n");
      out.write("               </div>\r\n");
      out.write("           </td>\r\n");
      out.write("        </tr>\r\n");
      out.write("    </table>\r\n");
      out.write("</form>\r\n");
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