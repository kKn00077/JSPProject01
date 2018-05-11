<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="style.css" />
</head>
<body>

<div id="marginpage">
<%
	request.setCharacterEncoding("utf-8");

	String name=request.getParameter("name");
	String id=request.getParameter("id");
	String pw=request.getParameter("pw");
	String pw_again=request.getParameter("pw_again");
	
	out.println("<strong>"+name+"<strong>님의 가입을 환영합니다!");
%>
<a href="main.jsp">메인으로</a>
</div>
</body>
</html>