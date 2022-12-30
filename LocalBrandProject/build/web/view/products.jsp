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
                    auto: true,
                    speed: 500,
                    namespace: "callbacks",
                    pager: true,
                });
            });
        </script>

        <style>
            table{
                border-collapse: collapse
            }


            .content{
                margin: auto;
                width: 80%;
                float: left;
                margin-left: 30px;
                height: auto    
            }
            .pagination {
                display: inline-block;
            }
            .pagination {
                display: inline-block;
                margin: 50px 25%;
            }
            .pagination a {
                color: black;
                font-size: 22px;
                float: left;
                padding: 8px 16px;
                text-decoration: none;
            }
            .pagination a.active {
                background-color: #000;
                color: white;
            }
            .pagination a:hover:not(.active) {
                background-color: chocolate;
            }

            .item1.active {
                background: #000;
            }

            .optionP {
                margin-bottom: 50px;
                padding: 2px;
                width: 20%;
                float: right;
            }

            .optionP input{
                background: #000;
                color: #fff;
            }

            .optionP select{
                padding:4px;
                border: 1px solid #000;
            }
        </style>
    </head>
    <body>
        <!--header-->
        <jsp:include page="Menu.jsp"></jsp:include>
            <div class="breadcrumbs">
                <div class="container">
                    <ol class="breadcrumb breadcrumb1 animated wow slideInLeft animated" data-wow-delay=".5s" style="visibility: visible; animation-delay: 0.5s; animation-name: slideInLeft;">
                        <li><a href="listproduct"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>Home</a></li>
                        <li class="active">Products</li>
                    </ol>
                </div>
            </div>

            <!--content-->
            <div class="products">
                <div class="container">
                    <h2>Products</h2>
                    <form class="optionP" action="productoption" method="get">
                        <select name="orderby" id="short">
                            <option selected value="high">Product highest</option>
                            <option value="low">Product lowest</option>
                            <option value="increase">Sort low to high</option>
                            <option value="decrease">Sort high to low</option>
                        </select>   
                        <input  type="submit" value="Save">
                    </form>

                    <div class="col-md-9" >
                        <div class="content-top1">
                        <c:forEach items="${data}" var="p">
                            <div class="col-md-4 col-md4">
                                <div class="col-md1 simpleCart_shelfItem"  style="margin-bottom: 50px">
                                    <a href="detail?pid=${p.id}">
                                        <img class="img-responsive" src="${p.image}" alt="" />
                                    </a>
                                    <h3><a href="detail?pid=${p.id}">${p.name}</a></h3>
                                    <div class="price">
                                        <h5 class="item_price">${p.price}</h5>
                                        <a href="detail?pid=${p.id}" class="item_add">Add To Cart</a>
                                        <div class="clearfix"> </div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                        <!--                        </div>
                                        </div>
                                </div>
                        </div>-->
                        <!--			<div class="col-md-4 col-md4">
                                                                <div class="col-md1 simpleCart_shelfItem">
                                                                        <a href="single.html">
                                                                                <img class="img-responsive" src="images/pi2.png" alt="" />
                                                                        </a>
                                                                        <h3><a href="single.html">Trouser</a></h3>
                                                                        <div class="price">
                                                                                        <h5 class="item_price">$300</h5>
                                                                                        <a href="#" class="item_add">Add To Cart</a>
                                                                                        <div class="clearfix"> </div>
                                                                        </div>
                                                                        
                                                                </div>
                                                        </div>	
                                                <div class="col-md-4 col-md4">
                                                                <div class="col-md1 simpleCart_shelfItem">
                                                                        <a href="single.html">
                                                                                <img class="img-responsive" src="images/pi4.png" alt="" />
                                                                        </a>
                                                                        <h3><a href="single.html">Pant</a></h3>
                                                                        <div class="price">
                                                                                        <h5 class="item_price">$300</h5>
                                                                                        <a href="#" class="item_add">Add To Cart</a>
                                                                                        <div class="clearfix"> </div>
                                                                        </div>
                                                                        
                                                                </div>
                                                        </div>	
                                                
                                                <div class="clearfix"> </div>
                                                </div>	
                                                <div class="content-top1">
                                                        <div class="col-md-4 col-md4">
                                                                <div class="col-md1 simpleCart_shelfItem">
                                                                        <a href="single.html">
                                                                                <img class="img-responsive" src="images/pi1.png" alt="" />
                                                                        </a>
                                                                        <h3><a href="single.html">Trouser</a></h3>
                                                                        <div class="price">
                                                                                        <h5 class="item_price">$300</h5>
                                                                                        <a href="#" class="item_add">Add To Cart</a>
                                                                                        <div class="clearfix"> </div>
                                                                        </div>
                                                                </div>
                                                        </div>	
                                                <div class="col-md-4 col-md4">
                                                                <div class="col-md1 simpleCart_shelfItem">
                                                                        <a href="single.html">
                                                                                <img class="img-responsive" src="images/pi3.png" alt="" />
                                                                        </a>
                                                                        <h3><a href="single.html">Palazoo</a></h3>
                                                                        <div class="price">
                                                                                        <h5 class="item_price">$300</h5>
                                                                                        <a href="#" class="item_add">Add To Cart</a>
                                                                                        <div class="clearfix"> </div>
                                                                        </div>
                                                                        
                                                                </div>
                                                        </div>	
                                                <div class="col-md-4 col-md4">
                                                                <div class="col-md1 simpleCart_shelfItem">
                                                                        <a href="single.html">
                                                                                <img class="img-responsive" src="images/pi12.png" alt="" />
                                                                        </a>
                                                                        <h3><a href="single.html">Palazoo</a></h3>
                                                                        <div class="price">
                                                                                        <h5 class="item_price">$300</h5>
                                                                                        <a href="#" class="item_add">Add To Cart</a>
                                                                                        <div class="clearfix"> </div>
                                                                        </div>
                                                                        
                                                                </div>
                                                        </div>	
                                                
                                                <div class="clearfix"> </div>
                                                </div>	
                                                <div class="content-top1">
                                                        <div class="col-md-4 col-md4">
                                                                <div class="col-md1 simpleCart_shelfItem">
                                                                        <a href="single.html">
                                                                                <img class="img-responsive" src="images/pi9.png" alt="" />
                                                                        </a>
                                                                        <h3><a href="single.html">Trouser</a></h3>
                                                                        <div class="price">
                                                                                        <h5 class="item_price">$300</h5>
                                                                                        <a href="#" class="item_add">Add To Cart</a>
                                                                                        <div class="clearfix"> </div>
                                                                        </div>
                                                                </div>
                                                        </div>	
                                                <div class="col-md-4 col-md4">
                                                                <div class="col-md1 simpleCart_shelfItem">
                                                                        <a href="single.html">
                                                                                <img class="img-responsive" src="images/pi11.png" alt="" />
                                                                        </a>
                                                                        <h3><a href="single.html">Jeans</a></h3>
                                                                        <div class="price">
                                                                                        <h5 class="item_price">$300</h5>
                                                                                        <a href="#" class="item_add">Add To Cart</a>
                                                                                        <div class="clearfix"> </div>
                                                                        </div>
                                                                        
                                                                </div>
                                                        </div>	
                                                <div class="col-md-4 col-md4">
                                                                <div class="col-md1 simpleCart_shelfItem">
                                                                        <a href="single.html">
                                                                                <img class="img-responsive" src="images/pi10.png" alt="" />
                                                                        </a>
                                                                        <h3><a href="single.html">Trouser</a></h3>
                                                                        <div class="price">
                                                                                        <h5 class="item_price">$300</h5>
                                                                                        <a href="#" class="item_add">Add To Cart</a>
                                                                                        <div class="clearfix"> </div>
                                                                        </div>
                                                                        
                                                                </div>
                                                        </div>	
                                                
                                                <div class="clearfix"> </div>-->
                    </div>	
                </div>



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
                    <!--                    <script type="text/javascript">
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
                                        </script>-->
                    <!--//menu-->


                </div>
                <div class="clearfix"> </div>
                <!-- Phan trang -->
                <c:set var="page" value="${requestScope.page}"/>
                <div class="pagination" style="margin-left: 15% ">
                    <c:forEach begin="${1}" end="${requestScope.num}" var="i">
                        <a class="${i==page?"active":""}" href="homecontrol?page=${i}">${i}</a>
                    </c:forEach>
                </div>
                <!--Phan trang -->
            </div>
        </div>

        <!--//content-->
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