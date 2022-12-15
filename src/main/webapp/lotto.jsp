<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 스타일코드는 태그보다 위에 스크립트코드는 태그보다 아래에 나온다-->

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
	<div>
		<div id = "num1" class = "num-box red">&nbsp;</div>
		<div id = "num2" class = "num-box orange">&nbsp;</div>
		<div id = "num3" class = "num-box yellow">&nbsp;</div>
		<div id = "num4" class = "num-box green">&nbsp;</div>
		<div id = "num5" class = "num-box blue">&nbsp;</div>
		<div id = "num6" class = "num-box purple">&nbsp;</div>
	</div>
	<script>
		// 배열 생성 방법
		//let a = []; // 배열리터럴을 이용하는 방법
		// a.push('루피'); / ArrayList.add와 같음
		//console.log(typeof(a));
		//let b = new Array(); // 배열 생성자 함수를 사용하는 방법
		//console.log(typeof(b));
		
		
		// 1) 코어 알고리즘 -> 자바로 구현하는 게 낫다
		let ball = new Array(45); // 로또 번호45까지
		// 초기화
		for(let i = 0; i < ball.length; i++) {
			ball[i] = i + 1;
		}
		//console.log('초기화 : ', ball); // 위에서 부터 아래로 실행되는 코드의 규칙을 지키지 않음 나중에 실행됨 
		
		// 섞기
		for(let i = 0; i < 100000; i++) {
			let temp = ball[0];
			let rNum = Math.floor(Math.random() * ball.length); // 0 ~ 44 /Math.random() : 0에서 1사이의 실수가 나온다 Math.ceil올림/ Math.floor 버림
			ball[0] = ball[rNum];
			ball[rNum] = temp;
		}
		console.log('shuffle : ', ball);
		
		let result = ball.slice(0, 6); // 값 1자리부터 값 2자리 앞까지 반환 0, 1, 2, 3, 4, 5 인덱스 반환한 배열 /java의 substring과 같음
		console.log('result : ', result);
	
		//for(let i = 0; i < result.length; i++) {
		//	document.querySelector('#num' + (i+1)).innerHTML = result[i];
		//}
		
		// 2) 출력 알고리즘
		// setTimeout(함수, 시간ms) : 시간ms 후에 함수를 실행
		setTimeout(function(){
					document.querySelector('#num1').innerHTML = result[0]; // 1초후에 num1에 result[0]값을 저장하겠다
				}, 1000);
		setTimeout(function(){
					document.querySelector('#num2').innerHTML = result[1]; // 1초후에 num1에 result[0]값을 저장하겠다
				}, 2000);
		setTimeout(function(){
					document.querySelector('#num3').innerHTML = result[2]; // 1초후에 num1에 result[0]값을 저장하겠다
				}, 3000);
		setTimeout(function(){
					document.querySelector('#num4').innerHTML = result[3]; // 1초후에 num1에 result[0]값을 저장하겠다
				}, 4000);
		setTimeout(function(){
					document.querySelector('#num5').innerHTML = result[4]; // 1초후에 num1에 result[0]값을 저장하겠다
				}, 5000);
		setTimeout(function(){
					document.querySelector('#num6').innerHTML = result[5]; // 1초후에 num1에 result[0]값을 저장하겠다
				}, 6000);
	</script>
</body>
</html>