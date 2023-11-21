<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="resources/js/jquery-3.7.1.js"></script>
<script>
	$(function() {
		$("#b1").click(function() {
			$.ajax({
				url: "movie",
				data:{
					title:$("#title").val(),
					price:$("#price").val()
				},
				success: function(x) {
					$("#result").html(x)
				}
			})
		})
	})
</script>
</head>
<body>
영화 제목: <input id="title" value="테넷">
영화 관람료: <input id="price" value="30000">
	<button id="b1">영화 관람 확인</button>
	<hr color="red">
	<div id="result">ajax 통신결과 들어가는 곳.</div>
</body>
</html>