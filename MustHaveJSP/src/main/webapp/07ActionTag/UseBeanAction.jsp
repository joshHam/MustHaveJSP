<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>액션 태그 - UseBean</title>
</head>
<body>
	<h3>액션 태그로 폼값 한 번에 받기</h3>
	<jsp:useBean id="person" class="common.Person"/>	
	<!-- Person클래스로 자바빈즈 생성. scope 속성을 설정하지 않았으므로 가장 좁은page영역에 저장. -->
	<jsp:setProperty property="*" name="person"/>	
	<!-- 폼값을 자바빈즈에 설정 -->
	<ul>
		<li>이름 : <jsp:getProperty property="name" name="person"/></li>
		<li>나이 : <jsp:getProperty property="age" name="person"/></li>
	</ul>
</body>
</html>