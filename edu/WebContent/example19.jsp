<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL</title>
</head>
<body>
${param.id} / ${param.pw}<br>
${param.["id"]} / ${param.["pw"]}

</body>
</html>