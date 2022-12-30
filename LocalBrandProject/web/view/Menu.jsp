<%-- 
    Document   : Menu
    Created on : Oct 25, 2021, 1:45:10 AM
    Author     : NITRO
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--header-->
<div class="header">
    <div class="header-top">
        <div class="container">
            <div class="col-sm-4 logo animated wow fadeInLeft" data-wow-delay=".5s">
                <h1><a href="listproduct">T <span>Local Brand</span></a></h1>	
            </div>
<!--            <div class="col-sm-4 world animated wow fadeInRight" data-wow-delay=".5s">
                <div class="cart box_1">
                    <a href="view/checkout.jsp">
                        <h3> <div class="total">
                                <span class="simpleCart_total"></span></div>
                            <img src="images/cart.png" alt=""/></h3>
                    </a>
                    <p><a href="javascript:;" class="simpleCart_empty">Empty Cart</a></p>

                </div>
            </div>-->
            <div class="col-sm-2 number animated wow fadeInRight" data-wow-delay=".5s">
                <span><i class="glyphicon glyphicon-phone"></i>035 768 2001</span>
                <p>Call me</p>
            </div>
            <div class="col-sm-6 search animated wow fadeInRight" data-wow-delay=".5s">		
                <div class="search-box" style="display: inline-block" >
                    <form  action="search" method="get">
                        <input type="text" placeholder="Search..." name="key" style="width: 80%"/>
                        <button type="submit"><i class="glyphicon glyphicon-search"></i></button>
                    </form>
                </div>	
            </div>
            <div class="clearfix"> </div>
        </div>
    </div>
    <div class="container">
        <div class="head-top">
            <div class="n-avigation">

                <nav class="navbar nav_bottom" role="navigation">

                    <!-- Brand and toggle get grouped for better mobile display -->
                    <div class="navbar-header nav_2">
                        <button type="button" class="navbar-toggle collapsed navbar-toggle1" data-toggle="collapse" data-target="#bs-megadropdown-tabs">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="#"></a>
                    </div> 
                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
                        <ul class="nav navbar-nav nav_1">
                            <li><a href="listproduct">Home</a></li>
                            
                            <li><a href="homecontrol">Products</a></li>
                            <!-- Neu session bang null thi hien signin -->
                            <c:if test="${sessionScope.acc==null}">
                                <li><a href="login">Sign In</a></li>
                            </c:if>
                                
                            <li class="last"><a href="contact.html">Contact</a></li>
                            
                                <li class="last"><a href="cartcontroller?action=showcart">Cart</a></li>
                           
                            <!-- Neu session khac null thi hien signin -->
                            <c:if test="${sessionScope.acc!=null}">
                                <li style="margin-left: 5%"><a  href="logout">Logout</a></li>
                                <li style="margin-left: 2%"><a  href="updatepassword">Hello ${sessionScope.acc.username} <img style="width: 30px;height:30px" src="images/user.jpg"/> </a></li>
                            </c:if>
                            
                            <c:if test="${sessionScope.acc.isAdmin==1}">
                                <li style="margin-left: 1%"><a  href="displayallproduct">Manage Product</a></li>
      
                            </c:if>
                                
                            <c:if test="${sessionScope.acc.isAdmin==1}">
                                <li style="margin-left: 0%"><a  href="allaccount">Manage Account</a></li>
      
                            </c:if>
                        </ul>
                    </div><!-- /.navbar-collapse -->

                </nav>
            </div>


            <div class="clearfix"> </div>
            <!---pop-up-box---->   
            <link href="css/popuo-box.css" rel="stylesheet" type="text/css" media="all"/>
            <script src="js/jquery.magnific-popup.js" type="text/javascript"></script>
            <!---//pop-up-box---->
            <div id="small-dialog" class="mfp-hide">
                <div class="search-top">
                    <div class="login">
                        <form action="#" method="post">
                            <input type="submit" value="">
                            <input type="text" name="search" value="Type something..." onfocus="this.value = '';" onblur="if (this.value == '') {
                                        this.value = '';
                                    }">		

                        </form>
                    </div>
                    <p>	Shopping</p>
                </div>				
            </div>
            <script>
                $(document).ready(function () {
                    $('.popup-with-zoom-anim').magnificPopup({
                        type: 'inline',
                        fixedContentPos: false,
                        fixedBgPos: true,
                        overflowY: 'auto',
                        closeBtnInside: true,
                        preloader: false,
                        midClick: true,
                        removalDelay: 300,
                        mainClass: 'my-mfp-zoom-in'
                    });

                });
            </script>			
            <!---->		
        </div>
    </div>
</div>
