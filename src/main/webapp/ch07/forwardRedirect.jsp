<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form method="post" action="forward_action.jsp">
		forward action: <input type="text" name="username" />
		<input type="submit" value="확인" />	
<%-- 첫번째 input창에서 입력값을 받고 두번째 input창에서 확인을 누르면 post방식으로 action에 적인 파일로 이동한다.  --%>
	</form>
	
	<form method="post" action="response_sendRedirect.jsp">
		sendRedirect action: <input type="text" name="username" />
		<input type="submit" value="확인" />	
		<%-- 첫번째 input창에서 입력값을 받고 두번째 input창에서 확인을 누르면 post방식으로 action에 적인 파일로 이동한다.  --%>
	</form>
</body>
</html>