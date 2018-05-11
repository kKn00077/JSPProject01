<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style>

*{
	margin:0px;
	padding:0px;
}

#info{
	float:left;
	margin-left:50px;
}
#info2{
	float:right;
	margin-right:50px;
}
header{
	background-color:#ad172b;
	position:fixed;
	width:100%;
	height:100px;
}

header img{
	float:left;
	clear:both;
}

header nav ul li{
	float:left;
	list-style:none;
	margin-left:10px;
	color:white;
	letter-spacing:2px;
}

header nav ul ul{
	display:none;
	position:absolute;
}

header nav ul li:hover ul{
	display:block;
}

header nav ul ul li{
	float:none;
	letter-spacing:1px;
}

header nav ul ul li a{
	color:black;
	text-decoration:none;
}

footer{
	width:100%;
	height:200px;
	background-color:#2b2b2b;
}

html,body {height:100%;}

</style>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script type="text/javascript">
	/* function frameResize(i){
		var iframeHeight=document.getElementById(i).contentWindow.document.body.scrollHeight;
		document.getElementById(i).height=iframeHeight;
	} */
	/* function autoResize(i)
	{
	    var iframeHeight=
	    (i).contentWindow.document.body.scrollHeight;
	    (i).height=iframeHeight;
	} */
	/* $('iframe').load(function(){

		var h = this.contentWindow.document.body.offsetHeight;

		$(this).height(h);

	}); */
	/*  function resizeFrame(iframeObj){
		  var innerBody = iframeObj.contentWindow.document.body;
		  oldEvent = innerBody.onclick;
		  innerBody.onclick = function(){ resizeFrame(iframeObj, 1);oldEvent; };
		  var innerHeight = innerBody.scrollHeight + (innerBody.offsetHeight - innerBody.clientHeight);
		  iframeObj.style.height = innerHeight;
		  var innerWidth = innerBody.scrollWidth + (innerBody.offsetWidth - innerBody.clientWidth);
		  iframeObj.style.width = innerWidth;     
		  if( !arguments[1] )        /* 특정 이벤트로 인한 호출시 스크롤을 그냥 둔다.
		    this.scrollTo(1,1);
	} */
	
	function calcHeight(){
		 //find the height of the internal page

		 var the_height=
		 document.getElementById('main').contentWindow.
		 document.body.scrollHeight;

		 //change the height of the iframe
		 document.getElementById('main').height=
		 the_height;

		 //document.getElementById('the_iframe').scrolling = "no";
		 document.getElementById('main').style.overflow = "hidden";
		 
		 this.scrollTo(1,1);
		 
		}
</script>

</head>
<body>
<% request.setCharacterEncoding("utf-8"); %>
<header>
<br>
<a href="index.jsp"><img src="http://www.jawsfood.co.kr/images/common/logo_share.jpg" width=100 height=50></a>
<nav>
	<ul>
	<br>
		<li>
			BRAND
			<ul>
				<li><a href="hiContents.jsp" target="main">대표인사말</a></li>
				<li><a href="jawsStory.jsp" target="main">죠스이야기</a></li>
			</ul>
		</li>
		<li>
			MENU
			<ul>
				<li><a href="menu.jsp" target="main">메인메뉴</a></li>
				<li><a href="setmenu.jsp" target="main">세트메뉴</a></li>
				<li><a href="sidemenu.jsp" target="main">사이드메뉴</a></li>
			</ul>
		</li>
		<li>
			COMMUNITY
			<ul>
				<li><a href="customerSound.jsp" target="main">고객의 소리</a></li>
			</ul>
		</li>
	</ul>
</nav>
</header>

<section>
	<iframe src="main.jsp" name="main" id="main" style="margin:0; overflow-x:hidden; overflow:auto; width:100%; min-height:2300px;" onload="calcHeight();" frameborder=0 scrolling="no"/>
</section>

<footer>

<br>

<div id="info">

<img src="http://www.jawsfood.co.kr/images/common/footer_logo.png"> <br><br>

<font color="gray">
대표이사 나상균 / 사업자등록번호 209-81-54096
<address>서울특별시 강남구 영동대로 82길7 (대치동, 한석타워)</address>
Copyright (C) JAWFOOD ALL RIGHTS RESERVED.<br>
<strong>3201 김규나 만듦</strong>
</font>
</div>

<div id="info2">
<img src="http://download.seaicons.com/icons/paomedia/small-n-flat/1024/phone-icon.png" width=30 height=30>
<font color="#ad172b"><strong>02 - 927 - 1525</strong></font><br>
<font color="gray">오전 9시~ 오후 6시 / 주말 및 공휴일 휴무</font>
</div>

</footer>

</body>
</html>