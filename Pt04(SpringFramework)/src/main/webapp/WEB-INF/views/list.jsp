<%@page import="java.util.ArrayList"%>
<%@page import="com.multi.mvc01.BbsDTO2"%>
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
	//컨트롤러에서 모델로 지정할 request.GetAttribute("모델이름")
	ArrayList<BbsDTO2> list = (ArrayList<BbsDTO2>)request.getAttribute("list");
	for(BbsDTO2 bag : list) {
%>
		게시판 id <%= bag.getId() %><br>
		게시판 title <a href="one?id=<%= bag.getId() %>"><%= bag.getTitle() %></a><br>
		게시판 writer <%= bag.getWriter() %>
		<hr color="lightblue">
<%	}%>
</body>
</html>