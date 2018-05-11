<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="style.css" />
<style>
div div{
	width:90%;
	background-color:white;
	padding:4%;
	margin-bottom:3%;
}

.cw{
	color:white;
}

.tbbg tr th{
	background-color:#f4f4f4;
	text-align:left;
	padding:10px;
}

.tbbg tr{
	border-bottom:0.5px solid lightgray;
	padding:5%;
}

.tbbg{
	border-top: 2px solid black;
	border-bottom: 2px solid black;
}

div div table, div div table tr, div div table tr th, div div table tr td{
	border-collapse:collapse;
}

div div table{
	margin-top:2%;
}

div div table tr th, div div table tr td{
	padding:10px
}

div label{
	margin:5%;
}
</style>

<script>
	function cng(values){
		var text=document.getElementById("m");
		
		if(values!=""){
			text.readOnly=true;
			text.value=values;
		}else{
			text.readOnly=false;
			text.value="";
			text.focus();
		}
	}
</script>

</head>
<body>
<form action="sounds.jsp" method="post">
<div id="marginpage" style="text-align:center; padding:30px;">
	<h1>고객의 소리</h1>
</div>

<div style="padding:5%; background-color:#f2efea;">
	<div>
		고객의 소중한 의견 감사합니다.<br>
		아래 정보를 정확히 기입하여 주시면, 빠른 시간 내에 결과를 회신하여 드리도록 하겠습니다.
	</div>
	<div>
		<h2>개인정보 수집/이용 동의</h2><br>
		​주식회사 죠스푸드는 고객 불만 해소 및 문의 또는 건의에 대한 답변 전달을 위해 아래와 같이 최소한의 개인정보를 수집·이용합니다.
		<table width=100%>
			<tr style="background-color:gray">
				<th width=35% class="cw">
					수집 목적
				</th>
				<th width=30% class="cw">
					수집 항목
				</th>
				<th width=35% class="cw">
					보유·이용 기간
				</th>
			</tr>
			<tr style="border-bottom:1px solid lightgray; text-align:center;">
				<td>
					고객 불만해소, 문의·건의 답변
				</td>
				<td>
					이름, 전화번호, E-MAIL 주소
				</td>
				<td>
					3년간
				</td>
			</tr>
		</table>
		<br>
		<div width=100% style="color:gray; font-size:8pt; text-align:center; margin:10; padding:0">㈜죠스푸드 고객의소리 서비스 이용에 필요한 최소한의 개인정보 수집∙이용에 동의하지 않을 권리가 있으며, 동의 거부 시 거부한 내용에 대해 서비스가 제한될 수 있습니다.</div>
		<div style="text-align:center; margin:0; padding:0">
			<label for="ok"><input type="radio" name="agree" value="1" id="ok">개인정보 수집·이용에 동의합니다.</label>
			<label for="no"><input type="radio" name="agree" value="0" id="no">개인정보 수집·이용에 동의하지 않습니다.</label>
		</div>
	</div>
	
	<div>
		<h2>고객 정보 입력</h2>
		<table class="tbbg" width=100%>
			<tr>
				<th>유형</th>
				<td>
					<select name="type" onchange="ck(this.value);">
						<option value="">선택</option>
						<option value="제품">제품</option>
						<option value="위생">위생</option>
						<option value="서비스">서비스</option>
						<option value="칭찬">칭찬</option>
						<option value="문의">문의</option>
					</select>
				</td>
			</tr>
			
			<tr>
				<th>성명</th>
				<td><input type="text" name="name" placeholder="입력"></td>
			</tr>
			
			<tr>
				<th>답변수단</th>
				<td>
					<label for="mail"><input type="radio" name="calltype" value="mail" id="mail">메일답변</label>
					<label for="call"><input type="radio" name="calltype" value="call" id="call">전화답변</label>
				</td>
			</tr>
			
			<tr>
				<th>연락처</th>
				<td>
					<select name="callfloat">
						<option value="010">010</option>
						<option value="011">011</option>
						<option value="016">016</option>
						<option value="017">017</option>
						<option value="018">018</option>
						<option value="019">019</option>
					</select>
					-
					<input type="number" min="0"max="9999" name="callmiddle">
					-
					<input type="number" min="0" max="9999" name="calllast">
				</td>
			</tr>
			
			<tr>
				<th>이메일</th>
				<td>
					<input type="text" name="mailid" placeholder="입력" required> @
					
					<input type="text" name="_mail" id="m">
				
					<select name="mail" onchange="cng(this.value);">
						<option value="">직접입력</option>
                        <option value="naver.com">naver.com</option>
                        <option value="nate.com">nate.com</option>
                        <option value="daum.net">daum.net</option>
                        <option value="google.co.kr">google.co.kr</option>
                        <option value="gmail.com">gmail.com</option>
                        <option value="dreamwiz.com">dreamwiz.com</option>
                        <option value="empal.com">empal.com</option>
                        <option value="freechal.com">freechal.com</option>
                        <option value="hotmail.com">hotmail.com</option>
                        <option value="lycos.co.kr">lycos.co.kr</option>
                        <option value="yahoo.com">yahoo.com</option>
                        <option value="hanmail.net">hanmail.net</option>
                        <option value="netian.net">netian.net</option>
                        <option value="korea.com">korea.com</option>
					</select>
					
				</td>
			</tr>
			
			<tr>
				<th>발생일시</th>
				<td>
					<input type="date" name="date" required>
					<select name="hour">
						<%
							String hour;
							for(int i=0;i<24;i++){
								hour=i+"";
								if(i<10) hour="0"+hour; 
						%>
								
								<option value=<%= hour %>><%=hour %></option>
								
						<%	}
						%>
					</select>
					시
					<select name="second">
						<%
							String second;
							for(int i=0;i<60;i++){
								second=i+"";
								if(i<10) second="0"+second; 
						%>
								
								<option value=<%= second %>><%=second %></option>
								
						<%	}
						%>
					</select>
					분
				</td>
			</tr>
			
			<tr>
				<th>제목</th>
				<td>
					<input type="text" size=75 name="title" placeholder="입력">
				</td>
			</tr>
			
			<tr style="border:0;">
				<th>내용</th>
				<td>
					<textarea name="context" cols=80 rows=10></textarea>
				</td>
			</tr>

		</table>
		
		<input type="submit" value="등록">
		
	</div>
	
</div>
</form>
</body>
</html>