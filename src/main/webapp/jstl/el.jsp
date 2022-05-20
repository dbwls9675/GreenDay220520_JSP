<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>el</title>
</head>
<body>
	<h1>el</h1>
	pid : <%=request.getParameter("pid") %>, ${param.pid}<br>
	age : <%=request.getParameter("age")+10 %>, ${param.age+10}<br>
	marriage : <%=request.getParameter("marriage")%>, ${param.marriage}<br>
	tel : <%=request.getParameter("tel") %>, ${param.tel}<br>
	-----------------------------------------------------<br>
	<%
		pageContext.setAttribute("aa", 100);
		request.setAttribute("bb", 200);
		session.setAttribute("cc", 300);
		application.setAttribute("dd", 400);
		
		//pageContext.setAttribute("qqq", 1000);
		request.setAttribute("qqq", 2000);
		session.setAttribute("qqq", 3000);
		application.setAttribute("qqq", 4000);
	%>
	aa : <%=pageContext.getAttribute("aa") %>, ${aa+1 }<br>
	bb : <%=pageContext.getAttribute("bb") %>, ${bb+1 }<br>
	cc : <%=pageContext.getAttribute("cc") %>, ${cc+1 }<br>
	dd : <%=pageContext.getAttribute("dd") %>, ${dd+1 }<br>
	-----------------------------------------------------<br>
	
	<!-- 변수명이 같으면(qqq) 가장 작은수로 선정된다. 하지만 qqq옆에 pageScope, requestscope를 쓰면 값이 제대로 나온다 -->
	pageContext : <%=pageContext.getAttribute("qqq") %>, ${pageScope.qqq }<br>
	request : <%=request.getAttribute("qqq") %>, ${requestScope.qqq }<br>
	session : <%=session.getAttribute("qqq") %>, ${sessionScope.qqq }<br>
	application : <%=application.getAttribute("qqq") %>, ${applicationScope.qqq }<br>
	-----------------------------------------------------<br>
	
	<!-- pageContext를 주석처리 해주면 pageContext이 삭제됨? -->
	${qqq }<br>
	<% request.removeAttribute("qqq"); %>
	${qqq }<br>
	<% session.removeAttribute("qqq"); %>
	${qqq }<br>
	<% application.removeAttribute("qqq"); %>
	-----------------------------------------------------<br>
	
	\${15+7 } : ${15+7 }<br>
	\${15-7 } : ${15-7 }<br>
	\${15*7 } : ${15*7 }<br>
	\${15/7 } : ${15/7 }<br>
	\${15%7 } : ${15%7 }<br>
	<br>
	\${15>7 } : ${15>7 }<br>
	\${15>=7 } : ${15>=7 }<br>
	\${15<=7 } : ${15<=7 }<br>
	\${15<7 } : ${15<7 }<br>
	\${15==7 } : ${15==7 }<br>
	\${15!=7 } : ${15!=7 }<br>
	<br>
	\${"장동건">"장서건" } : ${"장동건">"장서건"}<br>
	\${"장동건">="장서건" } : ${"장동건">="장서건"}<br>
	\${"장동건"<="장서건" } : ${"장동건"<="장서건"}<br>
	\${"장동건"<"장서건" } : ${"장동건"<"장서건"}<br>
	\${"장동건"=="장서건" } : ${"장동건"=="장서건"}<br>
	\${"장동건"!="장서건" } : ${"장동건"!="장서건"}<br>
	<br>
	\${true&&true } : ${true&&true }<br>
	\${true&&false } : ${true&&false }<br>
	\${false&&false } : ${false&&false }<br>
	
	\${true||true } : ${true||true }<br>
	\${true||false } : ${true||false }<br>
	\${false||false } : ${false||false }<br>
	
	<!-- 이건 에러가 난다  -->
	<%-- 
	\${true^true }: ${true^true }<br>
	\${true^false }: ${true^false }<br>
	\${false^false }: ${false^false }<br> 
	--%>
	<br>
	\${true ? "참이지롱":"거짓부렁" } : ${true ? "참이지롱":"거짓부렁" }<br>
	
</body>
</html>