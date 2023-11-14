<%@page import="com.multi.mvc03.BookDTO"%>
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
	검색 성공<br>
	<%
		BookDTO dto = (BookDTO)request.getAttribute("dto");
	%>
	<div class="container mt-4">
    <table class="table">
        <thead>
            <tr>
                <th scope="col">ID</th>
                <th scope="col">NAME</th>
                <th scope="col">URL</th>
                <th scope="col">IMG</th> <!-- Added fourth column -->
            </tr>
        </thead>
        <tbody>
            <tr>
                <td><%= dto.getId() %></td>
                <td><%= dto.getName() %></td>
                <td><%= dto.getUrl() %></td>
                <td><%= dto.getImg() %></td> <!-- Added content for the fourth column -->
            </tr>
        </tbody>
    </table>
    <a href="all">
    	<button class="btn btn-warning">북마크 목록으로</button>
    </a>
	</div>
</body>

</html>