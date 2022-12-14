<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% request.setCharacterEncoding("UTF-8"); %>

<!-- 위 파일을 첨부함과 동시에 밑에 param으로 데이터가 넘겨진다. -->
	<jsp:forward page="page_control_end.jsp">
		<jsp:param value="010-1234-5678" name="tel" />
	</jsp:forward>
	

</body>
</html>