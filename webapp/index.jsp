<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
   <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="description" content="Anime Template">
    <meta name="keywords" content="Anime, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>BestTube</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Mulish:wght@300;400;500;600;700;800;900&display=swap"
    rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="css/plyr.css" type="text/css">
    <link rel="stylesheet" href="css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css">
</head>

<body>

    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

    <!-- Header Section Begin -->
    <header class="header">
        <div class="container">
            <div class="row">
                <div class="col-lg-2">
                    <div class="header__logo">
                        <a href="./index.jsp">
                            <img src="img/logo.png" alt="">
                        </a>
                    </div>
                </div>
            
				
                <div class="col-lg-8">
                    <div class="header__nav">
                        <nav class="header__menu mobile-menu">
                            <ul>
                            <% 
	//로긴한사람이라면	 userID라는 변수에 해당 아이디가 담기고 그렇지 않으면 null값
			String userID = null;
			if (session.getAttribute("userID") != null) {
				userID = (String) session.getAttribute("userID");
			}
			%>
                            <%
				//라긴안된경우
				if (userID == null) {
			%>
				 <li class="active"><a href="./index.jsp">홈페이지</a></li>
                               <li><a href="#">메뉴 <span class="arrow_carrot-down"></span></a>
                                    <ul class="dropdown">
                                        <li><a href="./tables.jsp" >게시판</a></li>
                                        <li><a href="./signup.jsp">회원가입</a></li>
                                        <li><a href="./login.jsp">로그인</a></li>
                                    </ul>
                                </li>
                                <li><a href="./tables.jsp" >게시판</a></li>
                                <li><a href="./login.jsp">로그인</a></li>
			<%
				} else {

			%>
				 <li class="active"><a href="./index.jsp">홈페이지</a></li>
                               <li><a href="#">메뉴 <span class="arrow_carrot-down"></span></a>
                                    <ul class="dropdown">
                                        <li><a href="./tables.jsp" >게시판</a></li>
                                        <li><a href="./signup.jsp">회원가입</a></li>
                                        <li><a href="./login.jsp">로그아웃</a></li>
                                    </ul>
                                </li>
                                <li><a href="./tables.jsp" >게시판</a></li>
                                <li><a href="./logout.jsp">로그아웃</a></li>

			<%
				}
			%>
                               
                            </ul>
                        </nav>
                    </div>
                </div>
                
                
                <div class="col-lg-2">
                    <div class="header__right">
                        <a href="#" class="search-switch"><span class="icon_search"></span></a>
                        <a href="./login.jsp"><span class="icon_profile"></span></a>
                    </div>
                </div>
            </div>
            <div id="mobile-menu-wrap"></div>
        </div>
    </header>
    <!-- Header End -->

    <!-- Hero Section Begin -->
    <section class="hero">
        <div class="container">
            <div class="hero__slider owl-carousel">
                <div class="hero__items set-bg" data-setbg="img/hero/mon.jpg">
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="hero__text">
                                <div class="label">youtube</div>
                                <h2>먹방 유튜버 문복희</h2>
                                <p>구독자 922만명</p>
                                <a href="./anime-details2.jsp"><span>보러가기</span> <i class="fa fa-angle-right"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="hero__items set-bg" data-setbg="img/hero/DDDD.jpg">
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="hero__text">
                                <div class="label">youtube</div>
                                <h2>게임 유튜버 뜨뜨뜨뜨</h2>
                                <p>구독자 152만명</p>
                                <a href="./anime-details4.jsp"><span>보러가기</span> <i class="fa fa-angle-right"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
              
        </div>
    </section>
    <!-- Hero Section End -->

    <!-- Product Section Begin -->
    <section class="product spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <div class="trending__product">
                        <div class="row">
                            <div class="col-lg-8 col-md-8 col-sm-8">
                                <div class="section-title">
                                    <h4>먹방</h4>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-4 col-sm-4">
                                <div class="btn__all">
                                
                                </div>
                            </div>
                        </div>
                        <div class="row">
                          
                            <div class="col-lg-4 col-md-6 col-sm-6">
                                <div class="product__item">
                                    <div class="product__item__pic set-bg" data-setbg="img/trending/zzang.jpg">
                                        <div class="ep">18 / 18</div>
                                        <div class="comment"><i class="fa fa-comments"></i> 11</div>
                                        <div class="view"><i class="fa fa-eye"></i> 9141</div>
                                    </div>
                                    <div class="product__item__text">
                                        <ul>
                                            <li>youtube</li>
                                            
                                        </ul>
                                        <h5><a href="./anime-details.jsp">먹방 유튜버 쯔양</a></h5>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6 col-sm-6">
                                <div class="product__item">
                                    <div class="product__item__pic set-bg" data-setbg="img/trending/mon.jpg">
                                        <div class="ep">18 / 18</div>
                                        <div class="comment"><i class="fa fa-comments"></i> 11</div>
                                        <div class="view"><i class="fa fa-eye"></i> 9141</div>
                                    </div>
                                    <div class="product__item__text">
                                        <ul>
                                            <li>youtube</li>
                                          
                                        </ul>
                                        <h5><a href="./anime-details3.jsp">먹방 유튜버 문복희</a></h5>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6 col-sm-6">
                                <div class="product__item">
                                    <div class="product__item__pic set-bg" data-setbg="img/trending/sang.jpg">
                                        <div class="ep">18 / 18</div>
                                        <div class="comment"><i class="fa fa-comments"></i> 11</div>
                                        <div class="view"><i class="fa fa-eye"></i> 9141</div>
                                    </div>
                                    <div class="product__item__text">
                                        <ul>
                                            <li>youtube</li>
                                         
                                        </ul>
                                        <h5><a href="./anime-details2.jsp">먹방 유튜버 상해기</a></h5>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="popular__product">
                        <div class="row">
                            <div class="col-lg-8 col-md-8 col-sm-8">
                                <div class="section-title">
                                    <h4>게임</h4>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-4 col-sm-4">
                                <div class="btn__all">
                                    
                                </div>
                            </div>
                        </div>
                        <div class="row">
                           
                            <div class="col-lg-4 col-md-6 col-sm-6">
                                <div class="product__item">
                                    <div class="product__item__pic set-bg" data-setbg="img/popular/DDDD.jpg">
                                        <div class="ep">18 / 18</div>
                                        <div class="comment"><i class="fa fa-comments"></i> 11</div>
                                        <div class="view"><i class="fa fa-eye"></i> 9141</div>
                                    </div>
                                    <div class="product__item__text">
                                        <ul>
                                            <li>youtube</li>
                                            
                                        </ul>
                                        <h5><a href="./anime-details4.jsp">게임 유튜버 뜨뜨뜨뜨</a></h5>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6 col-sm-6">
                                <div class="product__item">
                                    <div class="product__item__pic set-bg" data-setbg="img/popular/lee.jpg">
                                        <div class="ep">18 / 18</div>
                                        <div class="comment"><i class="fa fa-comments"></i> 11</div>
                                        <div class="view"><i class="fa fa-eye"></i> 9141</div>
                                    </div>
                                    <div class="product__item__text">
                                        <ul>
                                         <li>youtube</li>
                                           
                                        </ul>
                                        <h5><a href="./anime-details5.jsp">게임 유튜버 이상호</a></h5>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6 col-sm-6">
                                <div class="product__item">
                                    <div class="product__item__pic set-bg" data-setbg="img/popular/kim.jpg">
                                        <div class="ep">18 / 18</div>
                                        <div class="comment"><i class="fa fa-comments"></i> 11</div>
                                        <div class="view"><i class="fa fa-eye"></i> 9141</div>
                                    </div>
                                    <div class="product__item__text">
                                        <ul>
                                           <li>youtube</li>
                                        </ul>
                                        <h5><a href="./anime-details6.jsp">게임 유튜버 킴성태</a></h5>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="recent__product">
                        <div class="row">
                          
                            <div class="col-lg-4 col-md-4 col-sm-4">
                                <div class="btn__all">
                                   
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-4 col-md-6 col-sm-6">
                                <div class="product__item">
                                    <div class="product__item__pic set-bg" data-setbg="#">
                                     
                                    </div>
                                    <div class="product__item__text">
                                        <ul>
                                           
                                        </ul>
                                     
                                    </div>
                                </div>
                            </div>
                 
                           
                            <div class="col-lg-4 col-md-6 col-sm-6">
                                <div class="product__item">
                                    <div class="product__item__pic set-bg" data-setbg="#">
                                        
                                    </div>
                                    <div class="product__item__text">
                                        <ul>
                                          
                                        </ul>
                                      
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6 col-sm-6">
                                <div class="product__item">
                                    <div class="product__item__pic set-bg" data-setbg="#">
                                        
                                    </div>
                                    <div class="product__item__text">
                                        <ul>
                                           
                                        </ul>
                                     
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 col-sm-8">
                    <div class="product__sidebar">
                        <div class="product__sidebar__view">
                            <div class="section-title">
                                <h5>영상목록</h5>
                            </div>
                            <ul class="filter__controls">
                                <li class="active" data-filter="*">전체</li>
                                <li data-filter=".week">먹방</li>
                                <li data-filter=".month">게임</li>
                            </ul>
                            <div class="filter__gallery">
                                <div class="product__sidebar__view__item set-bg mix day week"
                                data-setbg="img/sidebar/zzang1.jpg">
                                <div class="ep">18 / ?</div>
                                <div class="view"><i class="fa fa-eye"></i> 9141</div>
                                <h5><a href="./anime-details.jsp">쯔양</a></h5>
                            </div>
                              <div class="product__sidebar__view__item set-bg mix month"
                        data-setbg="img/sidebar/DDDD1.jpg">
                        <div class="ep">18 / ?</div>
                        <div class="view"><i class="fa fa-eye"></i> 9141</div>
                        <h5><a href="./anime-details4.jsp">뜨뜨뜨뜨</a></h5>
                    </div>
                               <div class="filter__gallery">
                                <div class="product__sidebar__view__item set-bg mix day week"
                                data-setbg="img/sidebar/mon1.jpg">
                                <div class="ep">18 / ?</div>
                                <div class="view"><i class="fa fa-eye"></i> 9141</div>
                                <h5><a href="./anime-details3.jsp">문복희</a></h5>
                            </div>
                            <div class="product__sidebar__view__item set-bg mix years month"
                    data-setbg="img/sidebar/lee1.jpg">
                    <div class="ep">18 / ?</div>
                    <div class="view"><i class="fa fa-eye"></i> 9141</div>
                    <h5><a href="./anime-details5.jsp">이상호</a></h5>
                </div>
                            <div class="product__sidebar__view__item set-bg mix week"
                            data-setbg="img/sidebar/sang1.jpg">
                            <div class="ep">18 / ?</div>
                            <div class="view"><i class="fa fa-eye"></i> 9141</div>
                            <h5><a href="./anime-details2.jsp">상해기</a></h5>
                        </div>
                      
                       <div class="product__sidebar__view__item set-bg mix month"
              			  data-setbg="img/sidebar/kim1.jpg">
                  <div class="ep">18 / ?</div>
                       <div class="view"><i class="fa fa-eye"></i> 9141</div>
                <h5><a href="./anime-details6.jsp">킴성태</a></h5>
            </div>
        </div>
    </div>
    
    
       
       
       
       
    </div>
