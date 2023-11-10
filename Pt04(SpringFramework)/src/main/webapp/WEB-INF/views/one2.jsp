<%@page import="com.multi.mvc01.ProductDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body align="center" bgcolor="pink">
	<%
		ProductDTO bag = (ProductDTO)request.getAttribute("bag");
	%>
	<table align="center" border=1>
		<tr align="center">
			<td>상품 id</td>
			<td bgcolor="lightblue"><%= bag.getId() %></td>
		</tr>
		<tr align="center">
			<td>상품 title</td>
			<td bgcolor="lightblue"><%= bag.getTitle() %></td>
		</tr>
		<tr align="center">
			<td>상품 content</td>
			<td bgcolor="lightblue"><%= bag.getContent() %></td>
		</tr>
		<tr align="center">
			<td>상품 price</td>
			<td bgcolor="lightblue"><%= bag.getPrice() %></td>
		</tr>
		<tr align="center">
			<td>상품 company</td>
			<td bgcolor="lightblue"><%= bag.getCompany() %></td>
		</tr>
		<tr align="center">
			<td>상품 img</td>
			<td bgcolor="lightblue">
				<img src="resources/img/<%= bag.getImg() %>" width=300 height=300>
			</td>
		</tr>
	</table>
	<a href="list2"><button>상품 전체 목록 보기</button></a>
</body>
</html>