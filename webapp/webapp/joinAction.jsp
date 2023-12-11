<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="user.UserDAO2" %> <!-- userdao의 클래스 가져옴 -->
<%@ page import="java.io.PrintWriter" %> <!-- 자바 클래스 사용 -->
<% request.setCharacterEncoding("UTF-8"); %>



<!-- 한명의 회원정보를 담는 user클래스를 자바 빈즈로 사용 / scope:페이지 현재의 페이지에서만 사용-->

<jsp:useBean id="user" class="user.User" scope="page" />
<jsp:setProperty name="user" property="userID" />
<jsp:setProperty name="user" property="userPassword" /> 
<jsp:setProperty name="user" property="userPassword2" />
<jsp:setProperty name="user" property="userName" />
<jsp:setProperty name="user" property="userEmail" />

<!DOCTYPE html>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>jsp 게시판 웹사이트</title>
</head>
<body>
	<%

		if (user.getUserID() == null || user.getUserPassword() == null || user.getUserPassword2() == null
			|| user.getUserName() == null || user.getUserEmail() == null){
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('입력이 안 된 사항이 있습니다.')");
				script.println("history.back()");
				script.println("</script>");

			} 
		else if(!user.getUserPassword().equals(user.getUserPassword2()))
		{
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('비밀번호를 확인하시오.')");
			script.println("history.back()");
			script.println("</script>");
			
		}
	
		
		
		else{

				UserDAO2 userDAO2 = new UserDAO2(); //인스턴스생성
				int result = userDAO2.join(user);					

				if(result == -1){ // 아이디가 기본키기. 중복되면 오류.
					PrintWriter script = response.getWriter();
					script.println("<script>");
					script.println("alert('이미 존재하는 아이디 입니다.')");
					script.println("history.back()");
					script.println("</script>");
				}

				//가입성공
				else {
					PrintWriter script = response.getWriter();
					script.println("<script>");
					script.println("alert('회원가입 성공')");
					script.println("location.href='login.jsp'");
					script.println("</script>");
					}
			}
			%>

</body>
</html>