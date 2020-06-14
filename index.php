<?php include 'includes/session.php'; ?>
<?php include 'includes/header.php'; ?>
<body>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

	<?php include 'includes/navbar.php'; ?>



    <!-- Header Info Begin -->
    <div class="header-info">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-4">
                    <div class="header-item">
                        <img src="img/icons/delivery.png" alt="">
                        <p>Free shipping on orders over 30 L.E in Egypt</p>
                    </div>
                </div>
                <div class="col-md-4 text-left text-lg-center">
                    <div class="header-item">
                        <img src="img/icons/voucher.png" alt="">
                        <p>20% Student Discount</p>
                    </div>
                </div>
                <div class="col-md-4 text-left text-xl-right">
                    <div class="header-item">
                    <img src="img/icons/sales.png" alt="">
                    <p>30% off on dresses. Use code: 30OFF</p>
                </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Header Info End -->
    <!-- Header End -->

    <!-- Hero Slider Begin -->
    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner" role="listbox">

        <div class="carousel-item active">
        <h1>Best gaming laptop 2020 <span><a href="product.php?product=gaming-laptop">check it</a></span> now </h1>

        </div>
        <div id="target" class="carousel-item"></div>
        <div class="carousel-item"></div>
    </div>
    <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div>
    <!-- Hero Slider End -->

    <!-- Features Section Begin -->

    <!-- Features Section End -->

    <!-- Latest Product Begin -->
    <section class="latest-products spad">
        <div class="container">
            <div class="product-filter">
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <div class="section-title">
                            <h2>Latest Products</h2>
                        </div>
                        <ul class="product-controls">
                            <li data-filter="*">All</li>
                            <li data-filter=".laptops">Laptops</li>
                            <li data-filter=".smartphones">smartphones</li>
                            <li data-filter=".DesktopPC">Desktop PC</li>
                            <li data-filter=".tablets">Tablets</li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="row" id="product-list">
                <div class="col-lg-3 col-sm-6 mix all laptops ">
                    <div class="single-product-item">
                        <figure>
                            <a href="product.php?product=hp-350-g1"><img src="img/products/img-1.jpg" alt=""></a>
                            <div class="p-status">new</div>
                        </figure>
                        <div class="product-text">
                            <h6>HP 350 G1</h6>
                            <p>$1000</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6 mix all laptops ">
                    <div class="single-product-item">
                        <figure>
                            <a href="product.php?product=gaming-laptop"><img src="img/products/img-2.jpg" alt=""></a>
                            <div class="p-status sale">sale</div>
                        </figure>
                        <div class="product-text">
                            <h6>Gaming laptop</h6>
                            <p>$1000</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6 mix all DesktopPC">
                    <div class="single-product-item">
                        <figure>
                            <a href="product.php?product=gaming-pc"><img src="img/products/img-3.jpg" alt=""></a>
                            <div class="p-status">new</div>
                        </figure>
                        <div class="product-text">
                            <h6>Gaming PC </h6>
                            <p>$10000</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6 mix all DesktopPC">
                    <div class="single-product-item">
                        <figure>
                            <a href="product.php?product=acer-pc"><img src="img/products/img-4.jpg" alt=""></a>

                        </figure>
                        <div class="product-text">
                            <h6>Acer pc </h6>
                            <p>$12000</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6 mix all laptops">
                    <div class="single-product-item">
                        <figure>
                            <a href="product.php?product=dell-inspiron-5535-a10-laptop"><img src="img/products/img-5.jpg" alt=""></a>
                            <div class="p-status">new</div>
                        </figure>
                        <div class="product-text">
                            <h6>Dell Inspiron 5535 A10 Laptop</h6>
                            <p>$500</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6 mix all smartphones">
                    <div class="single-product-item">
                        <figure>
                            <a href="product.php?product=xiaomi-redmi-note-7"><img src="img/products/img-6.jpg" alt=""></a>
                            <div class="p-status sale">sale</div>
                        </figure>
                        <div class="product-text">
                            <h6>Xiaomi Redmi Note 7</h6>
                            <p>$200</p>
                        </div>
                    </div>
                </div>

                <div class="col-lg-3 col-sm-6 mix all smartphones">
                    <div class="single-product-item">
                        <figure>
                            <a href="product.php?product=iphone-11-pro"><img src="img/products/img-8.jpg" alt=""></a>
                            <div class="p-status popular">popular</div>
                        </figure>
                        <div class="product-text">
                            <h6>Iphone 11 Pro</h6>
                            <p>$1754</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6 mix tablets">
                    <div class="single-product-item">
                        <figure>
                            <a href="product.php?product=iphone-11-pro"><img src="img/lookbok.jpg" alt=""></a>
                            <div class="p-status popular">popular</div>
                        </figure>
                        <div class="product-text">
                            <h6>Ipad Pro</h6>
                            <p>$1000</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Latest Product End -->

    <!-- Lookbok Section Begin -->
    <section class="lookbok-section">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-4 offset-lg-1">
                    <div class="lookbok-left">
                        <div class="section-title">
                            <h2>2020 Gaming Tablet</h2>
                        </div>
                        <p>If you want to game on iOS, there's no device that can beat the 3rd generation iPad Pro. Crucially, the A12X Bionic chip finally brings the iPad Pro's features up to par with the iPhone. .</p>
                        <a href="product.php?product=apple-ipad-pro" class="primary-btn look-btn">See More</a>
                    </div>
                </div>
                <div class="col-lg-5 offset-lg-1">
                    <div class="lookbok-pic">
                        <img src="img/lookbok.jpg" alt="">

                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Lookbok Section End -->



    <!-- Js Plugins -->

<div>
<?php include 'includes/footer.php'; ?>
</div>

</body>
</html>