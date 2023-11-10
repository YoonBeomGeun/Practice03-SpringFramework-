<%@page import="com.multi.mvc01.BbsDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!--
   	1.id를 받아서 저장, 받아서 dto에 저장
   	2. dao.db처리
   	3. bbs.jsp로 넘어가기 전에 alert() 띄워주기
    -->

<jsp:useBean id="bag" class="com.multi.mvc01.BbsDTO2"></jsp:useBean>
<jsp:setProperty property="id" name="bag" />

<%
//스크립트릿(코드블록)
	BbsDAO dao = new BbsDAO();
	int result = dao.delete(bag);
	if (result == 1) {
%>
	<script>
    	alert("삭제 완료")!
   		location.href="bbs.jsp";
    </script>
<%
	} else {
%>
	<script>
		alert("삭제 중 문제 발생");
	</script>
<%
	}
	response.sendRedirect("bbs.jsp");
%>
<!DOCTYPE html>
