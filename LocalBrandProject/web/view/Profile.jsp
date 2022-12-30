<%-- 
    Document   : Profile.jsp
    Created on : Nov 7, 2021, 7:38:40 AM
    Author     : NITRO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>T Local Brand</title>
        <style> 
            .profile{
                text-align: center;
                box-shadow: 10px 10px 10px 10px #000;
                height: 300px;
            }
            
            .profile h2{
                border-bottom: 1px solid #ccc;
            }

            .profile table{
                padding-left: 30%;

            }
            .profile table tr th{
                padding-bottom: 20px;
            }
            
            #uppass {
                float: left;
            }
            
        </style>
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
    </head>
    <body>
        <!--header-->
        <jsp:include page="Menu.jsp"></jsp:include>
        <!--//header-->
        <div class="profile">
            <h2>Profile</h2>
            
            <form action="updatepassword" method="post">
                <table>
                    <tr>
                        <th>Username: </th>
                        <th>${sessionScope.acc.username}</th>
                    </tr>


                    <tr>
                        <th>Password: </th>
                        <th><input type="text" value="${sessionScope.acc.password}" name="password" ></th></br>
                        <th><input style="margin-right: 1000px" id="uppass" type="submit" value="Update"></th></br>
                    </tr>

                </table>
                        
            </form>
                        
        </div>

    </body>
</html>
