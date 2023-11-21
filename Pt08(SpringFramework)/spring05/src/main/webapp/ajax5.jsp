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
				url: "fruit",
				success: function(x) {
					$("#result").html(x);
				}
			})
		})
		
		$("#b2").click(function() {
			$.ajax({
				url: "travel",
				success: function(x) {
					$("#result").html(x)
				}
			})
		})
	})//document.ready()
</script>
</head>
<body>
	<button id="b1">과일 목록을 가지고 와보자</button><br>
	<button id="b2">여행 목록을 가지고 와보자</button>
	<hr color="red">
	<div id="result">ajax 통신결과 들어가는 곳.</div>
</body>
</html>