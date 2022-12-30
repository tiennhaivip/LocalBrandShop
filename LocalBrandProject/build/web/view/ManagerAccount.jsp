<%-- 
    Document   : ManagerAccount
    Created on : Nov 7, 2021, 8:33:20 AM
    Author     : NITRO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>T Local Brand</title>
    </head>
    <style>
        table{
            width: 80%;
            height: auto;
            border-collapse: collapse;
            
            text-align: center;
            box-shadow: 10px 10px 10px 10px #000;
        }
        
        table tr{
            height: 50px;
        }
        table tr td a{
            border-radius: 5px;
            border-box:1px; 
            padding: 5px;
            background-color: #0c8cd6;
            color: #fff;
            text-decoration: none;
        }
        
        
    </style>
    <title>T Local Brand</title>
        <link href="css/bootstrap-3.1.1.min.css" rel='stylesheet' type='text/css' />
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="js/jquery.min.js"></script>
        <!-- Custom Theme files -->
        <!--theme-style-->
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />	
        <!--//theme-style-->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="Youth Fashion Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
              Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        <link href='//fonts.googleapis.com/css?family=Raleway' rel='stylesheet' type='text/css'>
        <link href='//fonts.googleapis.com/css?family=Poiret+One' rel='stylesheet' type='text/css'>
        <!-- start menu -->
        <script src="js/bootstrap.min.js"></script>
        <script src="js/simpleCart.min.js"></script>
        <!-- slide -->
        <script src="js/responsiveslides.min.js"></script>
        <script>
     $(function () {
         $("#slider").responsiveSlides({
             auto: false,
             speed: 500,
             namespace: "callbacks",
             pager: true,
         });
     });
        </script>
        <!-- animation-effect -->
        <link href="css/animate.min.css" rel="stylesheet"> 
        <script src="js/wow.min.js"></script>
        <script>
        new WOW().init();
        </script>
        <!-- //animation-effect -->
    <body>
         <jsp:include page="Menu.jsp"></jsp:include>
         <h1 style="text-align: center;margin-bottom: 50px">Manager Account</h1>
        <table border="1px" width="70%">
            <tr>
               
                <th>
                    Username
                </th>
                <th>
                    Password
                </th>
                <th>
                    Permission
                </th>
                <th>
                    Update Admin
                </th>
            </tr>
            <c:forEach items="${listacc}" var="a">
                <tr>
                    <td>${a.username}</td>
                    <td>${a.password}</td>
                    <c:if test="${a.isAdmin==1}">
                        <td>Admin</td>
                    </c:if>
                    <c:if test="${a.isAdmin==0}">
                        <td>User</td>
                    </c:if>
                        
                    <c:if test="${a.isAdmin==1}">
                        <td style="color: red">Admin</td>
                    </c:if>
                        
                    <c:if test="${a.isAdmin==0}">
                        <td><a href="addadmin?admin=${a.customerid}" name="">Add Admin</a></td>
                    </c:if>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
