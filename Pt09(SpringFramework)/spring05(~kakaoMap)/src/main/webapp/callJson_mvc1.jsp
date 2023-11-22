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
		$('#b1').click(function() {
			$.ajax({
				url: "json.jsp",
				dataType: "json",
				success: function(json) {
					//{id:root, pw:1234, tel:011}
					$('#result').html(json.tel)
				}//success
			})//ajax
		})//b1
		
		$('#b2').click(function() {
			$.ajax({
				url: "json2.jsp",
				dataType: "json",
				success: function(array) {
					$('#result').html(array[0].tel)
				}//success
			})//ajax
		})//b2
		
		$("#b3").click(function() {
			$.ajax({
				url: "json3.jsp",
				success: function(response) {
					$("#result").html(response)
				}
			})
		})
		
	})//$
</script>
</head>
<body>
	<button id="b1">JSON으로 받아와보자.!</button>
	<button id="b2">JSON2으로 받아와보자.!</button>
	<button id="b3">JSON3 받아와보자.(달러, 엔화, 유로)</button>
	<button id="b4">JSON4 받아와보자.(주가정보)</button>
	<hr color="red">
	<div id="result">ajax통신 결과들어가는 곳.</div>
</body>
</html>