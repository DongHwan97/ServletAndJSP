<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>덧셈</title>
</head>
<body>
<h3>선언문으로 구현한 덧셈</h3>
<%!
public int sum(int a, int b){
return a+b;}
%>
덧셈결과:<%=this.sum(23,231) %>
</body>
</html>