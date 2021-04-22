<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	index.jsp
	<br> index페이지 입니다.
	<br>
	<hr>
	<%
	//쿠키 생성
	Cookie cookie = new Cookie("testCookie", "myCookie");//
	cookie.setMaxAge(5);//쿠키 지속시간(초)
	response.addCookie(cookie);//만든 쿠키를 사용자에게 응답해준다.

	Cookie[] cookieArr = request.getCookies();//배열로 모든 쿠키를 얻어온다.
	if (cookieArr != null) {
		for (Cookie c : cookieArr) {
			out.print("id : " + c.getName() + "<br>");
			out.print("value : " + c.getValue() + "<hr>");
		}
	}
	%>
	<script type="text/javascript">
		window.open("popup.jsp", "", "width=300, height=300, top=500,left=500")
	</script>
</body>
</html>








