<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <title>PickFL</title>
    <meta content="" name="description">
    <meta content="" name="keywords">

    <!-- Favicons -->
    <link href="assets/img/favicon.png" rel="icon">
    <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

    <!-- Vendor CSS Files -->
    <link href="assets/vendor/animate.css/animate.min.css" rel="stylesheet">
    <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
    <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
    <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
    <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

    <link href="assets/css/mainPage.css" rel="stylesheet">
	
	<style>
		 .card img {
      width: 15rem;
      height: 15rem;
    }
	</style>
</head>

<body>

    <%@ include file="common/header.jsp" %>

    <!-- ======= THIS MONTH's FL Section ======= -->
    <section id="hero">
        <div id="heroCarousel" data-bs-interval="5000" class="carousel slide carousel-fade" data-bs-ride="carousel">

            <ol class="carousel-indicators" id="hero-carousel-indicators"></ol>

            <div class="carousel-inner" role="listbox">

                <!-- Slide 1 -->
                <div class="carousel-item active" style="background-image: url(assets/img/slide/slide-1.jpg)">
                    <div class="carousel-container">
                        <div class="container">
                                <h2 class="animate__animated animate__fadeInDown">1월의 꽃 : 스노우 드롭(SnowDrop)</h2>
                                <p class="animate__animated animate__fadeInUp">"오늘 하루는 선물입니다"<br><span>꽃말 : 희망</span></p>
                                <a href="#about" class="btn-get-started animate__animated animate__fadeInUp scrollto">Buy This</a>
                        </div>
                    </div>
                </div>

                <!-- Slide 2 -->
                <div class="carousel-item" style="background-image: url(assets/img/slide/slide-2.jpg)">
                    <div class="carousel-container">
                        <div class="container">
                            <h2 class="animate__animated animate__fadeInDown">꽃 점</h2>
                            <p class="animate__animated animate__fadeInUp">당신은 눈이 내려도 찬바람이 불어도 결코 굴하지 않는 <br> 스노우 드롭처럼 인내심이 강한 성격을 갖고 있다. <br>
                                당신의 희망은 언젠가 반드시 성취되고 <br> 합리성과 성실성을 소중히 간직해 자신의 모습을 지키며 산다.
                            </p>
                            <a href="#about" class="btn-get-started animate__animated animate__fadeInUp scrollto">Buy This</a>
                        </div>
                    </div>
                </div>

                <!-- Slide 3 -->
                <div class="carousel-item" style="background-image: url(assets/img/slide/slide-3.jpg)">
                    <div class="carousel-container">
                        <div class="container">
                            <h2 class="animate__animated animate__fadeInDown">스노우 드롭에 대하여</h2>
                            <p class="animate__animated animate__fadeInUp">
                                수선화과의 알뿌리식물로 흰 꽃이 핀다. <br> 영하 40도까지 버틸 수 있으며 12월 ~ 2월경에 개화한다. <br>
                                내한성이 강하며 배수가 잘 되는 곳에 약간의 차광만 해 주면 쉽게 기를 수 있는 식물이다. <br>
                            </p>
                            <a href="#about" class="btn-get-started animate__animated animate__fadeInUp scrollto">Buy This</a>
                        </div>
                    </div>
                </div>

            </div>

            <a class="carousel-control-prev" href="#heroCarousel" role="button" data-bs-slide="prev">
                <span class="carousel-control-prev-icon bi bi-chevron-left" aria-hidden="true"></span>
            </a>

            <a class="carousel-control-next" href="#heroCarousel" role="button" data-bs-slide="next">
                <span class="carousel-control-next-icon bi bi-chevron-right" aria-hidden="true"></span>
            </a>

        </div>
    </section><!-- End Hero -->

    <main id="main">


    <!-- ======= Best Sales Section ======= -->
    <section id="services" class="services">
        <div class="container">

            <div class="section-title">
                <h2>What's new?</h2>
                <p>Magnam dolores commodi suscipit. Necessitatibus eius consequatur ex aliquid fuga eum quidem. Sit sint consectetur velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit suscipit alias ea. Quia fugiat sit in iste officiis commodi quidem hic quas.</p>
            </div>
			
	        <div class="row">
				<c:forEach items="${newList}" var="n">			
	                <div class="col-lg-3 col-md-6 d-flex align-items-stretch mt-4" data-aos="zoom-in" data-aos-delay="100">
	                    <div class="card" onClick=getParam(${n.product_no})>
			              <img src="image?fileName=${n.product_image}" class="card-img-top" alt="...">
			              <div class="card-body">
			                <h5 class="card-title">${n.product_name}</h5>
			                <p class="card-text">${n.product_simple}</p>
			              </div>
			            </div>
	                </div>
				</c:forEach>
	         </div>

        </div>
    </section><!-- End Best Sales Section -->


        <!-- ======= TIP VIDEO Section ======= -->
        <section id="about" class="about">
            <div class="container">

                <div class="section-title">
                    <h2>TIP VIDEO</h2>
                    <p>Magnam dolores commodi suscipit. Necessitatibus eius consequatur ex aliquid fuga eum quidem. Sit sint consectetur velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit suscipit alias ea. Quia fugiat sit in iste officiis commodi quidem hic quas.</p>
                </div>

                <div class="row">
                    <div class="col-lg-6 order-1 order-lg-2">
                        <img src="assets/img/about.jpg" class="img-fluid" alt="">
                    </div>
                    <div class="col-lg-6 pt-4 pt-lg-0 order-2 order-lg-1 content">
                        <h3>Voluptatem dignissimos provident quasi corporis voluptates sit assumenda.</h3>
                        <p class="fst-italic">
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore
                            magna aliqua.
                        </p>
                        <ul>
                            <li><i class="bi bi-check-circled"></i> Ullamco laboris nisi ut aliquip ex ea commodo consequat.</li>
                            <li><i class="bi bi-check-circled"></i> Duis aute irure dolor in reprehenderit in voluptate velit.</li>
                            <li><i class="bi bi-check-circled"></i> Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate trideta storacalaperda mastiro dolore eu fugiat nulla pariatur.</li>
                        </ul>
                        <p>
                            Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate
                            velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in
                            culpa qui officia deserunt mollit anim id est laborum
                        </p>
                    </div>
                </div>

            </div>
        </section><!-- End TIP VIDEO Section -->


        <a href="cart"><i class="bi bi-cart-check"></i></a>

        <i class="bi bi-chat-dots"></i>

    </main><!-- End #main -->

    <%@ include file="common/footer.jsp" %>
    
    
    <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

    <!-- Vendor JS Files -->
    <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
    <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
    <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
    <script src="assets/vendor/php-email-form/validate.js"></script>

    <!-- Template Main JS File -->
    <script src="assets/js/main.js"></script>
	<script>
		function getParam(no){
			location.href = 'own-flower-detail?no=' + no;
		}
	</script>
</body>

</html>