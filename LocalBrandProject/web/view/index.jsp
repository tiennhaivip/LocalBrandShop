<!--A Design by W3layouts 
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <jsp:include page="Menu.jsp"></jsp:include>
        <!--banner-->
        <div class="banner">
            <div class="matter-banner">
                <div class="slider">
                    <div class="callbacks_container">
                        <ul class="rslides" id="slider">
                            <li>
                                <img src="images/Clownz/slider_1.jpg" alt="">
                                <div class="tes animated wow fadeInUp animated" data-wow-delay=".5s" style="visibility: visible; animation-delay: 0.5s; animation-name: fadeInUp;">

                                </div>
                            </li>
                            <li>
                                <img src="images/3.jpg" alt=""> 
                                <div class="tes animated wow fadeInUp animated" data-wow-delay=".5s" style="visibility: visible; animation-delay: 0.5s; animation-name: fadeInUp;">

                                </div>					
                            </li>
                            <li>
                                <img src="images/2.jpg" alt="">
                                <div class="tes animated wow fadeInUp animated" data-wow-delay=".5s" style="visibility: visible; animation-delay: 0.5s; animation-name: fadeInUp;">

                                </div>
                            </li>	
                        </ul>
                    </div>
                </div>
            </div>
            <div class="clearfix"> </div>
        </div>
        <!--//banner-->
        <!--content-->
        <div class="content" style="margin-bottom:50px">
            <div class="container">
                <div class="content-top">
                    <div class="content-top1">
                        <c:forEach items="${requestScope.datap}" begin="50" end="57" var="p">
                           <div class="col-md-3 col-md2 animated wow fadeInLeft" data-wow-delay=".5s">
                               <div class="col-md1 simpleCart_shelfItem" style="margin-bottom:50px">
                                <a href="detail?pid=${p.id}">
                                    <img class="img-responsive" src="${p.image}" alt="" />
                                </a>
                                <h3><a href="detail?pid=${p.id}">${p.name}</a></h3>
                                <div class="price">
                                    <h5 class="item_price">${p.price}</h5>
                                    <a href="detail?pid=${p.id}" class="item_add">Add To Cart</a>
                                     
                                </div>
                            </div>
                        </div> 
                        </c:forEach>	
                    </div>			
                </div>
            </div>
        </div>
         
     
        <!--footer-->
        <div class="footer">
            <div class="container">
                <div class="footer-top">
                    <div class="col-md-6 top-footer animated wow fadeInLeft" data-wow-delay=".5s">
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
                    <div class="col-md-6 top-footer1 animated wow fadeInRight" data-wow-delay=".5s">
                        <h3>Newsletter</h3>
                        <form action="#" method="post">
                            <input type="text" name="email" value="" onfocus="this.value = '';" onblur="if (this.value == '') {
                                                            this.value = '';}">
                            <input type="submit" value="SUBSCRIBE">
                        </form>
                    </div>
                    <div class="clearfix"> </div>	
                </div>	
            </div>
            <div class="footer-bottom">
                <div class="container">
                    <div class="col-md-3 footer-bottom-cate animated wow fadeInLeft" data-wow-delay=".5s">
                        <h6>Categories</h6>
                        <ul>
                            <li><a href="products.html">Curabitur sapien</a></li>
                            <li><a href="single.html">Dignissim purus</a></li>
                            <li><a href="men.html">Tempus pretium</a></li>
                            <li><a href="products.html">Dignissim neque</a></li>
                            <li><a href="single.html">Ornared id aliquet</a></li>

                        </ul>
                    </div>
                    <div class="col-md-3 footer-bottom-cate animated wow fadeInLeft" data-wow-delay=".5s">
                        <h6>Feature Projects</h6>
                        <ul>
                            <li><a href="products.html">Dignissim purus</a></li>
                            <li><a href="men.html">Curabitur sapien</a></li>
                            <li><a href="single.html">Tempus pretium</a></li>
                            <li><a href="men.html">Dignissim neque</a></li>
                            <li><a href="products.html">Ornared id aliquet</a></li>
                        </ul>
                    </div>
                    <div class="col-md-3 footer-bottom-cate animated wow fadeInRight" data-wow-delay=".5s">
                        <h6>Top Brands</h6>
                        <ul>
                            <li><a href="products.html">Tempus pretium</a></li>
                            <li><a href="single.html">Curabitur sapien</a></li>
                            <li><a href="men.html">Dignissim purus</a></li>
                            <li><a href="single.html">Dignissim neque</a></li>
                            <li><a href="men.html">Ornared id aliquet</a></li>


                        </ul>
                    </div>
                    <div class="col-md-3 footer-bottom-cate cate-bottom animated wow fadeInRight" data-wow-delay=".5s">
                        <h6>Our Address</h6>
                        <ul>
                            <li><i class="glyphicon glyphicon-map-marker" aria-hidden="true"></i>Address : 12th Avenue, 5th block, <span>Sydney.</span></li>
                            <li><i class="glyphicon glyphicon-envelope" aria-hidden="true"></i>Email : <a href="mailto:info@example.com">info@example.com</a></li>
                            <li><i class="glyphicon glyphicon-earphone" aria-hidden="true"></i>Phone : 035 768 2001</li>
                        </ul>
                    </div>
                    <div class="clearfix"> </div>
                    <p class="footer-class animated wow fadeInUp animated" data-wow-delay=".5s" style="visibility: visible; animation-delay: 0.5s; animation-name: fadeInUp;"> © 2016 Youth Fashion . All Rights Reserved | Design by <a href="http://w3layouts.com/" target="_blank">W3layouts</a> </p>
                </div>
            </div>
        </div>
        <!--footer-->
    </body>
</html>