<%@ page import="java.util.*" %>
<%@ page import="common.Person"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>표현 언어(EL) - 컬렉션</title>
</head>
<body>

<h2>List 컬렉션</h2>
<%
List<Object>aList = new ArrayList<Object>();
aList.add("청해진");
aList.add(new Person("장보고", 28));
pageContext.setAttribute("Ocean", aList);
%>
<ul>
	<li>0번째 요소 : ${ Ocean[0] }</li>
	<li>1번째 요소 : ${ Ocean[1].name },${ Ocean[1].age }</li>
	<li>2번째 요소 : ${ Ocean[2] }<!-- 출력되지 않음 --></li>
	<!-- EL은 null을 출력해도 예외를 발생시키지 않으므로 위와같이 아무것도 출력되지 않음 -->
</ul>

<h2>Map 컬렉션</h2>
<%
Map<String, String> map = new HashMap<String, String>();
map.put("한글", "훈민정음");
map.put("Eng", "English");
pageContext.setAttribute("King", map);
%>
<ul>
	<li>영문 Key : ${ King["Eng"]}, ${ King['Eng']},${ King.Eng }</li>
	<li>한글 Key : ${ King["한글"]}, ${ King['한글']}, \${ King.한글 }<!-- 에러 --></li>
	<!-- EL 코드를 주석 처리하려면 앞에 \(역슬레시)를 붙여준다. -->
	<!-- Map의 키가 영문이면 세가지 가능, 한글이면.(점)은 사용할 수 없다 -->
</ul>
</body>
</html>





















