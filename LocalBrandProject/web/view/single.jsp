<!--A Design by W3layouts 
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

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

    </head>
    <body>
        <!--header-->
        <jsp:include page="Menu.jsp"></jsp:include>
            <div class="breadcrumbs">
                <div class="container">
                    <ol class="breadcrumb breadcrumb1 animated wow slideInLeft animated" data-wow-delay=".5s" style="visibility: visible; animation-delay: 0.5s; animation-name: slideInLeft;">
                        <li><a href="listproduct"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>Home</a></li>
                        <li class="active">Single</li>
                    </ol>
                </div>
            </div>
            <div class="single">
                
                    <div class="container">
                        <form action="cartcontroller?id=${detail.id}" method="POST">
                        <div class="col-md-9">
                            <div class="col-md-5 grid">		
                                <div class="flexslider">
                                    <ul class="slides">
                                        <li data-thumb="${detail.image}">
                                        <div class="thumb-image"> <img src="${detail.image}" data-imagezoom="true" class="img-responsive"> </div>
                                    </li>
                                    <li data-thumb="${detail.image}">
                                        <div class="thumb-image"> <img src="${detail.image}" data-imagezoom="true" class="img-responsive"> </div>
                                    </li>
                                    <li data-thumb="${detail.image}">
                                        <div class="thumb-image"> <img src="${detail.image}" data-imagezoom="true" class="img-responsive"> </div>
                                    </li> 
                                </ul>
                            </div>
                        </div>	
                        <div class="col-md-7 single-top-in">
                            <div class="single-para simpleCart_shelfItem">
                                <h2>${detail.cate.describe}</h2>
<!--                                <p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.</p>
                                <div class="star-on">
                                    <ul>
                                        <li><a href="#"><i class="glyphicon glyphicon-star"> </i></a></li>
                                        <li><a href="#"><i class="glyphicon glyphicon-star"> </i></a></li>
                                        <li><a href="#"><i class="glyphicon glyphicon-star"> </i></a></li>
                                        <li><a href="#"><i class="glyphicon glyphicon-star"> </i></a></li>
                                        <li><a href="#"><i class="glyphicon glyphicon-star"> </i></a></li>
                                    </ul>
                                    <div class="review">
                                        <a href="#"> 3 reviews </a>/
                                        <a href="#">  Write a review</a>
                                    </div>
                                    <div class="clearfix"> </div>
                                </div>-->

                                <label  class="add-to item_price">${detail.price}đ</label>

                                <div class="available">
                                    <h6>Available Options :</h6>
                                    <ul>

                                        <li>Size:<select name="size">
                                                <option>S</option>
                                                <option>M</option>
                                                <option>L</option>
                                                <option>XL</option>
                                                <option>XXL</option>
                                            </select></li>
                                            <li><input type="number" name="quantity"> Quantity</li>

                                    </ul>
                                    
                                </div>
                                <button style="padding: 5px;color: #fff;background-color: #000;margin-top: 30px;border-radius: 3px;
                                        "  class="cart item_add">Add to Card</button>
                            </div>
                        </div>
                        <div class="clearfix"> </div>		
                    </div>
            </form>

            <!----->
            <div class="col-md-3 product-bottom">
                <!--categories-->
                <div class=" rsidebar span_1_of_left">
                    <h3 class="cate">Categories</h3>
                    <ul class="menu-drop">
                        <c:forEach items="${requestScope.dataC}" var="ca">
                            <li class="item1 ${tag == ca.id? "active":""}"><a href="controlcate?cid=${ca.id}">${ca.name}</a></li>
                            </c:forEach>	

                    </ul>
                </div>
                <!--initiate accordion-->
                <script type="text/javascript">
                    $(function () {
                        var menu_ul = $('.menu-drop > li > ul'),
                                menu_a = $('.menu-drop > li > a');
                        menu_ul.hide();
                        menu_a.click(function (e) {
                            e.preventDefault();
                            if (!$(this).hasClass('active')) {
                                menu_a.removeClass('active');
                                menu_ul.filter(':visible').slideUp('normal');
                                $(this).addClass('active').next().stop(true, true).slideDown('normal');
                            } else {
                                $(this).removeClass('active');
                                $(this).next().stop(true, true).slideUp('normal');
                            }
                        });

                    });
                </script>
                <!--//menu-->

            </div>

            <div class="clearfix"> </div>
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
                <p class="footer-class"> Â© 2016 Youth Fashion . All Rights Reserved | Design by <a href="http://w3layouts.com/" target="_blank">W3layouts</a> </p>
            </div>
        </div>
    </div>
    <!--footer-->
    <!-- slide -->
    <script src="js/jquery.min.js"></script>
    <script src="js/imagezoom.js"></script>
    <!-- start menu -->
    <script type="text/javascript" src="js/memenu.js"></script>
    <script>$(document).ready(function () {
                                    $(".memenu").memenu();});</script>
    <script src="js/simpleCart.min.js"></script>
    <!--initiate accordion-->
    <!--						<script type="text/javascript">
                                                            $(function() {
                                                                var menu_ul = $('.menu-drop > li > ul'),
                                                                       menu_a  = $('.menu-drop > li > a');
                                                                menu_ul.hide();
                                                                menu_a.click(function(e) {
                                                                    e.preventDefault();
                                                                    if(!$(this).hasClass('active')) {
                                                                        menu_a.removeClass('active');
                                                                        menu_ul.filter(':visible').slideUp('normal');
                                                                        $(this).addClass('active').next().stop(true,true).slideDown('normal');
                                                                    } else {
                                                                        $(this).removeClass('active');
                                                                        $(this).next().stop(true,true).slideUp('normal');
                                                                    }
                                                                });
                                                            
                                                            });
                                                    </script>-->
    <!-- FlexSlider -->
    <script defer src="js/jquery.flexslider.js"></script>
    <link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />

    <script>
                            // Can also be used with $(document).ready()
                            $(window).load(function () {
                                $('.flexslider').flexslider({
                                    animation: "slide",
                                    controlNav: "thumbnails"
                                });
                            });
    </script>
    <!---pop-up-box---->
    <link href="css/popuo-box.css" rel="stylesheet" type="text/css" media="all"/>
    <script src="js/jquery.magnific-popup.js" type="text/javascript"></script>
    <!---//pop-up-box---->
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

</body>
</html>