</div>
</div>
</div>
</div>
</section>
<!-- Product Section End -->

<!-- Footer Section Begin -->
<footer class="footer">
    <div class="page-up">
        <a href="#" id="scrollToTopButton"><span class="arrow_carrot-up"></span></a>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-lg-3">
                <div class="footer__logo">
                    <a href="./index.jsp"><img src="img/logo.png" alt=""></a>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="footer__nav">
                    <ul>
                         <li class="active"><a href="./index.jsp">홈</a></li>
                            <li><a href="#" class="arrow_carrot-up" class="primary-btn">메뉴</a></li>
                            <li><a href="./blog.jsp">게시판</a></li>
                            <li><a href="./login.jsp">로그인</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-3">
                <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
                  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>

              </div>
          </div>
      </div>
  </footer>
  <!-- Footer Section End -->

  <!-- Search model Begin -->
  <div class="search-model">
    <div class="h-100 d-flex align-items-center justify-content-center">
        <div class="search-close-switch"><i class="icon_close"></i></div>
        <form class="search-model-form">
            <input type="text" id="search-input" placeholder="Search here.....">
        </form>
    </div>
</div>
<!-- Search model end -->

<!-- Js Plugins -->
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/player.js"></script>
<script src="js/jquery.nice-select.min.js"></script>
<script src="js/mixitup.min.js"></script>
<script src="js/jquery.slicknav.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/main.js"></script>


</body>

</html>