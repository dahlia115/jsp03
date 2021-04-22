<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>게시글 입니다</h1>
	<p>공지사항 입니다.</p>
	<br> jsp appfication을 이용한 조회수 올리기.
	<br>
	<a href="application_table.jsp">돌아가기</a>
	<%
	String cnt = (String) application.getAttribute("cnt");
	if (cnt == null) {
		application.setAttribute("cnt", "1");
	} else {
		int cnt01 = Integer.parseInt(cnt);//인트로 형변환 후 증가
			cnt01++;
		application.setAttribute("cnt", cnt01+"");
	}
	%>
</body>
</html>