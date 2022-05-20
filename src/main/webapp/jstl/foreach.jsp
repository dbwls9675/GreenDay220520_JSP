<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>foreach</title>
</head>
<body style="background-color: #eee">
	<h1>foreach</h1>

	<%
		String[] arr = { "정우성", "정좌성", "정남성", "정중성", "북두신성", "정성" };
		int[] arr2 = {11, 45, 32, 67, 88, 93, 25, 89, 23}; 
		String[] a = {"강대준", "김민수", "김지현"};
	%>

	<c:forEach var="i" begin="3" end="20" step="2" varStatus="no">
		${i } -${no.index }<br />
	</c:forEach>
	--------------------------------------------------------<br/>
	
	<c:forEach var="tt" items="<%=arr%>" varStatus="no">
		${no.index } - ${tt }<br />
	</c:forEach>
	--------------------------------------------------------<br/>
	
	<p>11, 45, 32, 67, 88, 93, 25, 89, 23의 합을 구해라.</p>
	<c:set var="tot" value="0"/>
	<c:forEach var = "tt" items="<%=arr2 %>" varStatus="no">
		<c:set var="tot" value="${tot+tt }"/>
	</c:forEach>
	합계 : ${tot }<br>
	--------------------------------------------------------<br/>
	
	<p>11, 45, 32, 67, 88, 93, 25, 89, 23의 짝수 합을 구하라.</p>
	<c:set var="tot" value="0"/>
	<c:forEach var = "tt" items="<%=arr2 %>" varStatus="no">
		<c:if test="${tt % 2==0 }">
			<c:set var="tot" value="${tot+tt }"/>
			${no.index } - ${tt }<br>
		</c:if>
	</c:forEach>
	합계 : ${tot }<br>
	--------------------------------------------------------<br/>
	
	<h2>forTokens</h2>
	<c:forTokens items="현빈,원빈,,,,투빈,골빈_자바빈.장희빈,젤리빈_커피빈" 
	delims=",._" var="tt" varStatus="no">
		${no.index } - ${tt }<br>
	</c:forTokens>
	--------------------------------------------------------<br/>
	
	<c:forTokens items="11,45,32,67,88,93,25,89,23" 
	delims="," var="tt" varStatus="no">
		<%-- ${no.index } - ${tt }<br> --%>
		${no.index } - ${tt }, ${tt%2}<br>
	</c:forTokens>
	--------------------------------------------------------<br/>
	
	<p>각 반의 최고 점수 받은 학생 이름 출력하기 <br> ex) a_강대준_78,b_김강규_98,a_김민수_72,b_김승화_65,a_김지현_94,b_김진솔_88</p>
	<c:set var="aa" value=""/>
	<c:set var="bb" value=""/>
	<c:set var="aaVV" value="0"/>
	<c:set var="bbVV" value="0"/>
	<c:forTokens items="a_강대준_78,b_김강규_98,a_김민수_72,b_김승화_65,a_김지현_94,b_김진솔_88" 
	delims="," var="tt">
		<c:forTokens items="${tt }" delims="_" var="dd" varStatus="no">
			<c:choose>
				<c:when test="${no.index==0 }">
					<c:set var="ban" value="${dd }"/>
				</c:when>
				
				<c:when test="${no.index==1 }">
					<c:set var="name" value="${dd }"/>
				</c:when>
				
				<c:when test="${no.index==2 }">
					<c:set var="jumsu" value="${dd }"/>
				</c:when>
			</c:choose>
		</c:forTokens>
		<%-- ${ban }, ${name }, ${jumsu }<br> --%>
		<c:choose>
			<c:when test="${ban=='a' && aaVV < jumsu }">
				<c:set var="aa" value="${name }"/>
				<c:set var="aaVV" value="${jumsu }"/>
			</c:when>
			
			<c:when test="${ban=='b' && bbVV < jumsu }">
				<c:set var="bb" value="${name }"/>
				<c:set var="bbVV" value="${jumsu }"/>
			</c:when>
		</c:choose>
	</c:forTokens>
	a반 : ${aa }, ${aaVV }    b반 : ${bb }, ${bbVV }
</body>
</html>