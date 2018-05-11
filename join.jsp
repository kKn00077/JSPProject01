<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입</title>
<link rel="stylesheet" href="style.css" />
<script src="scroll.js"></script>
<script>

function check() {

	var pw=document.getElementById("pw").value;
	var pwck=document.getElementById("pw_again").value;
	
	try{
  		if(pw!=pwck) {
    		alert("비밀번호 확인이 일치하지 않습니다.");
    		pwck.focus();
    		return false;
 		}
  	}catch(error){
  		return false;
  	}

}

</script>

</head>
<body>
<div id="marginpage">
<form action="joinProc.jsp" id="form1" method="post" onsubmit="return check()">
이름 : <input type="text" name="name" placeholder="이름" required ><br>
ID : <input type="text" name="id" placeholder="ID" required ><br>
PW : <input type="password" name="pw" id="pw" placeholder="PW" required ><br>
PW 확인 : <input type="password" name="pw_again" id="pw_again" placeholder="PW확인" required><br>

<input type="submit" value="가입하기">
</form>
</div>
</body>
</html>