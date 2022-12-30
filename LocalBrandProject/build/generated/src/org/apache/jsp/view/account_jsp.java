package org.apache.jsp.view;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class account_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<!--A Design by W3layouts \n");
      out.write("Author: W3layout\n");
      out.write("Author URL: http://w3layouts.com\n");
      out.write("License: Creative Commons Attribution 3.0 Unported\n");
      out.write("License URL: http://creativecommons.org/licenses/by/3.0/\n");
      out.write("-->\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<title>T Local Brand</title>\n");
      out.write("<link href=\"css/bootstrap-3.1.1.min.css\" rel='stylesheet' type='text/css' />\n");
      out.write("<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->\n");
      out.write("<script src=\"js/jquery.min.js\"></script>\n");
      out.write("<!-- Custom Theme files -->\n");
      out.write("<!--theme-style-->\n");
      out.write("<link href=\"css/style.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\" />\t\n");
      out.write("<!--//theme-style-->\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\n");
      out.write("<meta name=\"keywords\" content=\"Youth Fashion Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, \n");
      out.write("Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design\" />\n");
      out.write("<script type=\"application/x-javascript\"> addEventListener(\"load\", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>\n");
      out.write("<link href='//fonts.googleapis.com/css?family=Poiret+One' rel='stylesheet' type='text/css'>\n");
      out.write("<!-- start menu -->\n");
      out.write("<script src=\"js/bootstrap.min.js\"></script>\n");
      out.write("<script src=\"js/simpleCart.min.js\"> </script>\n");
      out.write("<!-- slide -->\n");
      out.write("<script src=\"js/responsiveslides.min.js\"></script>\n");
      out.write("   <script>\n");
      out.write("    $(function () {\n");
      out.write("      $(\"#slider\").responsiveSlides({\n");
      out.write("      \tauto: true,\n");
      out.write("      \tspeed: 500,\n");
      out.write("        namespace: \"callbacks\",\n");
      out.write("        pager: true,\n");
      out.write("      });\n");
      out.write("    });\n");
      out.write("  </script>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("<!--header-->\n");
      out.write("    ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "Menu.jsp", out, false);
      out.write("\n");
      out.write("\n");
      out.write("<!--//header-->\n");
      out.write("<div class=\"breadcrumbs\">\n");
      out.write("\t\t<div class=\"container\">\n");
      out.write("\t\t\t<ol class=\"breadcrumb breadcrumb1 animated wow slideInLeft animated\" data-wow-delay=\".5s\" style=\"visibility: visible; animation-delay: 0.5s; animation-name: slideInLeft;\">\n");
      out.write("\t\t\t\t<li><a href=\"listproduct\"><span class=\"glyphicon glyphicon-home\" aria-hidden=\"true\"></span>Home</a></li>\n");
      out.write("\t\t\t\t<li class=\"active\">Account</li>\n");
      out.write("\t\t\t</ol>\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("<div class=\"account\">\n");
      out.write("\t<div class=\"container\">\n");
      out.write("\t\t<h2>Account</h2>\n");
      out.write("\t\t<div class=\"account_grid\">\n");
      out.write("\t\t\t   <div class=\"col-md-6 login-right\">\n");
      out.write("\t\t\t\t<form action=\"login\" method=\"post\">\n");
      out.write("\n");
      out.write("\t\t\t\t\t<span>Username</span>\n");
      out.write("                                        <input type=\"text\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${username}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" name=\"user\"> \n");
      out.write("\t\t\t\t\n");
      out.write("\t\t\t\t\t<span>Password</span>\n");
      out.write("                                        <input type=\"password\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${password}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" name=\"password\"> \n");
      out.write("                                        <h3 style=\"color: red\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${error}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</h3>\n");
      out.write("                                        <div class=\"form-group form-check\" style=\"color: #000;opacity: 0.8\">\n");
      out.write("                                            <input name=\"remember\" value=\"1\" type=\"checkbox\" class=\"form-check-input\" id=\"exampleCheck1\">\n");
      out.write("                                            <label class=\"form-check-label\" for=\"exampleCheck1\">Remember me</label>\n");
      out.write("                                        </div>\n");
      out.write("\t\t\t\t\t<div class=\"word-in\">\n");
      out.write("\t\t\t\t  \t\t<a class=\"forgot\" href=\"#\">Forgot Your Password?</a>\n");
      out.write("\t\t\t\t \t\t <input type=\"submit\" value=\"Login\">\n");
      out.write("\t\t\t\t  \t</div>\n");
      out.write("                                        \n");
      out.write("\t\t\t    </form>\n");
      out.write("\t\t\t   </div>\t\n");
      out.write("\t\t\t    <div class=\"col-md-6 login-left\">\n");
      out.write("\t\t\t  \t <h4>NEW CUSTOMERS</h4>\n");
      out.write("\t\t\t\t <p>By creating an account with our store, you will be able to move through the checkout process faster, store multiple shipping addresses, view and track your orders in your account and more.</p>\n");
      out.write("\t\t\t\t <a class=\"acount-btn\" href=\"signup\">Create an Account</a>\n");
      out.write("\t\t\t   </div>\n");
      out.write("\t\t\t   <div class=\"clearfix\"> </div>\n");
      out.write("\t\t\t </div>\n");
      out.write("\t</div>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("<!--footer-->\n");
      out.write("<div class=\"footer\">\n");
      out.write("\t<div class=\"container\">\n");
      out.write("\t\t<div class=\"footer-top\">\n");
      out.write("\t\t\t<div class=\"col-md-6 top-footer\">\n");
      out.write("\t\t\t\t<h3>Follow Us On</h3>\n");
      out.write("\t\t\t\t<div class=\"social-icons\">\n");
      out.write("\t\t\t\t\t<ul class=\"social\">\n");
      out.write("\t\t\t\t\t\t<li><a href=\"#\"><i></i></a> </li>\n");
      out.write("\t\t\t\t\t\t<li><a href=\"#\"><i class=\"facebook\"></i></a></li>\t\n");
      out.write("\t\t\t\t\t\t<li><a href=\"#\"><i class=\"google\"></i> </a></li>\n");
      out.write("\t\t\t\t\t\t<li><a href=\"#\"><i class=\"linked\"></i> </a></li>\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t\t\t<div class=\"clearfix\"></div>\n");
      out.write("\t\t\t\t </div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t<div class=\"col-md-6 top-footer1\">\n");
      out.write("\t\t\t\t<h3>Newsletter</h3>\n");
      out.write("\t\t\t\t\t<form action=\"#\" method=\"post\">\n");
      out.write("\t\t\t\t\t\t<input type=\"text\" name=\"search\" value=\"\" onfocus=\"this.value='';\" onblur=\"if (this.value == '') {this.value ='';}\">\n");
      out.write("\t\t\t\t\t\t<input type=\"submit\" value=\"SUBSCRIBE\">\n");
      out.write("\t\t\t\t\t</form>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t<div class=\"clearfix\"> </div>\t\n");
      out.write("\t\t</div>\t\n");
      out.write("\t</div>\n");
      out.write("\t<div class=\"footer-bottom\">\n");
      out.write("\t\t<div class=\"container\">\n");
      out.write("\t\t\t\t<div class=\"col-md-3 footer-bottom-cate\">\n");
      out.write("\t\t\t\t\t<h6>Categories</h6>\n");
      out.write("\t\t\t\t\t<ul>\n");
      out.write("\t\t\t\t\t\t<li><a href=\"products.html\">Curabitur sapien</a></li>\n");
      out.write("\t\t\t\t\t\t<li><a href=\"single.html\">Dignissim purus</a></li>\n");
      out.write("\t\t\t\t\t\t<li><a href=\"men.html\">Tempus pretium</a></li>\n");
      out.write("\t\t\t\t\t\t<li><a href=\"products.html\">Dignissim neque</a></li>\n");
      out.write("\t\t\t\t\t\t<li><a href=\"single.html\">Ornared id aliquet</a></li>\n");
      out.write("\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"col-md-3 footer-bottom-cate\">\n");
      out.write("\t\t\t\t\t<h6>Feature Projects</h6>\n");
      out.write("\t\t\t\t\t<ul>\n");
      out.write("\t\t\t\t\t\t<li><a href=\"products.html\">Dignissim purus</a></li>\n");
      out.write("\t\t\t\t\t\t<li><a href=\"men.html\">Curabitur sapien</a></li>\n");
      out.write("\t\t\t\t\t\t<li><a href=\"single.html\">Tempus pretium</a></li>\n");
      out.write("\t\t\t\t\t\t<li><a href=\"men.html\">Dignissim neque</a></li>\n");
      out.write("\t\t\t\t\t\t<li><a href=\"products.html\">Ornared id aliquet</a></li>\n");
      out.write("\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"col-md-3 footer-bottom-cate\">\n");
      out.write("\t\t\t\t\t<h6>Top Brands</h6>\n");
      out.write("\t\t\t\t\t<ul>\n");
      out.write("\t\t\t\t\t\t<li><a href=\"products.html\">Tempus pretium</a></li>\n");
      out.write("\t\t\t\t\t\t<li><a href=\"single.html\">Curabitur sapien</a></li>\n");
      out.write("\t\t\t\t\t\t<li><a href=\"men.html\">Dignissim purus</a></li>\n");
      out.write("\t\t\t\t\t\t<li><a href=\"single.html\">Dignissim neque</a></li>\n");
      out.write("\t\t\t\t\t\t<li><a href=\"men.html\">Ornared id aliquet</a></li>\n");
      out.write("\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"col-md-3 footer-bottom-cate cate-bottom\">\n");
      out.write("\t\t\t\t\t<h6>Our Address</h6>\n");
      out.write("\t\t\t\t\t<ul>\n");
      out.write("\t\t\t\t\t\t<li><i class=\"glyphicon glyphicon-map-marker\" aria-hidden=\"true\"></i>Address : 12th Avenue, 5th block, <span>Sydney.</span></li>\n");
      out.write("\t\t\t\t\t\t<li><i class=\"glyphicon glyphicon-envelope\" aria-hidden=\"true\"></i>Email : <a href=\"mailto:info@example.com\">info@example.com</a></li>\n");
      out.write("\t\t\t\t\t\t<li><i class=\"glyphicon glyphicon-earphone\" aria-hidden=\"true\"></i>Phone : +1234 567 567</li>\n");
      out.write("\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"clearfix\"> </div>\n");
      out.write("\t\t\t\t<p class=\"footer-class\"> Â© 2016 Youth Fashion . All Rights Reserved | Design by <a href=\"http://w3layouts.com/\" target=\"_blank\">W3layouts</a> </p>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("</div>\n");
      out.write("<!--footer-->\n");
      out.write("</body>\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
