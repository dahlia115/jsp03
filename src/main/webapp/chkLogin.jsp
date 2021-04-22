<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>chkLogin.jsp<br>
	<%
		String id="1", pwd="1"; //디비 연동 전이라 아이디와 비밀번호 1로 가정 
		String inputId = request.getParameter("id");
		String inputPwd = request.getParameter("pwd");
		if(id.equals(inputId) && pwd.equals(inputPwd)){
			response.sendRedirect("main.jsp"); //로그인 성공
		}else{
			response.sendRedirect("loginForm.jsp");//로그인 실패
		}
	%>

</body>
</html>