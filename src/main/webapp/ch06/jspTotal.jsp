<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 자바 라이브러리에서 import 했음 -->
<%@ page import="java.util.*" %>
<%@ page import="java.lang.Math" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>jsp종합예제</h2>
	<hr>
	<!-- HTML용 주석 : HTML에서는 보임. -->
	<%-- 선언태그 : 멤버 변수, 메소드 선언 --%>
	<%!
		String[] members = {"김솔", "김상민", "송정희", "김영진"};
		
		int num1 = 10;
		
		int calc(int num2) {
			return num1+num2;
		}
	%>
	
	<%-- 표현태그 : 사칙연산, 메소드 호출 --%>
	<h3>
	1.calc(10) 메소드 실행 결과: <%=calc(10)%>
	<br />
	2. num1변수 출력 : <%=num1%>
	<br />
	3. 연산 출력 : <%=num1 + 1%>
	</h3>
	<hr>
	<%-- 스트립트릿 태그 : 모든 자바 코드 --%>
	<ul>
		<%for(String name : members) {%>
			<li><%=name%></li>
		<%} %>
	</ul>
	
	<ul>
		<%
		for(String name : members) {
			out.println("<li>"+name+"</li>");
		}
		%>
	</ul>
	<hr>
	<!-- jsp파일을 만들어서 첨부할 수 있음 간단하다! -->
	<%@ include file="../Hello.jsp" %>
	<hr>
	<% Date day = new Date();%>
	현재 날짜 : <%= day %>
	<!-- Math 라이브러리는 static 메소드라서 그냥 바로 사용가능! -->
	<br>
	5의 제곱 : <%=Math.pow(5,2) %>
	<br>
	12의 제곱 : <%= Math.pow(12, 2) %>
</body>
</html>