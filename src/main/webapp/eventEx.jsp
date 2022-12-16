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
		*/
		document.querySelector('#luffy').addEventListener('click', function() {
			alert('이미지클릭')
		});
	</script>
	
	<h2>2) blur</h2>
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
	
	<h2>3) change</h2>
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
			alert();
		}); 
	</script>
</body>
</html>