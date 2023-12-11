<%@ page language="java" contentType="text/html; charset=UTF-8"

pageEncoding="UTF-8"%>

<%@ page import="user.UserDAO" %> <!-- userdao의 클래스 가져옴 -->
<%@ page import="java.io.PrintWriter" %> <!-- 자바 클래스 사용 -->
<% request.setCharacterEncoding("UTF-8"); %>


<!-- 한명의 회원정보를 담는 user클래스를 자바 빈즈로 사용 / scope:페이지 현재의 페이지에서만 사용-->

<jsp:useBean id="user" class="user.User" scope="page" />
<jsp:setProperty name="user" property="userID" />
<jsp:setProperty name="user" property="userPassword" />
<!DOCTYPE html>

<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>jsp 게시판 웹사이트</title>

</head>

<body>

<%

UserDAO userDAO = new UserDAO(); //인스턴스생성

int result = userDAO.login(user.getUserID(), user.getUserPassword());


if(result == 1){


PrintWriter script = response.getWriter();
session.setAttribute("userID", user.getUserID());

script.println("<script>");

script.println("alert('로그인에 성공하였습니다.')"); 
script.println("location.href='index.jsp'");

script.println("</script>");

}


else if(result == 0){

PrintWriter script = response.getWriter();

script.println("<script>");

script.println("alert('비밀번호가 틀립니다.')");

script.println("history.back()");

script.println("</script>");


}

else if(result == -1){

PrintWriter script = response.getWriter();

script.println("<script>");

script.println("alert('존재하지 않는 아이디 입니다.')");

script.println("history.back()");

script.println("</script>");


}




else if(result == -2){

PrintWriter script = response.getWriter();

script.println("<script>");

script.println("alert('DB오류가 발생했습니다.')");

script.println("history.back()");

script.println("</script>");

} 

%>

​
	</body>
</html>