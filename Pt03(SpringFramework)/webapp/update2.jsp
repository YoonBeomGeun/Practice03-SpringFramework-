<%@page import="com.multi.mvc01.BbsDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- 
    	1. 앞 페이지에서 전달된 데이터들을 가방을 만들어서 다 집어넣기
    	2. dao를 이용해서 db처리
    	3. dao로부터 받은 결과가 1이면 alert("수정성공!!"), bbs.jsp화면으로 넘김
    	4. 결과가 1이 아니면 alert("수정실패!!") 띄우기
     -->
     
    <jsp:useBean id="bag" class="com.multi.mvc01.BbsDTO2"></jsp:useBean>
    <jsp:setProperty property="*" name="bag"/>
    
    <%
    	BbsDAO dao = new BbsDAO();
    	int result = dao.update(bag);
    	if(result==1) {
    %>
    <script>
   		alert("수정 성공!!");
   		location.href="bbs.jsp";
    </script>
    <%		
    	} else {
    %>
    <script>
    	alert("수정 실패!!");
    </script>
    <%
    	}
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>