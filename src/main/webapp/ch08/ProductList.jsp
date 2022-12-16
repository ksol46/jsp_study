<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>상품목록</h2>
	<hr>
	<table border="1">
		<tr>
			<th>번호</th>
			<th>상품명</th>
			<th>가격</th>
		</tr>

		<!-- for(Product p : products) -->
		<c:forEach var="p" varStatus="i" items="${products1}">		
		<tr>
			<td>${i.count}</td>
			<td><a href="/jsp_study/pcontrol?action=info&id=${p.id}">${p.name}</a></td> <!-- p아이디가 상품마다 다르죠~~! 검사 페이지에 들어가면 다른걸 볼 수 있음!! -->
			<!-- 카운트 된 숫자를 누르면 각 태그된 링크로 들어가짐. -->
			<td>${p.price}</td>
		</tr>
		</c:forEach>
	</table>
</body>
</html>