<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String number=request.getParameter("num");
	int num = Integer.parseInt(number);
	for (int i=1; i<=9; i++){
		out.println(num + " x " + i + " = " + num*i + "<br>");
	}
%>
</body>
</html>