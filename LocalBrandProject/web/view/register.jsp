<!--A Design by W3layouts 
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>
    <head>
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
                    auto: true,
                    speed: 500,
                    namespace: "callbacks",
                    pager: true,
                });
            });
        </script>
        <style>
            .register-but input {
                padding: 6px 22px;
                cursor: pointer;
                background: #000;
                color: #fff;
                
            }
            
            .register-but input:hover {
                background: red;
                color: #000;
            }
        </style>
    </head>
    <body>
        <!--header-->
        <jsp:include page="Menu.jsp"></jsp:include>
        <!--//header-->
        <div class="breadcrumbs">
            <div class="container">
                <ol class="breadcrumb breadcrumb1 animated wow slideInLeft animated" data-wow-delay=".5s" style="visibility: visible; animation-delay: 0.5s; animation-name: slideInLeft;">
                    <li><a href="listproduct"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>Home</a></li>
                    <li class="active">Register</li>
                </ol>
            </div>
        </div>
        <div class="container">
            <div class="register">
                <h2>Register</h2>
                <h3 style="color:red;margin-left: 2%">${mess}</h3>
                <h3 style="color:red;margin-left: 2%">${error}</h3>
                <form action="signup" method="post">
                    <div class="col-md-6  register-top-grid">

                        <div class="mation">

                          
                            <span>Username</span>
                            <input type="text" name="user"> 
                        </div>
                        <div class="clearfix"> 


                            <div class=" col-md-16 register-bottom-grid">

                                <div class="mation">
                                    <span>Password</span>
                                    <input type="password" name="password">
                                    <span>Confirm Password</span>
                                    <input type="password" name="repass">
                                </div>
                            </div>

                        </div>
                        <a class="news-letter" href="#">
                            <label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i> </i>Sign Up</label>
                        </a>
                        <div class="register-but">

                            <input type="submit" value="submit">
                            <div class="clearfix"> </div>

                        </div>
                    </div>
                    <div class="clearfix"> </div>
                </form>


            </div>
        </div>

        <!--footer-->
        <div class="footer">
            <div class="container">
                <div class="footer-top">
                    <div class="col-md-6 top-footer">
                        <h3>Follow Us On</h3>
                        <div class="social-icons">
                            <ul class="social">
                                <li><a href="#"><i></i></a> </li>
                                <li><a href="#"><i class="facebook"></i></a></li>	
                                <li><a href="#"><i class="google"></i> </a></li>
                                <li><a href="#"><i class="linked"></i> </a></li>						
                            </ul>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                    <div class="col-md-6 top-footer1">
                        <h3>Newsletter</h3>
                        <form action="#" method="post">
                            <input type="text" name="email" value="" onfocus="this.value = '';" onblur="if (this.value == '') {
                                        this.value = '';
                                    }">
                            <input type="submit" value="SUBSCRIBE">
                        </form>
                    </div>
                    <div class="clearfix"> </div>	
                </div>	
            </div>
            <div class="footer-bottom">
                <div class="container">
                    <div class="col-md-3 footer-bottom-cate">
                        <h6>Categories</h6>
                        <ul>
                            <li><a href="products.html">Curabitur sapien</a></li>
                            <li><a href="single.html">Dignissim purus</a></li>
                            <li><a href="men.html">Tempus pretium</a></li>
                            <li><a href="products.html">Dignissim neque</a></li>
                            <li><a href="single.html">Ornared id aliquet</a></li>

                        </ul>
                    </div>
                    <div class="col-md-3 footer-bottom-cate">
                        <h6>Feature Projects</h6>
                        <ul>
                            <li><a href="products.html">Dignissim purus</a></li>
                            <li><a href="men.html">Curabitur sapien</a></li>
                            <li><a href="single.html">Tempus pretium</a></li>
                            <li><a href="men.html">Dignissim neque</a></li>
                            <li><a href="products.html">Ornared id aliquet</a></li>
                        </ul>
                    </div>
                    <div class="col-md-3 footer-bottom-cate">
                        <h6>Top Brands</h6>
                        <ul>
                            <li><a href="products.html">Tempus pretium</a></li>
                            <li><a href="single.html">Curabitur sapien</a></li>
                            <li><a href="men.html">Dignissim purus</a></li>
                            <li><a href="single.html">Dignissim neque</a></li>
                            <li><a href="men.html">Ornared id aliquet</a></li>


                        </ul>
                    </div>
                    <div class="col-md-3 footer-bottom-cate cate-bottom">
                        <h6>Our Address</h6>
                        <ul>
                            <li><i class="glyphicon glyphicon-map-marker" aria-hidden="true"></i>Address : 12th Avenue, 5th block, <span>Sydney.</span></li>
                            <li><i class="glyphicon glyphicon-envelope" aria-hidden="true"></i>Email : <a href="mailto:info@example.com">info@example.com</a></li>
                            <li><i class="glyphicon glyphicon-earphone" aria-hidden="true"></i>Phone : +1234 567 567</li>
                        </ul>
                    </div>
                    <div class="clearfix"> </div>
                    <p class="footer-class"> © 2016 Youth Fashion . All Rights Reserved | Design by <a href="http://w3layouts.com/" target="_blank">W3layouts</a> </p>
                </div>
            </div>
        </div>
        <!--footer-->
    </body>
</html>