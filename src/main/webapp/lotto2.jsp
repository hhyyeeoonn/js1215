<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

	<style>
		.num-box {
			display : table-cell; width : 100px; height : 100px; border : 1px solid gray;
			font-size : 40px; color : gray; text-align : center; vertical-align : middle;
		}
		.red {background-color : red;}
		.orange {background-color : orange;}
		.yellow {background-color : yellow;}
		.green {background-color : green;}
		.blue {background-color : blue;}
		.purple {background-color : purple;}
	</style>

</head>
<body>
	<%
		// 1) 코어 알고리즘
		int[] ball = new int[45];
		for(int i = 0; i < ball.length; i++) {
			ball[i] = i + 1;
		}
		
		for(int i = 0; i < 100000; i++) {
			int temp = ball[0];
			int rNum = (int)(Math.random() * ball.length);
			ball[0] = ball[rNum];
			ball[rNum] = temp;
		}
		
		for(int i : ball) {
			System.out.print(i + " ");
		}
		
		int[] result = new int[6];
		for(int i = 0; i < result.length; i++) {
			result[i] = ball[i];
		}
		
		// 원칙은....모델값 result객체(자바기술) -> 데이터로 변환가능한 표준문자열(XML방식, JSON방식) -> AJax요청 자바스크립트배열(자바스크립트기술) 출력
	%>
	
	<input type = "hidden" id = "result1" value = "<%=result[0]%>">
	<input type = "hidden" id = "result2" value = "<%=result[1]%>">
	<input type = "hidden" id = "result3" value = "<%=result[2]%>">
	<input type = "hidden" id = "result4" value = "<%=result[3]%>">
	<input type = "hidden" id = "result5" value = "<%=result[4]%>">
	<input type = "hidden" id = "result6" value = "<%=result[5]%>"> 
	
	<div>
		<div id = "num1" class = "num-box red">&nbsp;</div>
		<div id = "num2" class = "num-box orange">&nbsp;</div>
		<div id = "num3" class = "num-box yellow">&nbsp;</div>
		<div id = "num4" class = "num-box green">&nbsp;</div>
		<div id = "num5" class = "num-box blue">&nbsp;</div>
		<div id = "num6" class = "num-box purple">&nbsp;</div>
	</div>
	
	<script>
		// setTimeout(함수, 시간ms) : 시간ms 후에 함수를 실행 //html를 미리 읽고 숨겨놨다가 자바스크립트로 다시 읽어내는 편법..편법이니까 웬만하면 쓰지말기, 자바스크립트코드 안에 자바코드 넣는 건 하면 안됨
		setTimeout(function(){
					document.querySelector('#num1').innerHTML = document.querySelector('#result1').value; // 1초후에 num1에 result[0]값을 저장하겠다
				}, 1000);
		setTimeout(function(){
					document.querySelector('#num2').innerHTML = document.querySelector('#result2').value; // 1초후에 num1에 result[0]값을 저장하겠다
				}, 2000);
		setTimeout(function(){
					document.querySelector('#num3').innerHTML = document.querySelector('#result3').value; // 1초후에 num1에 result[0]값을 저장하겠다
				}, 3000);
		setTimeout(function(){
					document.querySelector('#num4').innerHTML = document.querySelector('#result4').value; // 1초후에 num1에 result[0]값을 저장하겠다
				}, 4000);
		setTimeout(function(){
					document.querySelector('#num5').innerHTML = document.querySelector('#result5').value; // 1초후에 num1에 result[0]값을 저장하겠다
				}, 5000);
		setTimeout(function(){
					document.querySelector('#num6').innerHTML = document.querySelector('#result6').value; // 1초후에 num1에 result[0]값을 저장하겠다
				}, 6000);
	</script>

</body>
</html>