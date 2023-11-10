<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	//세션 끊기 - 각 브라우저에 해당하는 서버 램에 저장했던 값들을 모두 삭제
	//id 삭제 ==> session(내장객체)
	session.invalidate(); // 세션을 무효로 만듦
	//첫 페이지로 이동 ==> 서버가 브라우저에 명령하면 됨(response 객체,내장됨)
	response.sendRedirect("member.jsp");
%>