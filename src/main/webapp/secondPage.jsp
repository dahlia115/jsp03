<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>secondPage.jsp</h1>
	<!-- page와 request는 설정 값이 사라진다 -->
	page= <%= pageContext.getAttribute("name") %><br>
	request= <%= request.getAttribute("name")%><br>
	session= <%= session.getAttribute("name") %><br><!-- 브라우저가 살아있는 동안 유지 -->
	application= <%= application.getAttribute("name") %><br><!-- 서버가 살아있는 동안 유지 -->
	<a href="thirdPage.jsp">thirdPage.jsp이동</a>
</body>
</html>