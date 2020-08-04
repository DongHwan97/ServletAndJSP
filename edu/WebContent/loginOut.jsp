<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%if(session.isNew()||session.getAttribute("id")==null){ %>
	<%
		String msg = (String) request.getAttribute("error");
	if (msg == null)
		msg = "";
	%>
	<%=msg%>
	<form action="example10.jsp" method="post">
		ID:<input type="text" name="id"><br> PW:<input
			type="password" name="pw"> <input type="submit" value="입력">
	</form>
	<%}else{ %>
	<a href="example10.jsp">로그아웃</a>
	<%} %>
</body>
</html>