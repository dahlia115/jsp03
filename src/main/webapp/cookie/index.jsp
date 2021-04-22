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
	boolean bool = true; //사용자가 쿠키값이 없으면 참(팝업창 오픈)
	if (cookieArr != null) {
		for (Cookie c : cookieArr) {
			out.print("id : " + c.getName() + "<br>");
			out.print("value : " + c.getValue() + "<hr>");
			if(c.getValue().equals("myCookie")){ //마이쿠키라는 값이 있으면 거짓(팝업창이 안뜸)
				bool = false;
			}
		}
	}
	%>
	<% if(bool){ %>
	<script type="text/javascript">
		window.open("popup.jsp", "", "width=300, height=300, top=500,left=500")
	</script>
	<% } %>
</body>
</html>








