<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>02_exam</title>
</head>
<body>
<h1>02_exam</h1>
<!-- jakarta-taglibs-standard-1.1.2.jar파일 다운로드 해서 
lib->jstl.jar, standard.jar파일을 WEB-INF->lib에 넣어주면 el태그를 쓸 수 있다.  -->
<c:set var="pid" value="${param.pid }"/>
<c:set var="kor" value="${param.kor }"/>
<c:set var="eng" value="${param.eng }"/>
<c:set var="mat" value="${param.mat }"/>
<c:set var="sum" value="${kor+mat+eng }"/>
<c:set var="avg" value="${sum/3 }"/>

<c:choose>
   <c:when test="${avg>=90 }">
      <c:set var = "grade" value="수"/>
   </c:when>
   <c:when test="${avg>=80 }">
      <c:set var = "grade" value="우"/>
   </c:when>
   <c:when test="${avg>=70 }">
      <c:set var = "grade" value="미"/>
   </c:when>
   <c:when test="${avg>=60 }">
      <c:set var = "grade" value="양"/>
   </c:when>
   <c:otherwise>
      <c:set var = "grade" value="가"/>
   </c:otherwise>
</c:choose>

<table border="1">
   <tr>
      <th>아이디</th>
      <td> ${pid }</td>
   </tr>
   <tr>
      <th>국어</th>
      <td> ${kor }</td>
   </tr>
   <tr>
      <th>영어</th>
      <td>${eng }</td>
   </tr>
   <tr>
      <th>수학</th>
      <td>${mat }</td>
   </tr>
   <tr>
      <th>총점</th>
      <td>${ sum }</td>
   </tr>
   <tr>
      <th>평균</th>
      <td>${ avg }</td>
   </tr>
   <tr>
      <th>등급</th>
      <td>${grade }</td>
   </tr>
</table>

</body>
</html>