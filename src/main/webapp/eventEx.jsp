<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>eventEx</title>
</head>
<body>
	<h1>웹페이지에서 자주 발생하는 이벤트</h1>
	
	<h2>1) click</h2>
	<div>
		주로 버튼태그에.... 다른 태그들도 가능
	</div>
	<div><img src = "./luffy.png" id = "luffy"></div>
	<script>
		// window.document.getElementById('luffy')
		/*
			자바스크립트 함수 표현 방법(this 바인딩 차이)
			1) 함수리터럴 사용
			function() {}
			2) 화살표 함수
			() => {}
			
			자바스크립트는 변수선언해도 변수가 만들어진다
			let x = 10; 안해도 x = 10; 하면 만들어짐
			근데 var로 됨
			**eval
			** https://jusungpark.tistory.com/25
		*/
		document.querySelector('#luffy').addEventListener('click', function() {
			alert('이미지클릭')
		});
	</script>
	
	<h2>2) 마우스 이벤트 blur</h2>
	<div>
		<input type = "text" id = "id"><span id = "idMsg" style = "color : red;"></span>
	</div>
	<script>
		document.querySelector('#id').addEventListener('blur', function() {
			if(id.value.length < 1) {
				// alert('아이디를 입력하세요');
				document.querySelector('#idMsg').innerHTML = 'ID를 입력하세요';
			} else {
				alert('입력한 아이디는 ' + id.value + '입니다'); // == '입력한 아이디는 ${id}입니다'
				document.querySelector('#idMsg').innerHTML = '';
			} 
		}); 
	</script>
	
	<h2>3) 폼태그 이벤트 change</h2>
	<div>
		select 태그
	</div>
	<div>
		지역 :
		<select id = "local">
			<option value = "" selected = "selected">:::지역선택:::</option> <!-- 제일 위에 있는 값이 기본값이 되는데 selected속성이 붙어있다면 그 속성이 있는 태그가 기본값이 된다 -->
			<option value = "">서울</option>
			<option value = "">인천</option>
			<option value = "">성남</option>
		</select>
	</div>
	<script>
		let local = document.querySelector('#local');
		document.querySelector('#local').addEventListener('change', function() {
			if(local.value == ''){
				alert('지역을 선택하세요');
			} else {
				alert(local.value);
			}
		}); 
	</script>
	
	<div>
		input type = checkbox  <!-- 폼태그 이벤트 -->
	</div>
	<div>
		관심사(3개까지 선택 가능)<br>
		<input type = "checkbox" name = "interest" class = "interest" value = "스포츠">스포츠
		<input type = "checkbox" name = "interest" class = "interest" value = "경제">경제
		<input type = "checkbox" name = "interest" class = "interest" value = "사회">사회
		<input type = "checkbox" name = "interest" class = "interest" value = "역사">역사
		<input type = "checkbox" name = "interest" class = "interest" value = "정치">정치
	</div>
	<script>
		let interest = document.querySelectorAll('.interest') // 배열 checkbox 전부 받아옴
		// foreach 반복문
		interest.forEach(function(item) {
			item.addEventListener('change', function() {
				let ckIterest = document.querySelectorAll('.interest : checked')
				alert(ckInterest.length);
				if(ckInterest.length > 3) {
					alert('3개까지만 선택 가능');
					item.checked = false; // 4번째 checked를 해제
				}
			})
		});
	</script>
	
	<h2>4) 키보드 이벤트 keyup</h2>
	<div>
		글자수 : <span id = "count"></span> /100
		<br>
		<textarea id = "memo" rows = "5" cols = " 50"></textarea>
	</div>
	<script>
		const MAX_COUNT = 100;// 상수선언 : memo안의 최대글자수 const상수 
		document.querySelector('#memo').addEventListener('keyup', function() {
			console.log(memo.value.length);
			let len = memo.value.length;
			console.log(len);
			if(len > MAX_COUNT) { // (MAX_COUNT - len) < 1
				alert(MAX_COUNT + '자 까지만 입력할 수 있습니다');
				memo.value = memo.value.substring(0, MAX_COUNT);
			} else {
				document.querySelector('#count').innerHTML = len;
			}
		})
	</script>
	
	
</body>
</html>