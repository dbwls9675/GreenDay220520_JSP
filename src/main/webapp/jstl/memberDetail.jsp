<%@page import="jdbc_p.MemberDTO"%>
<%@page import="jdbc_p.DBCP_DAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%
	String pid = request.getParameter("pid");
	DBCP_DAO dao = new DBCP_DAO();
	MemberDTO dto = dao.detailName(pid);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>memberDetail</title>
</head>
<body>
	<h1>memberDetail</h1>
	
	<table border="" style="text-align: center">
		<tr>
			<td>번호</td>
			<td>아이디</td>
			<td>이름</td>
			<td>나이</td>
			<td>결혼</td>
			<td>가입일</td>
		</tr>
		<tr>
			<td><%= dto.getNo() %></td>
			<td><%= dto.getPid() %></td>
			<td><%= dto.getPname() %></td>
			<td><%= dto.getAge() %></td>
			<td><%= dto.getMarriageInt() %></td>
			<td><%= dto.getReg_date() %></td>
		</tr>
	</table>
</body>
</html>