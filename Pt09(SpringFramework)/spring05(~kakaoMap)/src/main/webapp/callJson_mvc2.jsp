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
				url: "string",
				//dataType: "json",
				success: function(string) {
					alert(string);
					$("#result").text(string)
					let img = "<img src='resources/img/go1.png'>"
					if(string=="winner") {
							img="<img src='resources/img/1.png'>"
					}
					$("#result").append(img)
				}
			})
		})
		
		$("#b2").click(function() {
			$.ajax({
				url: "json1",
				//dataType: "json",
				success: function(json) {
					//alert(json);
					//$("#result").text(json)
					//json을 프린트할 일이 있으면 브라우저의 console을 사용하는 것이 더 편하다
					//더 자세히 출려되기때문!!
					console.log(json)
					console.log(json.writer)
					
					id_value = json.id
					title_value=json.title
					content_value=json.content
					writer_value=json.writer
					data = id_value + " " + title_value + " " + content_value + " " + writer_value
					$("#result").append(data+"<br>")
				}
			})
		})
		
		$("#b3").click(function() {
			$.ajax({
				url: "json2",
				success: function(array) {
					console.log(array)
					$(array).each(function(i, json) { //function(인덱스저장변수) 순서대로 써주어야함.
						id_value = json.id
						title_value=json.title
						content_value=json.content
						writer_value=json.writer
						data = id_value + " " + title_value + " " + content_value + " " + writer_value
						$("#result").append(data+"<br>")
					})
				}
			})
		})
		
	})//$
</script>
</head>
<body>
	<button id="b1">JSON으로 받아와보자.!(string)</button>
	<button id="b2">JSON2으로 받아와보자.!(json)</button>
	<button id="b3">JSON3으로 받아와보자.!(array)</button>
	<hr color="red">
	<div id="result" style="background:pink; width:800px; height:200px;">ajax통신 결과들어가는 곳.
	<hr color="blue">
	</div>
</body>
</html>