<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>firstPage.jsp<br>
	<%
		//설정 값 유지 범위 확인하기
		//같은 페이지에서 설정한 값들은 유지 된다.
		pageContext.setAttribute("name", "page");
		request.setAttribute("name", "request");
		session.setAttribute("name", "session");
		application.setAttribute("name", "application");
	%>
	<h1>firstPage.jsp</h1>
	page= <%= pageContext.getAttribute("name") %><br><!-- 이 페이지에서만 유지 -->
	request= <%= request.getAttribute("name") %><br><!-- 다음 페이지까지 유지 할 방법이 있다. -->
	session= <%= session.getAttribute("name") %><br><!-- 브라우저가 살아있는 동안 유지 -->
	application= <%= application.getAttribute("name") %><br><!-- 서버가 살아있는 동안 유지 -->
	
	<%
		//forward로 다음 페이지로 전달 가능
		request.getRequestDispatcher("secondPage.jsp").forward(request, response);	
	%>
	<a href="secondPage.jsp">secondPage.jsp이동</a>
	
</body>
</html>