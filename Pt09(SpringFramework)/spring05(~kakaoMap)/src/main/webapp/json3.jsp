<%@page import="org.json.simple.JSONObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	JSONObject json3 = new JSONObject();
	json3.put("dollar", "1294.00");
	json3.put("yan", "854.77");
	json3.put("yuro", "1404.12");
	out.print(json3.toJSONString()); //{id:root, pw:1234, tel:011}
%>