<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>세션이 만료 되었습니다.(delSession)</h1>
	<%
		//session.removeAttribute("nickName");
		//session.setMaxInactiveInterval(5);//5초 후 모든 세션 종료(기본 30분)
		session.invalidate();//세션 바로 종료
	%>
	<a href="getSession.jsp">getSession이동</a>
	<a href="setSession.jsp">setSession이동</a>
</body>
</html>