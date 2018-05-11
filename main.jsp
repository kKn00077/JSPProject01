<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>


<link rel="stylesheet" href="style.css" />

<style>
	
	div img{
		width:100%;
	}
	
	a{
		text-decoration:none;
		color:black;
	}
	
	div p{
		font-size:40pt;
		margin:30px;
	}
	
	div div, div div form input{
		margin-bottom:20px;
		padding:5px;
		text-align:center;
		border-radius:10px;
		width:80%;
	}
	
	div div a{
		font-size:20pt;
	}
	
	font{
		margin-left:5px;
	}
	
	div ul{
		list-style:none;
	}
	
	div ul li{
		display:inline;
	}
	
	div ul li img{
		width:30%;
		height:auto;
	}

</style>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script> 
<script src="http://malsup.github.com/jquery.cycle2.js"></script>


</head>
<body>

<div id="marginpage" class="cycle-slideshow" data-cycle-fx="scrollHorz"
    data-cycle-pause-on-hover="true"
    data-cycle-speed="1000">
	<img src="http://www.jawsfood.com/uploads/banner/20180124656228.jpg">
	<img src="http://www.jawsfood.com/uploads/banner/20180126992419.jpg">
	<img src="http://www.jawsfood.com/uploads/banner/20180126874673.jpg">
</div>

<div style="background-color:#ad172b; color:white; float:left;  width:50%; height:500px;">
	<font>JOIN</font>
	<p>
		죠스떡볶이<br>
		<strong>회원가입은<br>
		어떠세요?</strong>
	</p>
	
	<div style=" background-color:black; border:5px solid black; margin-left:10%; margin-top:10%">
		<a href="join.jsp" style="color:white;">회원가입 하러가기 GO GO >></a>
	</div>
	
</div>

<div style="background-color:white; color:#ad172b; float:right; width:50%; height:500px;">
	<font>LOGIN</font>
	<%-- 로그인 되어있는지 안되어있는지 체크 --%>
	<p>
		죠스떡볶이<br>
		<strong>로그인,<br>
		하셨어요!?</strong>
	</p>
	
	<div style="margin-left:10%;">
		<form action="loginProc.jsp" method="post">
			<input type="text" name="id" style=" border:5px solid #ad172b; font-size:20px;" placeholder="ID" required>
			<input type="password" name="pw"style=" border:5px solid #ad172b; font-size:20px;" placeholder="PW" required>
			<input type="submit" width="100%" value="로그인" style="background-color:#ad172b; border:5px solid #ad172b; color:white; border:0; font-size:20pt;">
		</form>
	</div>
	
</div>

<div width=100% style="background-color:#f1ece8; color:#ad172b; padding-bottom:30px; text-align:left;">
	<font>JAWS MENU</font>
	<p>
		오늘 죠스에서<br>
		<strong>뭘 먹을까?</strong>
	</p>
	
	<div style="background-color:#ad172b; width:30%; margin-left:30px">
		<a href="menu.jsp" style="color:white;">죠스떡볶이 전체메뉴 보기 >></a>
	</div>
</div>

<div width=100% style="background-color:#ac162c; padding:50px">

	<ul width="80%" style="display:inline;">
		<li>
			<a href="cheese.jsp">
				<img src="http://www.jawsfood.com/uploads/mbanner/20180129415423.png">
			</a>
		</li>
		<li>
			<a href="setmenu.jsp">
				<img src="http://www.jawsfood.com/uploads/mbanner/20180124686395.png">
			</a>
		</li>
		<li>
			<a href="sidemenu.jsp">
				<img src="http://www.jawsfood.com/uploads/mbanner/20180124942345.png" >
			</a>
		</li>
	</ul>

</div>

</body>
</html>