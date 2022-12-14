<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- Calculator calc - new Calculator(); usebean은 객체를 생성해주는것과 같다. -->
<jsp:useBean id="calc" class="ch07.Calculator"/>
<!-- id : 사용할 이름 , class : 패키지명.클래스명 -->

<jsp:setProperty name="calc" property="*" />
<!-- name은 html파일에 있는 name이다. setter 메소드를 실행해서 자동으로 값을 넣어준다.-->
<!-- cal.setN1(request.getParameter("n1"));  -->
<!-- cal.setN2(request.getParameter("n2"));  -->
<!-- cal.setOp(request.getParameter("op")); 와 같다. -->

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
결과 : <%=calc.calc() %>
<!-- useBean id.클래스에서 만들어놓은 메소드 -->
</body>
</html>