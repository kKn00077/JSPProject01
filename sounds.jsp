<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charsetUTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="style.css" />
</head>
<body>
<div id="marginpage">
<%
	request.setCharacterEncoding("utf-8");

	int agree=Integer.parseInt(request.getParameter("agree")); // 0 , 1
	
	if(agree!=1){ %>
		<jsp:forward page="customerSound.jsp"/>
<%	} else{
	
		String type=request.getParameter("type"); // "", "제품", "위생" . . . . .
		String name=request.getParameter("name");
		
		String calltype=request.getParameter("calltype"); // mail or call
		
		if(calltype.equals("call")){
			calltype="전화";
		} else{
			calltype="메일";
		}
		
		String callfloat=request.getParameter("callfloat"); // 010 011 012...
		String callmiddle=request.getParameter("callmiddle");
		String calllast=request.getParameter("calllast");
		String mailid=request.getParameter("mailid");
		String _mail=request.getParameter("_mail");/* 
		String mail=request.getParameter("mail"); */
		String date=request.getParameter("date");
		String hour=request.getParameter("hour");
		String second=request.getParameter("second");
		String title=request.getParameter("title");
		String context=request.getParameter("context");
%>
		유형 : <%= type %> <br>
		성명 : <%= name %> <br>
		답변수단 : <%= calltype %> <br>
		연락처 : <%= callfloat+"-"+callmiddle+"-"+calllast %> <br>
		이메일 : <%= mailid+"@"+_mail %> <br>
		발생일시 : <%= date+" "+hour+"시 "+second+"분" %> <br>
		제목 : <%= title %> <br>
		내용 : <%= context %> <br>
		
<%
}
%>
</div>
</body>
</html>