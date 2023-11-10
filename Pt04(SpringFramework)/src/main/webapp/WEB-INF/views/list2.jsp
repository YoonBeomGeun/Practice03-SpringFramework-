<%@page import="java.util.ArrayList"%>
<%@page import="com.multi.mvc01.ProductDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="pink">
<%
	ArrayList<ProductDTO> list = (ArrayList<ProductDTO>)request.getAttribute("list");
%>
<table align="center" border=1>
	<tr>
		<td width=150>상품 id</td>
		<td width=150>상품 title</td>
		<td width=150>상품 img</td>
	</tr>
	
	<% for(ProductDTO bag : list) {%>
	<tr bgcolor="lightblue">
		<td><%= bag.getId() %></td>
		<td><a href="one2?id=<%= bag.getId() %>"><%= bag.getTitle() %></a></td>
		<td><img src="resources/img/<%= bag.getImg() %>" width=200 height=150></td>
	</tr>
	<%} %>
	
</table>

</body>
</html>