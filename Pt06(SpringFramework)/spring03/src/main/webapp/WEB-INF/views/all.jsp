<%@page import="com.multi.mvc03.BookDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
 <!-- Bootstrap JS (optional) -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body bgcolor="pink">
	목록보기!<br>
	<%
		List<BookDTO> list = (List<BookDTO>)request.getAttribute("list");
	%>
	<div class="container mt-4">
	    <table class="table">
	        <thead>
	            <tr>
	                <th scope="col">ID</th>
	                <th scope="col">NAME</th>
	                <th scope="col">IMG</th> <!-- Added fourth column -->
	            </tr>
	        </thead>
	        <tbody>
	        <% for(BookDTO bag : list) { %>
	            <tr>
	                <td><%= bag.getId() %></td>
	                <td><a href="one?id=<%=bag.getId()%>"><%= bag.getName() %></a></td>
	                <td><img src= "resources/img/<%= bag.getImg() %>" width="150" height="150"></td> <!-- Added content for the fourth column -->
	            </tr>
	        <%} %>
	        </tbody>
	    </table>
	    <a href="book.jsp"><button class="btn btn-warning">메인화면으로~</button></a>
	</div>
</body>
</html>