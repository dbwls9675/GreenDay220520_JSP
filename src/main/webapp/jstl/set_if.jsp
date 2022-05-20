<%@page import="jdbc_p.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="cc" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>set_if</title>
</head>
<body>
	<h1>set_if</h1>
	<cc:set var="nn1" value="차은우"/>
	<cc:set var="nn2" value="차은수" scope = "request"/>
	<cc:set var="nn3" value="차은미" scope = "session"/>
	<cc:set var="nn4" value="차은양" scope = "application"/>
	<cc:set var="nn5" value="차은기"/>
	${nn1 }<br>
	${requsetScope.nn1 }<br>
	${sessionScope.nn1 }<br>
	${applicationScope.nn1 }<br>
	----------------------------------------<br>
	<cc:remove var="nn1" value="page"/>
	${nn1 }<br>
	<cc:remove var="nn1" value="request"/>
	${nn1 }<br>
	<cc:remove var="nn1" value="session"/>
	${nn1 }<br>
	<cc:remove var="nn1" value="application"/>
	${nn1 }<br>
	----------------------------------------<br>
	<cc:remove var="mm" value="<%= new MemberDTO(\"aaa\",\"홍길동\") %>"/>
	<cc:set property="pw" target="${mm }" value="1q2w"/> 
	${mm }<br>
	${mm.pid },${mm.pname },${mm.pw },${mm.age }<br>
	
</body>
</html>