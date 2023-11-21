<%@page import="com.multi.mvc05.ReplyDTO"%>
<%@page import="java.util.List"%>
<%@page import="com.multi.mvc05.BbsDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="resources/js/jquery-3.7.1.js"></script>
<script type="text/javascript">
	$(function() {
		$("#b1").click(function() {
			$.ajax({
				url: "one",
				success: function(x) {
					x
				}
			})
		})
	})
</script>
</head>
<body bgcolor="pink">


<%
	//컨트롤러에서 모델로 지정할 request.GetAttribute("모델이름")
	BbsDTO bag = (BbsDTO)request.getAttribute("bag");
%>
게시판 id <%= bag.getId() %><br>
게시판 title <%= bag.getTitle() %><br>
게시판 content <%= bag.getContent() %><br>
게시판 writer <%= bag.getWriter() %>
<hr color="red">
댓글달기: <input id="reply"><br>
<button id="b1">댓글 달기!</button>
<hr color="red">
<%
	List<ReplyDTO> list = (List<ReplyDTO>)request.getAttribute("list");
	for(ReplyDTO dto : list) {
%>
	-<%= dto.getId() %>, <%= dto.getOriid() %>, <%= dto.getContent() %>, <%= dto.getWriter() %><br>
<% } %>
</body>
</html>