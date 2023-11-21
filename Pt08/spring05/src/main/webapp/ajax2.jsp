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
		$('#b1').click(function() {
			$.ajax({
				url: "test",
				success: function(x) {
					//alert("ajax 통싱결과>> " + x)
					$("#result").html(x)
				} //success
			}) //url, success
		}) //b1
		
		$("#b2").click(function() {
			$.ajax({
				url: "test2",
				success: function(x) {
					$("#result").html(x)
				}
			})
		})
	}) //$
</script>
</head>
<body>
	<button id="b1">컴퓨터 구매 항목 확인(test)</button>
	<hr color="red">
	<button id="b2">컴퓨터 구매 항목 확인(test2)</button>
	<hr color="red">
	<div id="result">ajax 통신결과 들어가는 곳.</div>
	
</body>
</html>