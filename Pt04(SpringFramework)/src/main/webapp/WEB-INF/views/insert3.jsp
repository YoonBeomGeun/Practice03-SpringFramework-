<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="pink">
	<h3>상품등록 요청 되었음.</h3> <br>
	등록된 상품 수: ${result} <br>
	<a href="product.jsp">등록화면으로~</a> <br>
	<%
		int result = (int)request.getAttribute("result");
		if(result==1) {
			out.print("<img src=resources/img/o.png>");
		} else {
			out.print("<img src=resources/img/x.png>");
		}
	%>
</body>
</html>