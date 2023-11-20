<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<img src="resources/img/go1.png" width="350" height="200">
<h3>로그인</h3>
<form action="login">
	아이디: <input type="text" name="id"><br>
	이름: <input type="text" name="name"><br>
	<button>로그인 요청</button>
</form>
<hr color="blue">
<h3>북마크 정보 검색</h3>
<form action="one">
	아이디: <input type="text" name="id"><br>
	<button>서버로 전송</button>
</form>
<hr color="blue">
<h3>북마크 전체 검색</h3>
<a href="list">
	<button>전체 검색 요청</button>
</a>
<hr color="blue">
<h3>북마크 추가</h3>
<form action="insert">
	아이디: <input type="text" name="id"><br>
	이름: <input type="text" name="name"><br>
	URL: <input type="text" name="url"><br>
	IMG: <input type="text" name="img"><br>
	<button>서버로 전송</button>
</form>
<hr color="blue">
<h3>북마크 수정</h3>
<form action="update">
	아이디: <input type="text" name="id"><br>
	이름: <input type="text" name="name"><br>
	<button>서버로 전송</button>
</form>
<hr color="blue">
<h3>북마크 삭제</h3>
<form action="delete">
	아이디: <input type="text" name="id"><br>
	<button>서버로 전송</button>
</form>
</body>
</html>