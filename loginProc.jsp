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

	String id=request.getParameter("id");
	String pw=request.getParameter("pw");
	
	out.println("<script> alert('"+id+", "+pw+"');</script>");
	
	if(id.equals("mirim")){
		if(pw.equals("1234")){
			out.println(id+"님의 방문을 환영합니다.<br>");
			out.println("<a href='index.jsp'>홈으로</a>");
		} else{
			out.println("아이디 혹은 비밀번호가 틀렸습니다.<br>");
			out.println("<a href='index.jsp'>홈으로</a>"); 		
		}
	} else {
			out.println("아이디 혹은 비밀번호가 틀렸습니다. <a href='join.jsp'>회원가입</a>을 하시겠습니까?<br>");
			out.println("<a href='index.jsp'>홈으로</a>"); 		
	}
%>
</div>
</body>
</html>