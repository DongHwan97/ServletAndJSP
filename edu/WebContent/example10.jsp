<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%if(request.getMethod().equals("POST")){ %>
	<%
String id =request.getParameter("id");
String pw =request.getParameter("pw");

if(id.isEmpty()||pw.isEmpty()){
	request.setAttribute("error", "아이디혹은 비밀번호를 입력하시오");
	RequestDispatcher rd = request.getRequestDispatcher("loginOut.jsp");
	rd.forward(request,response);
	return;
}

if(session.isNew()||session.getAttribute("id")==null){
	session.setAttribute("id",id);
	out.print("로그인완료");
}else{
	out.print("이미로그인상태입니다");
}
%>
<%=id %><%=pw %>
<%
}else if(request.getMethod().equals("GET")){
	if(session!=null&&session.getAttribute("id")!=null){
		session.invalidate();
		out.print("로그아웃완료");
	}
	else{
		out.print("로그인상태아님");
	}
}
%>
<%
RequestDispatcher rd = request.getRequestDispatcher("loginOut.jsp");
rd.forward(request,response);
%>
</body>
</html>