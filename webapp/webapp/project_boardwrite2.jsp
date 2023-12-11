<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.io.PrintWriter"%>

<%@ page import="bbs.Bbs"%>

<%@ page import="bbs.BbsDAO"%>
<!DOCTYPE html>
<html lang="zxx">

  <head>
       <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
   <!-- //êµ¬ê¸í°í¸ -->
   <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
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
    
    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">	
    <!-- Custom styles for this template -->	
    <link href="css/reset_responsive.css" rel="stylesheet">    
	<link href="css/style2.css" rel="stylesheet">
    <link href="css/board.css" rel="stylesheet">
	<link href="css/submenu2.css" rel="stylesheet">
	<link href="css/border.css" rel="stylesheet">
  <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
        <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles1.css" rel="stylesheet" />
        
	<!--   -->
  </head>
  <body>
<%

		//로긴한사람이라면	 userID라는 변수에 해당 아이디가 담기고 그렇지 않으면 null값

		String userID = null;

		if (session.getAttribute("userID") != null) {

			userID = (String) session.getAttribute("userID");

	

		}

		int bbsID = 0;

		if (request.getParameter("bbsID") != null) {

			bbsID = Integer.parseInt(request.getParameter("bbsID"));

		}

		if (bbsID == 0) {

			PrintWriter script = response.getWriter();

			script.println("<script>");

			script.println("alert('유효하지 않은 글 입니다.')");

			script.println("location.href = 'tables.jsp'");

			script.println("</script>");

		}

		Bbs bbs = new BbsDAO().getBbs(bbsID);
		
	

	%>


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


<!-- í¤ë ë¤ë¹ê²ì´ì -->
	

			<%

				//라긴안된경우

				if (userID == null) {

			%>

			<ul class="nav navbar-nav navbar-right">

			

			</ul>

			<%

				} else {

			%>

			<ul class="nav navbar-nav navbar-right">

			

			</ul>

			<%

				}

			%>

		</div>

	</nav>

	<!-- 게시판 -->

	<div class="container">

		<div class="row">

			<form method="post" action="deleteAction.jsp?bbsID=<%= bbsID %>">

				<table class="table table-striped"

					style="text-align: center; border: 1px solid #dddddd">

					<thead>

						<tr>
							
							<th colspan="2"

								style="background-color: #eeeeee; text-align: center;">게시판

								글쓰기 </th>

						</tr>
						

					</thead>

					<tbody>

						<tr>
							<th>글제목</th>
							<td><input type="text" class="form-control" placeholder="글 제목" name="bbsTitle" maxlength="50" ReadOnly = "true" value = "<%= bbs.getBbsTitle() %>"></td>
							

						</tr>
						<tr>
							<th>글쓴이</th>
							<td><input type="text" class="form-control" placeholder="글 제목" name="bbsTitle" maxlength="50" ReadOnly = "true" value = "<%= bbs.getUserID() %>"></td>
						</tr>
						
						<tr>
							<th>유튜버</th>
							<td><input type="text" class="form-control" placeholder="유튜버" name="bbsTitle" maxlength="50" ReadOnly = "true" value = "<%= bbs.getBbsNick() %>"></td>
						</tr>
						
						<tr>
							<th>작성일</th>
							<td><input type="text" class="form-control" placeholder="글 제목" name="bbsTitle" maxlength="50" ReadOnly = "true" 
							value = "<%= bbs.getBbsDate().substring(0, 11) + bbs.getBbsDate().substring(11, 13) + "시" + bbs.getBbsDate().substring(14, 16) + "분"%>"></td>
							

						</tr>
						

						<tr>
							<th>내용</th>
							<td><input class="form-control" placeholder="글 내용" name="bbsContent" maxlength="2048" style="height: 350px;" ReadOnly = "true" value = "<%= bbs.getBbsContent() %>"
							></input></td>

						</tr>

					</tbody>

				</table>	
				<a href = "tables.jsp" class="btn btn-primary pull-right">취소</a>
			
				
				
				<%

				//글작성자 본인일시 수정 삭제 가능 

					if(userID != null && userID.equals(bbs.getUserID())){

				%>

						<a href="project_boardmodi.jsp?bbsID=<%= bbsID %>" class="btn btn-primary pull-right">수정</a>
						
						<a onclick = "return confirm('정말로 삭제하시겠습니까?')" href = "deleteAction.jsp?bbsID=<%= bbsID %>" class = "btn btn-primary pull-right">삭제</a>
						

				<%					

					}

				%>

			</form>

		</div>

	</div>







<footer class=" container d-flex flex-wrap justify-content-between align-items-center py-3 my-4 border-top">
    <p class="col-md-4 mb-0 text-muted">&copy; 2023 project, green</p>
    <ul class="nav col-md-4 justify-content-end">
        <li class="nav-item"><a href="index.jsp" class="nav-link px-2 text-muted">Home</a></li>
    </ul>
</footer>




  </body>

</html>
