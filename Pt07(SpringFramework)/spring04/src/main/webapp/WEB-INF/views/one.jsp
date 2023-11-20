<%@page import="com.multi.mvc04.BookDTO"%>
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
검색 결과<br>
<a href="book.jsp">메인화면으로~</a>
<%
	BookDTO bag = (BookDTO)request.getAttribute("bag");
%>
<div class="container mt-4">
    <table class="table">
        <thead>
            <tr>
                <th scope="col">아이디</th>
                <th scope="col">이름</th>
                <th scope="col">URL</th>
                <th scope="col">이미지</th> <!-- Added fourth column -->
            </tr>
        </thead>
        <tbody>
            <tr>
                <td><%= bag.getId() %></td>
                <td><%= bag.getName() %></td>
                <td><%= bag.getUrl() %></td>
                <td><%= bag.getImg() %></td> <!-- Added content for the fourth column -->
            </tr>
        </tbody>
    </table>
    <a href="list"><button class="btn btn-warning">목록보기</button></a>
</div>
</body>
</html>