<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%!public void work(String p, PageContext pc){
	try{
		JspWriter out = pc.getOut();
		if(p.equals("include")){
		out.print("include전");
		pc.include("copyright.jsp");
		out.print("include후");}
		else if(p.equals("forward")){
			pc.forward("copyright.jsp");
		}
	}catch(Exception e){
		System.out.println("err");
	}	
}%>
<%String p =request.getParameter("p");
this.work(p,pageContext);%>
</body>
</html>